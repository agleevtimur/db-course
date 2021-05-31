create extension pg_trgm;
create index on gin_btree_gist.t_gin using gin(name gin_trgm_ops);
create index on gin_btree_gist.t_btree using btree(name);
create index on gin_btree_gist.t_gist using gist(name gist_trgm_ops);

