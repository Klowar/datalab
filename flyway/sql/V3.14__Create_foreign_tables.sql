CREATE FOREIGN TABLE fbook_0 (
    id integer,
    name varchar)
SERVER foreign_server OPTIONS (
    schema_name 'fdw',
    table_name 'book_0'
);

CREATE FOREIGN TABLE fbook_1 (
    id integer,
    name varchar)
SERVER foreign_server OPTIONS (
    schema_name 'fdw',
    table_name 'book_1'
);

CREATE FOREIGN TABLE fbook_2 (
    id integer,
    name varchar)
SERVER foreign_server OPTIONS (
    schema_name 'fdw',
    table_name 'book_2'
);

