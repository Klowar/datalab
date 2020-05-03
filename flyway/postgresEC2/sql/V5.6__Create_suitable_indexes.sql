-- Btree index
CREATE INDEX IF NOT EXISTS index_content_btree ON content_btree USING BTREE (content);

-- Btree index
CREATE INDEX IF NOT EXISTS index_content_gist ON content_gist USING GIST (content_vector);

UPDATE
    content_gin
SET
    content_vector = to_tsvector('english', content);

-- Btree index
CREATE INDEX IF NOT EXISTS index_content_gin ON content_gin USING GIN (content_vector);

UPDATE
    content_gin
SET
    content_vector = to_tsvector('english', content);

