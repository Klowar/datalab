\set name random(1, 1000000)
BEGIN;
SELECT
    *
FROM
    pandas_1
WHERE
    name = :name;
END;
