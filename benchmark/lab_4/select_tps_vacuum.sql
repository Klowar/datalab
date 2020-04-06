\set id 1
BEGIN;
SELECT
    *
FROM
    benchmark.plane
WHERE
    id = :id;
END;
