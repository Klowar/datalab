BEGIN;
SELECT
    min(a) OVER (PARTITION BY b, c ORDER BY b, c)
FROM
    test_indexes
ORDER BY
    b,
    c;
END;
