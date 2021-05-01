create schema instead_of_trigger;
create table instead_of_trigger.dictionary (key varchar, value int);
create view instead_of_trigger.view as
	select key, sum(value)
	from instead_of_trigger.dictionary
	group by key;
