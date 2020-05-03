SELECT
    relid::regclass AS table_name,
    indexrelid::regclass AS index_name,
    pg_size_pretty(pg_relation_size(indexrelid::regclass)) AS index_size,
    idx_tup_read,
    idx_tup_fetch,
    idx_scan
FROM
    pg_stat_user_indexes
    JOIN pg_index USING (indexrelid)
WHERE
    NOT indisunique;

