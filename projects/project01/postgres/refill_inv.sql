CREATE OR REPLACE FUNCTION refill_inv()
RETURNS text AS $$
DECLARE
  result text := 'DONE';
BEGIN
  UPDATE inventory
  SET quantity = 1000;
  RETURN result;
END;
$$ LANGUAGE plpgsql;
