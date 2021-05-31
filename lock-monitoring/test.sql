begin;
	select * from lock.test where id = 1 for update;
	update lock.test set name = 'text1000' where id = 2;
end;
