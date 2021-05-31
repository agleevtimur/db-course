insert into gin_btree_gist.t_gin select i, 'text' || i::varchar from generate_series(1, 10000) as i;
insert into gin_btree_gist.t_btree select i, 'text' || i::varchar from generate_series(1, 10000) as i;
insert into gin_btree_gist.t_gist select i, 'text' || i::varchar from generate_series(1, 10000) as i;

