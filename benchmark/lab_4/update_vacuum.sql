\set id 1
\set name random(1,1000000)
BEGIN;
UPDATE
    benchmark.plane
SET
    name = md5(:name::TEXT)
WHERE
    id = :id;
END;
