-- \set id random(1,1000000)
BEGIN;
DELETE FROM logged_table
WHERE id = (
        SELECT
            min(id)
        FROM
            logged_table
        LIMIT 1);
END;
