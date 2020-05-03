-- Add required index column
ALTER TABLE content_gin
    ADD COLUMN content_vector tsvector;

-- Add required index column
ALTER TABLE content_gist
    ADD COLUMN content_vector tsvector;

