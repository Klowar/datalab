\set id_1 random(1,1000000)
\set id_2 random(1,1000000)
\set txt random(1,1000000)
BEGIN;
UPDATE
    order_hub
SET
    id = :id_1,
    name = md5(:txt::text)
WHERE
    id = :id_2;
END;
