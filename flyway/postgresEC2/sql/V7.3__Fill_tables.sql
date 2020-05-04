-- Fill test tables
INSERT INTO pandas_1
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 100000) AS i;

INSERT INTO pandas_2
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 100000) AS i;

INSERT INTO pandas_3
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 100000) AS i;

