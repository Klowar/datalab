CREATE OR REPLACE FUNCTION exists_tech (d_id integer)
    RETURNS boolean
    AS $$
    SELECT
        EXISTS (
            SELECT
                1
            FROM
                tech
            WHERE
                id = d_id);

$$
LANGUAGE sql;

