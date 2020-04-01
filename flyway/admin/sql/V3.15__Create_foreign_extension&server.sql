CREATE EXTENSION IF NOT EXISTS postgres_fdw;

CREATE SERVER foreign_server FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'ec2-35-175-225-239.compute-1.amazonaws.com',
    port '5432',
    dbname 'foreigndb'
);

CREATE USER MAPPING FOR local_user SERVER foreign_server OPTIONS (
    USER 'foreignuser',
    PASSWORD '1234post'
);

-- Grant privileges
GRANT USAGE ON FOREIGN SERVER foreign_server TO benchmark;

