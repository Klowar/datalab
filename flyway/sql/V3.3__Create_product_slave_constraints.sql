ALTER TABLE benchmark.products_0
    ADD CONSTRAINT data_partition CHECK (id % 10 = 0);

ALTER TABLE benchmark.products_1
    ADD CONSTRAINT data_partition CHECK (id % 10 = 1);

ALTER TABLE benchmark.products_2
    ADD CONSTRAINT data_partition CHECK (id % 10 = 2);

ALTER TABLE benchmark.products_3
    ADD CONSTRAINT data_partition CHECK (id % 10 = 3);

ALTER TABLE benchmark.products_4
    ADD CONSTRAINT data_partition CHECK (id % 10 = 4);

ALTER TABLE benchmark.products_5
    ADD CONSTRAINT data_partition CHECK (id % 10 = 5);

ALTER TABLE benchmark.products_6
    ADD CONSTRAINT data_partition CHECK (id % 10 = 6);

ALTER TABLE benchmark.products_7
    ADD CONSTRAINT data_partition CHECK (id % 10 = 7);

ALTER TABLE benchmark.products_8
    ADD CONSTRAINT data_partition CHECK (id % 10 = 8);

ALTER TABLE benchmark.products_9
    ADD CONSTRAINT data_partition CHECK (id % 10 = 9);

