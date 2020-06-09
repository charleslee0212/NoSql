CREATE OR REPLACE FUNCTION add_treatment_plans()
RETURNS boolean AS $$
DECLARE
  done boolean := true;
  random int;
  patient record;
  treatment record;
BEGIN
  FOR patient IN
  SELECT DISTINCT patient_id AS id
  FROM diagnoses
  WHERE pat_doc_id IS NULL
  LOOP
    random := floor(random() * 5 + 1);

    FOR treatment IN
    SELECT *
    FROM treatments
    ORDER BY RANDOM()
    LIMIT random
    LOOP
      INSERT INTO treatment_plans
      VALUES(treatment.id, patient.id);
    END LOOP;
  END LOOP;

  FOR patient IN
  SELECT DISTINCT pat_doc_id AS id
  FROM diagnoses
  WHERE pat_doc_id IS NOT NULL
  LOOP
    random := floor(random() * 5 + 1);

    FOR treatment IN
    SELECT *
    FROM treatments
    ORDER BY RANDOM()
    LIMIT random
    LOOP
      INSERT INTO treatment_plans(treatment_id, pat_doc_id)
      VALUES(treatment.id, patient.id);
    END LOOP;
  END LOOP;

  RETURN done;
END;
$$ LANGUAGE plpgsql;
