begin;
	select * from lock.test where id = 2 for update;
	update lock.test set name = 'text000' where id = 1;
end;
