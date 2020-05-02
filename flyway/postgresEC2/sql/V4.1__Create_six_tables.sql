-- Main table
CREATE TABLE IF NOT EXISTS t1 (
    id integer,
    b integer
);

-- Slaves
CREATE TABLE IF NOT EXISTS t2 (
    t1_id integer,
    t text
);

CREATE TABLE IF NOT EXISTS t3 (
    t1_id integer,
    m integer
);

CREATE TABLE IF NOT EXISTS t4 (
    t1_id integer,
    o text
);

CREATE TABLE IF NOT EXISTS t5 (
    t1_id integer,
    p integer
);

CREATE TABLE IF NOT EXISTS t6 (
    t1_id integer,
    q text
);

