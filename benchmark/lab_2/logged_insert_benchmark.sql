\set id random(1,1000000)
\set txt random(1,1000000)
BEGIN;
INSERT INTO logged_table
SELECT
    :id AS id,
    md5(:txt::TEXT) AS txt;
END;
