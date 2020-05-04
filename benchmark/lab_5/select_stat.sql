SELECT
    LEFT (query,
        30),
    calls,
    total_time,
    ROWS,
    100.0 * shared_blks_read / nullif (shared_blks_hit + shared_blks_read, 0) read_percent
FROM
    pg_stat_statements
ORDER BY
    total_time DESC
LIMIT 20;

