-- Insert data query
WITH temp AS (
    SELECT
        generate_series(1, 1000) AS id)
INSERT INTO complex_storage
SELECT
    id,
    (id * 0.0001,
        id * 0.0002)::ComplexDig AS dig
FROM
    temp;

