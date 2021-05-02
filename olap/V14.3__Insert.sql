insert into olap.table select i, (i,i)::custom_type from generate_series(1,1000) as g(i);
