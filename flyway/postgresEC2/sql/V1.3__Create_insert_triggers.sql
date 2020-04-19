-- General dispatcher functions
CREATE OR REPLACE FUNCTION dml_traffic ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
    EXECUTE format('insert into %s values ($1, $2)', TG_ARGV[0])
    USING NEW.id,
    NEW.name;
    RETURN NULL;
END;
$$;

-- Triggers set up insert
CREATE TRIGGER dml_slave_0
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 0)
    EXECUTE FUNCTION dml_traffic ('slave_2020_0');

CREATE TRIGGER dml_slave_1
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 1)
    EXECUTE FUNCTION dml_traffic ('slave_2020_1');

CREATE TRIGGER dml_slave_2
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 2)
    EXECUTE FUNCTION dml_traffic ('slave_2020_2');

CREATE TRIGGER dml_slave_3
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 3)
    EXECUTE FUNCTION dml_traffic ('slave_2020_3');

CREATE TRIGGER dml_slave_4
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 4)
    EXECUTE FUNCTION dml_traffic ('slave_2020_4');

CREATE TRIGGER dml_slave_5
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 5)
    EXECUTE FUNCTION dml_traffic ('slave_2020_5');

CREATE TRIGGER dml_slave_6
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 6)
    EXECUTE FUNCTION dml_traffic ('slave_2020_6');

CREATE TRIGGER dml_slave_7
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 7)
    EXECUTE FUNCTION dml_traffic ('slave_2020_7');

CREATE TRIGGER dml_slave_8
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 8)
    EXECUTE FUNCTION dml_traffic ('slave_2020_8');

CREATE TRIGGER dml_slave_9
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 9)
    EXECUTE FUNCTION dml_traffic ('slave_2020_9');

CREATE TRIGGER dml_slave_10
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 10)
    EXECUTE FUNCTION dml_traffic ('slave_2020_10');

CREATE TRIGGER dml_slave_11
    BEFORE INSERT ON order_hub
    FOR EACH ROW
    WHEN (NEW.id % 12 IS NOT DISTINCT FROM 11)
    EXECUTE FUNCTION dml_traffic ('slave_2020_11');

