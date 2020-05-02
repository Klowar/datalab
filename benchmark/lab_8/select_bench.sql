BEGIN;
SELECT
    b,
    t,
    m,
    o,
    p,
    q
FROM
    t1
    INNER JOIN t2 ON id = t2.t1_id
    INNER JOIN t3 ON id = t3.t1_id
    INNER JOIN t4 ON id = t4.t1_id
    INNER JOIN t5 ON id = t5.t1_id
    INNER JOIN t6 ON id = t6.t1_id;
END;
