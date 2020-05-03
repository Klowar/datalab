\set let1 random(97,122)
\set let2 random(97,122)
\set let3 random(97,122)
BEGIN;
SELECT
    content
FROM
    content_btree
WHERE
    content LIKE CHR(:let1) || CHR(:let2) || CHR(:let3) || '%';
END;
