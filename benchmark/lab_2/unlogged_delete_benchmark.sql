-- \set id random(1,1000000)
BEGIN;
DELETE FROM unlogged_table
WHERE id = (
        SELECT
            min(id)
        FROM
            unlogged_table
        LIMIT 1);
END;
