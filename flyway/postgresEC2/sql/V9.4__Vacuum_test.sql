-- Create table
CREATE TABLE IF NOT EXISTS vacuum_test (
    id integer,
    name varchar
);

-- Fill table
TRUNCATE vacuum_test;

INSERT INTO vacuum_test
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 100000) AS i;

