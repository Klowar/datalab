-- Btree indexes
CREATE TABLE IF NOT EXISTS content_btree (
    id integer,
    content varchar
);

-- Gist indexes
CREATE TABLE IF NOT EXISTS content_gist (
    id integer,
    content varchar
);

-- Gin indexes
CREATE TABLE IF NOT EXISTS content_gin (
    id integer,
    content varchar
);

