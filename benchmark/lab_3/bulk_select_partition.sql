\set id random(1,1000000)
BEGIN;
SELECT
    *
FROM
    benchmark.users
WHERE
    id = :id;
END;
