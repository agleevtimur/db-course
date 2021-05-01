create schema pgbadger;
create table pgbadger.test(id bigint, name varchar);
insert into pgbadger.test (id, name) select i::bigint, 'test' || i::varchar from generate_series(1, 10000) as g(i);

