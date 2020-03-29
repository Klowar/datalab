\set id random(1,1000000)
\set txt random(1,1000000)
BEGIN;
UPDATE
    unlogged_table
SET
    txt = (
        SELECT
            md5(:txt::TEXT))
WHERE
    id = :id;
END;
