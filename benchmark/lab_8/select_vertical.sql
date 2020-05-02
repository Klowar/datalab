BEGIN;
SELECT
    b,
    t,
    m,
    o,
    p,
    q
FROM
    m1
    INNER JOIN m2 ON m1.id = m2.m1_id
    INNER JOIN m3 ON m2.id = m3.m2_id
    INNER JOIN m4 ON m3.id = m4.m3_id
    INNER JOIN m5 ON m5.id = m5.m4_id
    INNER JOIN m6 ON m6.id = m6.m5_id;
END;
