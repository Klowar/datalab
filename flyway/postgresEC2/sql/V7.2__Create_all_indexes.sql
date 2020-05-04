-- Btree
CREATE INDEX IF NOT EXISTS panda_btree ON pandas_1 USING btree (name);

-- Hash
CREATE INDEX IF NOT EXISTS panda_hash ON pandas_2 USING HASH (name);

-- Brin
CREATE INDEX IF NOT EXISTS panda_brin ON pandas_3 USING BRIN (name);

