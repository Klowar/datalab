-- Create work user
CREATE USER benchmark benchmark01lab;

-- Give database usage to user benchmark
GRANT ALL ON DATABASE benchmark TO benchmark;

-- Set schema
ALTER USER benchmark SET search_path = benchmark;

