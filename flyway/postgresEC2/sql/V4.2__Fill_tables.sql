-- Fill numeric tables
INSERT INTO t1
SELECT
    i,
    i
FROM
    generate_series(1, 1000) AS i;

INSERT INTO t3
SELECT
    i,
    i
FROM
    generate_series(1, 1000) AS i;

INSERT INTO t5
SELECT
    i,
    i
FROM
    generate_series(1, 1000) AS i;

-- Text tables
INSERT INTO t2
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

INSERT INTO t4
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

INSERT INTO t6
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

