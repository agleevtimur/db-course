create extension postgres_fdw;
create server localhost foreign data wrapper postgres_fdw options (host 'localhost', dbname 'db_course', port '5432');
create user mapping for db_course server localhost options (user 'db_course', password 'db_course');
create foreign table public.f_table1 (id int, text varchar(10)) server localhost options (schema_name 'first', table_name 'f_table');
create foreign table public.f_table2 (id int, text varchar(10)) server localhost options (schema_name 'second', table_name 's_table');
create foreign table public.f_table3 (id int, text varchar(10)) server localhost options (schema_name 'third', table_name 't_table');

