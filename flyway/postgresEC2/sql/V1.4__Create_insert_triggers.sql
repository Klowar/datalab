-- General dispatcher functions
CREATE OR REPLACE FUNCTION dml_traffic ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
    EXECUTE format('insert into %s values ($1, $2, $3)', TG_ARGV[0])
    USING NEW.id,
    NEW.name,
    NEW.delivery;
    RETURN NULL;
END;
$$;

-- General dispatcher functions
CREATE OR REPLACE FUNCTION dml_traffic (text, record)
    RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    EXECUTE format('insert into %s values ($1, $2, $3)', $1)
    USING $2.id,
    $2.name,
    $2.delivery;
END;
$$;

-- Helper functions
CREATE OR REPLACE FUNCTION create_slave_table (text)
    RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- RAISE NOTICE 'create table % as slave of order_hub', $1;
    EXECUTE format('CREATE TABLE IF NOT EXISTS %s() INHERITS (order_hub);', $1);
END;
$$;

CREATE OR REPLACE FUNCTION create_slave_insert_trigger (date)
    RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- RAISE NOTICE 'create insert trigger dml_insert_slave_%s_%s_%s', extract(year FROM $1), extract(month FROM $1), extract(day FROM $1);
    EXECUTE format('CREATE TRIGGER dml_slave_%s_%s_%s BEFORE INSERT ON order_hub FOR EACH ROW 
                    WHEN (NEW.delivery is not distinct from ''%s'') 
                    EXECUTE FUNCTION dml_traffic ("slave_%s_%s_%s");', extract(year FROM $1), extract(month FROM $1), extract(day FROM $1), $1, extract(year FROM $1), extract(month FROM $1), extract(day FROM $1));
END;
$$;

CREATE OR REPLACE FUNCTION check_existence (text)
    RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    amount integer;
BEGIN
    SELECT
        INTO amount count(oid)
    FROM
        pg_class
    WHERE
        relname = $1;
    RETURN amount;
END;
$$;

-- Check existing and create new trigger's
CREATE OR REPLACE FUNCTION ddl_existence ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
DECLARE
    amount integer;
BEGIN
    SELECT
        INTO amount *
    FROM
        check_existence (format('slave_%s_%s_%s', extract(year FROM NEW.delivery::date), extract(month FROM NEW.delivery::date), extract(day FROM NEW.delivery::date)));
    IF (amount = 0) THEN
        EXECUTE create_slave_table (format('slave_%s_%s_%s', extract(year FROM NEW.delivery::date), extract(month FROM NEW.delivery::date), extract(day FROM NEW.delivery::date)));
        EXECUTE create_slave_insert_trigger (NEW.delivery::date);
        EXECUTE create_slave_update_trigger (NEW.delivery::date);
        IF (TG_OP = 'INSERT') THEN
            EXECUTE dml_traffic (format('slave_%s_%s_%s', extract(year FROM NEW.delivery::date), extract(month FROM NEW.delivery::date), extract(day FROM NEW.delivery::date)), NEW);
            RETURN NULL;
        END IF;
    END IF;
    RETURN NEW;
END;
$$;

-- Create triggers
CREATE TRIGGER ddl_ex
    BEFORE UPDATE OR INSERT ON order_hub
    FOR EACH ROW
    EXECUTE FUNCTION ddl_existence ();

