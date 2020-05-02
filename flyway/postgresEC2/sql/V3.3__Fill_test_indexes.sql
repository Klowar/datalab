-- Fill data
INSERT INTO test_indexes
SELECT
    i,
    i,
    i
FROM
    generate_series(1, 1000) AS i;

