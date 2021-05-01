insert into instead_of_trigger.view select 'text' || i::varchar, i::int from generate_series(1, 1000) as g(i);
