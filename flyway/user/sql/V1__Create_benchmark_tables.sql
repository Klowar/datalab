CREATE TABLE IF NOT EXISTS benchmark.logged_table (
    id int NOT NULL PRIMARY KEY,
    txt varchar NOT NULL
);

CREATE UNLOGGED TABLE IF NOT EXISTS benchmark.unlogged_table (
    id int NOT NULL PRIMARY KEY,
    txt varchar NOT NULL
);

