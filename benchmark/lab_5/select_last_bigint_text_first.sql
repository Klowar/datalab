BEGIN;
SELECT
    sum(col100)
FROM
    another_big_table;
END;
