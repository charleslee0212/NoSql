CREATE OR REPLACE FUNCTION order_up()
RETURNS text AS $$
DECLARE
  results text := '';
  order boolean;
BEGIN
  FOR i IN 1..100000
    LOOP
      IF (SELECT add_order(
        (SELECT email_address
        FROM users
        ORDER BY RANDOM()
        LIMIT 1)
        ,
        (SELECT name
        FROM recipes
        ORDER BY RANDOM()
        LIMIT 1)))
      THEN
        results := CONCAT(results, 'ORDER PLACED --> ');
      ELSE
        results := CONCAT(results, 'ORDER DENIED --> ');
      END IF;
    END LOOP;
  RETURN results;
END;
$$ LANGUAGE plpgsql;
