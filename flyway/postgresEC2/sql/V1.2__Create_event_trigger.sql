-- Prevent all manipulations with slave tables
CREATE OR REPLACE FUNCTION prevent_ddl_slave ()
    RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    obj record;
    amount integer;
BEGIN
    FOR obj IN
    SELECT
        objid
    FROM
        pg_event_trigger_ddl_commands ()
        LOOP
            SELECT
                INTO amount count(inhrelid)
            FROM
                pg_inherits
            WHERE
                inhrelid = obj.objid;
            IF (amount > 0) THEN
                RAISE exception 'Direct manipulation with slaves not allowed';
            END IF;
        END LOOP;
END;
$$;

-- Log create table
CREATE OR REPLACE FUNCTION log_create ()
    RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    obj record;
    amount integer;
BEGIN
    RAISE LOG '% % %',
END;
$$;

