create schema lock;
create table lock.test(id bigint, name varchar);
insert into lock.test values (1, 'text1'), (2, 'text2');
