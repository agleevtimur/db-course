\set id random(1,1000000)
begin;
	select * from partition.hub where id=:id;
commit;
