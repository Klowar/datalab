INSERT INTO benchmark.products
SELECT
    generate_series(1, 1000000) AS id,
    'amazon :(' AS name;

