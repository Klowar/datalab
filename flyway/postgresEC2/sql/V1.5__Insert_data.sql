-- Insert into heap table, each name is uniq
WITH temp AS (
    SELECT
        generate_series(1, 1000000) AS id)
INSERT INTO datalab.order_hub
SELECT
    id,
    md5(id::text) AS name
FROM
    temp;

