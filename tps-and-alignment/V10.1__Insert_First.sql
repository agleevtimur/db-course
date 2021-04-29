DO language 'plpgsql'
$$
DECLARE sql_insert_generate text := 'insert into tps_and_alignment.first values(' || string_agg(' random()*'||i::bigint,',') || ',' || 100 || ');'
	from generate_series(1,100) as i;
BEGIN
	for i in 1..1000000 loop
		EXECUTE sql_insert_generate;
	end loop;
END;
$$
