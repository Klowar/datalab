CREATE OR REPLACE FUNCTION exists_tech_pg_2 (d_id integer)
    RETURNS boolean
    AS $$
DECLARE
    res boolean;
BEGIN
    SELECT
        INTO res EXISTS (
            SELECT
                1
            FROM
                tech
            WHERE
                id = d_id);
    IF (res) THEN
        RETURN res;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$
LANGUAGE plpgsql;

