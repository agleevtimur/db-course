create schema olap;
create type custom_type as (x int, y int);
create table olap.table (id integer, value custom_type);
