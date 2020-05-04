-- c,a,b cols
CREATE INDEX IF NOT EXISTS test_index_acb ON test_indexes USING BTREE (c, a, b);

-- b,c,a cols
CREATE INDEX IF NOT EXISTS test_index_acb ON test_indexes USING BTREE (b, c, a);

-- b,a,c cols
CREATE INDEX IF NOT EXISTS test_index_acb ON test_indexes USING BTREE (b, a, c);

-- a,c,b cols
CREATE INDEX IF NOT EXISTS test_index_acb ON test_indexes USING BTREE (a, c, b);

-- c,b,a cols
CREATE INDEX IF NOT EXISTS test_index_acb ON test_indexes USING BTREE (c, b, a);

-- b,a
CREATE INDEX IF NOT EXISTS test_index_ab ON test_indexes USING BTREE (b, a);

-- c,a
CREATE INDEX IF NOT EXISTS test_index_ac ON test_indexes USING BTREE (c, a);

-- c,b
CREATE INDEX IF NOT EXISTS test_index_bc ON test_indexes USING BTREE (c, b);

