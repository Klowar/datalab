INSERT INTO logged_table
SELECT
    generate_series(1, 1000000) AS id,
    md5(random()::TEXT);

INSERT INTO unlogged_table
SELECT
    generate_series(1, 1000000) AS id,
    md5(random()::TEXT);

