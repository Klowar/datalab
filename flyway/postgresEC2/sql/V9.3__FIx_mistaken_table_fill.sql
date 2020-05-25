TRUNCATE admin_1;

TRUNCATE admin_2;

TRUNCATE admin_3;

-- 1000 rows
INSERT INTO admin_1
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 1000) AS i;

-- 10000 rows
INSERT INTO admin_2
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 10000) AS i;

-- 100000 rows
INSERT INTO admin_3
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 100000) AS i;

