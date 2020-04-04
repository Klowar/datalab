-- Insert into city table, each name is uniq
WITH temp AS (
    SELECT
        generate_series(1, 10000) AS id)
INSERT INTO benchmark.city
SELECT
    id,
    md5(id::TEXT) AS name
FROM
    temp;

-- ???
ANALYZE benchmark.city;

