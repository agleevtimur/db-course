explain analyse select * from explain_analyze.t1 t1
inner join explain_analyze.t2 t2 on t1.name = t2.name
inner join explain_analyze.t3 t3 on t2.name = t3.name
inner join explain_analyze.t4 t4 on t3.name = t4.name
inner join explain_analyze.t5 t5 on t4.name = t5.name
inner join explain_analyze.t6 t6 on t5.name = t6.name
inner join explain_analyze.t7 t7 on t6.name = t7.name

