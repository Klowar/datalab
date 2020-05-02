-- Main table
CREATE TABLE IF NOT EXISTS m1 (
    id integer,
    b integer
);

-- Slaves
CREATE TABLE IF NOT EXISTS m2 (
    id integer,
    m1_id integer,
    t text
);

CREATE TABLE IF NOT EXISTS m3 (
    id integer,
    m2_id integer,
    m integer
);

CREATE TABLE IF NOT EXISTS m4 (
    id integer,
    m3_id integer,
    o text
);

CREATE TABLE IF NOT EXISTS m5 (
    id integer,
    m4_id integer,
    p integer
);

CREATE TABLE IF NOT EXISTS m6 (
    id integer,
    m5_id integer,
    q text
);

