CREATE TABLE IF NOT EXISTS benchmark.city (
    id integer,
    name varchar
);

CREATE INDEX city_id_idx ON benchmark.city USING btree (id ASC NULLS FIRST);

