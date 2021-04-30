<?php

$standard = "begin;\n";
$prepared = "begin;\nprepare my_ps (integer, varchar) as insert into prepared_statement.prepared values ($1, $2);\n";
for($i = 0; $i < 100; $i++) {
	$str =  bin2hex(random_bytes(7));
	$standard .= "insert into prepared_statement.standard values($i, '$str');\n";
	$prepared .= "execute my_ps($i, '$str');\n";
}

$standard .= 'commit;';
$prepared .= "deallocate my_ps;\ncommit;";

$r1 = file_put_contents("standard.sql", $standard);
$r2 = file_put_contents("prepared.sql", $prepared);
