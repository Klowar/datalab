\set id random(1,500000)
BEGIN;
SELECT
    exists_tech_pg_2 (:id);
END;
