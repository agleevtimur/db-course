insert into inherited.hub (id, name) select i::int, 'test' || (i)::varchar from generate_series(1, 1000000) as g(i);
