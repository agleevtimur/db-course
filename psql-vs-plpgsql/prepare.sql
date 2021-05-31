create schema psql_vs_plpgsql;
create table psql_vs_plpgsql.test(id bigint, name varchar);
insert into psql_vs_plpgsql.test select i::bigint, 'text' || i::varchar from generate_series(1, 10000) as i;

create or replace function sql() returns record as
    $$
    select * from psql_vs_plpgsql.test where name = 'text5000';
    $$
language sql;

create or replace function plpgsql() returns record as
    $$
    declare
    rec record;
    begin
        select * into strict rec from psql_vs_plpgsql.test where name = 'text5000';
        return rec;
    end;
    $$ language plpgsql;