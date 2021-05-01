create index hash on btree_hash_brin.hash_table using hash(name);
create index btree on btree_hash_brin.btree_table using btree(name);
create index brin on btree_hash_brin.brin_table using brin(name);