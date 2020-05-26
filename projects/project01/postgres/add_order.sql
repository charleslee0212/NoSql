CREATE OR REPLACE FUNCTION add_order(
  user_email text,
  recipe_name text
)
RETURNS boolean AS $$
DECLARE
  available boolean := false;
  make boolean := true;
  element record;
BEGIN

  FOR element IN
  SELECT name_inv, amount, quantity
  FROM (
    SELECT name_inv, amount
    FROM ingredients
    INNER JOIN recipes
    ON name = name_food
    WHERE name = recipe_name
  ) AS ingredients_
  INNER JOIN inventory inv
  ON name_inv = name
  LOOP

    IF element.quantity >= element.amount THEN
      available := true;
    END IF;
    IF NOT available THEN
      make := false;
    END IF;

    available := false;
  END LOOP;

  IF make THEN
    FOR element IN
    SELECT name_inv, amount, quantity
    FROM (
      SELECT name_inv, amount
      FROM ingredients
      INNER JOIN recipes
      ON name = name_food
      WHERE name = recipe_name
    ) AS ingredients_
    INNER JOIN inventory inv
    ON name_inv = name
    LOOP
      UPDATE inventory
      SET quantity = quantity - element.amount
      WHERE name  = element.name_inv;
    END LOOP;

    INSERT INTO orders (user_name, recipe)
    VALUES (user_email, recipe_name);
  END IF;

  RETURN make;
END;
$$ LANGUAGE plpgsql;
