-- a,b,c cols
CREATE INDEX IF NOT EXISTS test_index_abc ON test_indexes USING BTREE (a, b, c);

-- a,b
CREATE INDEX IF NOT EXISTS test_index_ab ON test_indexes USING BTREE (a, b);

-- a,c
CREATE INDEX IF NOT EXISTS test_index_ac ON test_indexes USING BTREE (a, c);

-- b,c
CREATE INDEX IF NOT EXISTS test_index_bc ON test_indexes USING BTREE (b, c);

-- a
CREATE INDEX IF NOT EXISTS test_index_a ON test_indexes USING BTREE (a);

-- b
CREATE INDEX IF NOT EXISTS test_index_b ON test_indexes USING BTREE (b);

-- c
CREATE INDEX IF NOT EXISTS test_index_c ON test_indexes USING BTREE (c);

