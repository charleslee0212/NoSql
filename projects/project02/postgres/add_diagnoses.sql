CREATE OR REPLACE FUNCTION add_diagnoses()
RETURNS boolean AS $$
DECLARE
  done boolean := true;
  random int;
  patient record;
  illness record;
BEGIN
  FOR patient IN
  SELECT *
  FROM patients
  LOOP
    random := floor(random() * 4);

    IF random <> 0 THEN
      FOR illness IN
      SELECT *
      FROM illnesses
      ORDER BY RANDOM()
      LIMIT random
      LOOP
        INSERT INTO diagnoses
        VALUES (illness.id, patient.id);
      END LOOP;
    END IF;
  END LOOP;

  FOR patient IN
  SELECT *
  FROM (SELECT DISTINCT pat_doc_id AS id
        FROM appointments
        WHERE pat_doc_id IS NOT NULL) AS doc_pat
  LOOP
    random := floor(random() * 4);

    IF random <> 0 THEN
      FOR illness IN
      SELECT *
      FROM illnesses
      ORDER BY RANDOM()
      LIMIT random
      LOOP
        INSERT INTO diagnoses(illness_id, pat_doc_id)
        VALUES (illness.id, patient.id);
      END LOOP;
    END IF;
  END LOOP;

  RETURN done;
END;
$$ LANGUAGE plpgsql;
