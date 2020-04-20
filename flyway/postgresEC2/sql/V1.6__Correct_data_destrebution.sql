-- Clean table
TRUNCATE order_hub;

-- Insert into heap table, each name is uniq
WITH temp AS (
    SELECT
        generate_series(1, 1000000) AS id,
        NOW()::date AS delivery)
INSERT INTO order_hub
SELECT
    id,
    md5(id::text) AS name,
    delivery + id % 7
FROM
    temp;

