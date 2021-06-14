create schema inherited;

create table inherited.hub (id serial, name varchar);
create table inherited.sub1 () inherits (inherited.hub);
create table inherited.sub2 () inherits (inherited.hub);
create table inherited.sub3 () inherits (inherited.hub);
create table inherited.sub4 () inherits (inherited.hub);
create table inherited.sub5 () inherits (inherited.hub);
create table inherited.sub6 () inherits (inherited.hub);
create table inherited.sub7 () inherits (inherited.hub);
create table inherited.sub8 () inherits (inherited.hub);
create table inherited.sub9 () inherits (inherited.hub);
create table inherited.sub10 () inherits (inherited.hub);