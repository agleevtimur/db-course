insert into explain_analyze.t1 select i, md5(random()::text) from generate_series(1,10000) as i;
insert into explain_analyze.t2 select i, md5(random()::text) from generate_series(1,10000) as i;
insert into explain_analyze.t3 select i, md5(random()::text) from generate_series(1,10000) as i;
insert into explain_analyze.t4 select i, md5(random()::text) from generate_series(1,10000) as i;
insert into explain_analyze.t5 select i, md5(random()::text) from generate_series(1,10000) as i;
insert into explain_analyze.t6 select i, md5(random()::text) from generate_series(1,10000) as i;
insert into explain_analyze.t7 select i, md5(random()::text) from generate_series(1,10000) as i;

