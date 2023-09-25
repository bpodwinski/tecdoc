<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

$query = <<<SQL
SELECT DLNR, BRAND FROM brands WHERE BRAND='$id'
SQL;