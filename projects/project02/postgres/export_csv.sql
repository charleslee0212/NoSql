COPY (SELECT * FROM doctors) TO '/app/postgres/projects/project02/neo4j/csv/doctors.csv' WITH CSV header;
COPY (SELECT * FROM patients) TO '/app/postgres/projects/project02/neo4j/csv/patients.csv' WITH CSV header;
COPY (SELECT * FROM illnesses) TO '/app/postgres/projects/project02/neo4j/csv/illnesses.csv' WITH CSV header;
COPY (SELECT * FROM treatments) TO '/app/postgres/projects/project02/neo4j/csv/treatments.csv' WITH CSV header;
COPY (SELECT * FROM treatments) TO '/app/postgres/projects/project02/neo4j/csv/treatments.csv' WITH CSV header;

COPY (SELECT  p.first_name AS p_first_name, p.last_name AS p_last_name,  d.first_name AS d_first_name, d.last_name AS d_last_name
      FROM appointments a, patients p, doctors d
      WHERE a.patient_id = p.id AND a.doctor_id = d.id AND pat_doc_id IS NULL)
TO '/app/postgres/projects/project02/neo4j/csv/appointments_patients.csv' WITH CSV header;

COPY (SELECT  dp.first_name AS dp_first_name, dp.last_name AS dp_last_name,  d.first_name AS d_first_name, d.last_name AS d_last_name
      FROM appointments a, doctors dp, doctors d
      WHERE a.pat_doc_id = dp.id AND a.doctor_id = d.id AND pat_doc_id IS NOT NULL)
TO '/app/postgres/projects/project02/neo4j/csv/appointments_doc_patients.csv' WITH CSV header;

COPY (SELECT first_name, last_name, name AS illness
      FROM diagnoses d, patients p, illnesses i
      WHERE d.patient_id = p.id AND d.illness_id = i.id AND pat_doc_id IS NULL)
TO '/app/postgres/projects/project02/neo4j/csv/diagnoses_patients.csv' WITH CSV header;

COPY (SELECT first_name, last_name, name AS illness
      FROM diagnoses d, doctors dp, illnesses i
      WHERE d.pat_doc_id = dp.id AND d.illness_id = i.id AND pat_doc_id IS NOT NULL)
TO '/app/postgres/projects/project02/neo4j/csv/diagnoses_doc_patients.csv' WITH CSV header;

COPY (SELECT first_name, last_name, name AS treatment
      FROM treatment_plans tp, patients p, treatments t
      WHERE tp.patient_id = p.id AND tp.treatment_id = t.id AND pat_doc_id IS NULL)
TO '/app/postgres/projects/project02/neo4j/csv/treatment_plans_patients.csv' WITH CSV header;

COPY (SELECT first_name, last_name, name AS treatment
      FROM treatment_plans tp, doctors dp, treatments t
      WHERE tp.pat_doc_id = dp.id AND tp.treatment_id = t.id AND pat_doc_id IS NOT NULL)
TO '/app/postgres/projects/project02/neo4j/csv/treatment_plans_doc_patients.csv' WITH CSV header;
