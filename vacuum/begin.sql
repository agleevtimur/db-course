create schema vacuum;
create table vacuum.test (id bigint, name varchar) with (autovacuum_enabled = false);
insert into vacuum.test values (1, 'text1');
select pg_size_pretty(pg_relation_size('vacuum.test'));