<?php
$file = fopen('flyway-7.7.1/sql/V7__Create.sql', 'a');
for ($i = 1; $i < 101; $i++) {
        fwrite($file, "bigint_{$i} bigint,\n");
}
fclose($file);
