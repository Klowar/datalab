-- Fill text last table
INSERT INTO big_table
SELECT
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    md5(i::text)
FROM
    generate_series(1, 1000000) AS i;

-- Fill text first table
INSERT INTO big_table
SELECT
    md5(i::text),
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i,
    i
FROM
    generate_series(1, 1000000) AS i;
