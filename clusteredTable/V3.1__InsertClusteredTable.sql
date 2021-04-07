INSERT INTO clustered_table.cluster (id, text)
SELECT random() * 10000, 'text' || i::varchar FROM generate_series(1, 10000) as g(i);
ANALYSE clustered_table.cluster;

