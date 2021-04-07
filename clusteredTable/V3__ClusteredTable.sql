CREATE TABLE clustered_table.cluster (
    id BIGINT, text VARCHAR(100)
);

CREATE INDEX ON clustered_table.cluster USING btree(id);

