-- General function
CREATE OR REPLACE FUNCTION dml_update_traffic ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- RAISE NOTICE 'Delete % % %', NEW.id, NEW.name, NEW.delivery;
    EXECUTE format('insert into slave_%s_%s_%s values ($1, $2, $3)', extract(year FROM NEW.delivery), extract(month FROM NEW.delivery), extract(day FROM NEW.delivery))
    USING NEW.id,
    NEW.name,
    NEW.delivery;
    DELETE FROM order_hub
    WHERE id = OLD.id
        AND name = OLD.name
        AND delivery = OLD.delivery;
    RETURN NULL;
END;
$$;

CREATE OR REPLACE FUNCTION create_slave_update_trigger (date)
    RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- RAISE NOTICE 'create update trigger dml_update_slave_%s_%s_%s', extract(year FROM $1), extract(month FROM $1), extract(day FROM $1);
    EXECUTE format('CREATE TRIGGER dml_update_slave_%s_%s_%s BEFORE UPDATE ON slave_%s_%s_%s FOR EACH ROW 
                    WHEN (NEW.delivery is distinct from OLD.delivery) 
                    EXECUTE FUNCTION dml_update_traffic ();', extract(year FROM $1), extract(month FROM $1), extract(day FROM $1), extract(year FROM $1), extract(month FROM $1), extract(day FROM $1));
    EXECUTE format('CREATE TRIGGER ddl_update_slave_%s_%s_%s BEFORE UPDATE ON slave_%s_%s_%s FOR EACH ROW 
                    WHEN (NEW.delivery is distinct from OLD.delivery) 
                    EXECUTE FUNCTION ddl_existence ();', extract(year FROM $1), extract(month FROM $1), extract(day FROM $1), extract(year FROM $1), extract(month FROM $1), extract(day FROM $1));
END;
$$;

