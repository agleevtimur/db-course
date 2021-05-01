insert into btree_hash_brin.btree_table (id, name) select i, 'test' || i::varchar from generate_series(1, 100000) as g(i);
insert into btree_hash_brin.hash_table (id, name) select i, 'test' || i::varchar from generate_series(1, 100000) as g(i);
insert into btree_hash_brin.brin_table (id, name) select i, 'test' || i::varchar from generate_series(1, 100000) as g(i);
