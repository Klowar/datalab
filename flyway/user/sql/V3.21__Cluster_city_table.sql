-- Make city table clustered
CLUSTER benchmark.city
USING city_id_idx;

-- ???
ANALYZE benchmark.city;

