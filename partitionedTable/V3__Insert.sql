insert into partition.heap (text) select 'text' || i::varchar from generate_series(1, 1000000) as g(i);
analyze partition.heap;
insert into partition.hub (text) select 'text' || i::varchar from generate_series(1, 1000000) as g(i);
analyze partition.hub;
