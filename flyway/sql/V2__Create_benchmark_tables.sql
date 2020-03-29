ALTER TABLE IF EXISTS benchmark.logged_table
    DROP CONSTRAINT logged_table_pkey;

ALTER TABLE IF EXISTS benchmark.unlogged_table
    DROP CONSTRAINT unlogged_table_pkey;

