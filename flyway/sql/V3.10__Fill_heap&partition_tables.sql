-- Insert into heap table, each name is uniq
WITH temp AS (
    SELECT
        generate_series(1, 1000000) AS id)
INSERT INTO benchmark.users
SELECT
    id,
    md5(id::TEXT) AS name
FROM
    temp;

-- Insert into partition table, each name is uniq
WITH temp AS (
    SELECT
        generate_series(1, 1000000) AS id)
INSERT INTO benchmark.part_users
SELECT
    id,
    md5(id::TEXT) AS name
FROM
    temp;

