\set r random(1, 1000)
begin;
select min(a) over(partition by b,c order by b,c)
from btree_index.table
where a = :r order by c,b;
end;
