CREATE OR REPLACE FUNCTION add_appointments()
RETURNS boolean AS $$
DECLARE
  done boolean := true;
  prob_doc int;
  random int;
  num_docs int;
  patient record;
  doctor record;
BEGIN
  SELECT count(*) INTO num_docs
  FROM doctors;
  prob_doc = floor(num_docs * .35)::int;

  FOR patient IN
  SELECT *
  FROM patients
  LOOP
    random := floor(random() * 5 + 1);

    FOR doctor IN
    SELECT *
    FROM doctors
    ORDER BY RANDOM()
    LIMIT random
    LOOP
      INSERT INTO appointments
      VALUES(doctor.id, patient.id);
    END LOOP;
  END LOOP;

  FOR patient IN
  SELECT *
  FROM doctors
  LIMIT prob_doc
  LOOP
    random := floor(random() * 5 + 1);

    FOR doctor IN
    SELECT *
    FROM (SELECT *
          FROM doctors
          EXCEPT (SELECT *
                  FROM doctors
                  LIMIT prob_doc)) AS ava_docs
    ORDER BY RANDOM()
    LIMIT random
    LOOP
      INSERT INTO appointments(doctor_id, pat_doc_id)
      VALUES(doctor.id, patient.id);
    END LOOP;
  END LOOP;

  RETURN done;
END;
$$ LANGUAGE plpgsql;
