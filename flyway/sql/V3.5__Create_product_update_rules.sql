-- Change update to delete and insert, when we change id
CREATE OR REPLACE RULE redirect_update_with_id_change AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 <> OLD.id % 10
        DO INSTEAD
        (
            INSERT INTO benchmark.products (id, name)
                VALUES (NEW.id, NEW.name
);

DELETE FROM benchmark.products
WHERE id = OLD.id;

);

-- Update all tables if id not provided
CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id = NULL
        DO INSTEAD
        (
            UPDATE benchmark.products_0
            SET name = NEW.name;

UPDATE
    benchmark.products_1
SET
    name = NEW.name;

UPDATE
    benchmark.products_2
SET
    name = NEW.name;

UPDATE
    benchmark.products_3
SET
    name = NEW.name;

UPDATE
    benchmark.products_4
SET
    name = NEW.name;

UPDATE
    benchmark.products_5
SET
    name = NEW.name;

UPDATE
    benchmark.products_6
SET
    name = NEW.name;

UPDATE
    benchmark.products_7
SET
    name = NEW.name;

UPDATE
    benchmark.products_8
SET
    name = NEW.name;

UPDATE
    benchmark.products_9
SET
    name = NEW.name;

);

-- Update only specific table when id provided and equal to OLD.id
CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 0
        DO INSTEAD
        UPDATE benchmark.products_0
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 1
        DO INSTEAD
        UPDATE benchmark.products_1
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 2
        DO INSTEAD
        UPDATE benchmark.products_2
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 3
        DO INSTEAD
        UPDATE benchmark.products_3
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 4
        DO INSTEAD
        UPDATE benchmark.products_4
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 5
        DO INSTEAD
        UPDATE benchmark.products_5
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 6
        DO INSTEAD
        UPDATE benchmark.products_6
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 7
        DO INSTEAD
        UPDATE benchmark.products_7
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 8
        DO INSTEAD
        UPDATE benchmark.products_8
        SET name = NEW.name
    WHERE
        id = OLD.id;

CREATE OR REPLACE RULE redirect_update_to_produts_0 AS ON UPDATE TO benchmark.products
WHERE
    NEW.id % 10 = OLD.id % 10
    AND OLD.id % 10 = 9
        DO INSTEAD
        UPDATE benchmark.products_9
        SET name = NEW.name
    WHERE
        id = OLD.id;

