\set id_1 random(1,1000000)
\set d random(0,6)
\set txt random(1,1000000)
BEGIN;
UPDATE
    order_hub
SET
    delivery = '2020_4_20'::date + :d,
    name = md5(:txt::text)
WHERE
    id = :id_1;
END;
