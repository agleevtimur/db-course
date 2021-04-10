<?php

$connection = pg_connect("host=54.226.133.98 port=5432 dbname=db_course user=db_course password=db_course");
if (!$connection) {
    die('connection failed');
}

$sql = '';
for ($i = 0; $i < 10000; $i++) {
    srand($i);
    $rnd = rand(0, 10000);
    if ($rnd < 3333) {
        $table = 'public.f_table1';
    } else if ($rnd >= 3333 && $rnd < 6666) {
        $table = 'public.f_table2';
    } else {
        $table = 'public.f_table3';
    }
    $sql .= "INSERT INTO $table VALUES ($i, 'text');";
}
$res = pg_query($connection, $sql);
echo $res;
