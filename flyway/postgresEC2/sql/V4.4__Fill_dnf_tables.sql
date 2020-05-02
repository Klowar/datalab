-- Fill numeric tables
INSERT INTO m1
SELECT
    i,
    i
FROM
    generate_series(1, 1000) AS i;

INSERT INTO m3
SELECT
    i,
    i,
    i
FROM
    generate_series(1, 1000) AS i;

INSERT INTO m5
SELECT
    i,
    i,
    i
FROM
    generate_series(1, 1000) AS i;

-- Text tables
INSERT INTO m2
SELECT
    i,
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

INSERT INTO m4
SELECT
    i,
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

INSERT INTO m6
SELECT
    i,
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

