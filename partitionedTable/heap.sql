\set id random(1,1000000)
begin;
	select * from partition.heap where id=:id;
commit;
