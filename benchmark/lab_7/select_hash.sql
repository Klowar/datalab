\set name random(1, 1000000)
BEGIN;
SELECT
    *
FROM
    pandas_2
WHERE
    name = md5(:name::text);
END;
