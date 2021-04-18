create table partition.heap (id bigserial primary key, text varchar(30));
create table partition.hub (id bigserial primary key, text varchar(30)) partition by range(id);
