-- General function
CREATE OR REPLACE FUNCTION dml_update_traffic ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO order_hub
        VALUES (NEW.id, NEW.name);
    DELETE FROM order_hub
    WHERE id = OLD.id;
    RETURN NULL;
END;
$$;

-- Triggers set up
CREATE TRIGGER dml_update_slaves
    BEFORE UPDATE ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS DISTINCT FROM OLD.id % 12)
    EXECUTE FUNCTION dml_update_traffic ();

