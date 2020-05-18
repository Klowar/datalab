INSERT INTO tech
SELECT
    i,
    md5(i::text)
FROM
    generate_series(1, 100000) AS i;

