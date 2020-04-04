\set f_from random(1,5000)
\set t_to random(5001,10000)
BEGIN;
SELECT
    *
FROM
    benchmark.city
WHERE
    id > :f_from
    AND id < t_to
END;
