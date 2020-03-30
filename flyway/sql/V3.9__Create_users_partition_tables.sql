-- Main table
CREATE TABLE IF NOT EXISTS benchmark.part_users (
    id integer,
    name varchar
)
PARTITION BY HASH (id);

-- Partitions for data destrebution
CREATE TABLE IF NOT EXISTS benchmark.part_users_0 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 0);

CREATE TABLE IF NOT EXISTS benchmark.part_users_1 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 1);

CREATE TABLE IF NOT EXISTS benchmark.part_users_2 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 2);

CREATE TABLE IF NOT EXISTS benchmark.part_users_3 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 3);

CREATE TABLE IF NOT EXISTS benchmark.part_users_4 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 4);

CREATE TABLE IF NOT EXISTS benchmark.part_users_5 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 5);

CREATE TABLE IF NOT EXISTS benchmark.part_users_6 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 6);

CREATE TABLE IF NOT EXISTS benchmark.part_users_7 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 7);

CREATE TABLE IF NOT EXISTS benchmark.part_users_8 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 8);

CREATE TABLE IF NOT EXISTS benchmark.part_users_9 PARTITION OF benchmark.part_users
FOR VALUES WITH (MODULUS 10, REMAINDER 9);

-- Default table for prevent data leaks
CREATE TABLE IF NOT EXISTS benchmark.part_users_default PARTITION OF benchmark.part_users DEFAULT;

