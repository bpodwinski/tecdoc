﻿<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

global $langId;

$query = <<<SQL
SELECT DISTINCT
    T100.HERNR,  -- ID MANUFACTURER
    GET_LBEZNR(T100.LBEZNR, $langId) AS NAME,  -- NAME MANUFACTURER
    T100.PKW, -- 0/1 MARK THAT MANUFACTURER IS PRODUCION PASSANGER CARS OR MOTORCYCLES
    T100.NKW, -- 0/1 MARK THAT MANUFACTURER IS PRODUCION TRUCK AND COMMERCIAL CARS
    T100.TRANSPORTER, -- 0/1 MARK THAT MANUFACTURER IS PRODUCION LIGHT COMMERCIAL VEHICLE
    T100.ACHSE, -- 0/1 MARK THAT MANUFACTURER IS PRODUCION AXLE FOR CARS
    T100.MOTOR, -- 0/1 MARK THAT MANUFACTURER IS PRODUCION MOTORS FOR CARS
    T100.GETRIEBE -- 0/1 MARK THAT MANUFACTURER IS PRODUCION TRANSMISSION FOR CARS						
FROM `110` AS T110
    JOIN `100` AS T100 ON T100.HERNR = T110.HERNR
WHERE 1
    AND (CASE
            WHEN 0 = 0 OR LENGTH(0) <> 4 THEN 1
            WHEN T110.BJVON <= CAST(CONCAT(0,'01') AS UNSIGNED) AND IFNULL(T110.BJBIS, CAST(CONCAT(YEAR(NOW()),'12') AS UNSIGNED)) >= CAST(CONCAT(0,'01') AS UNSIGNED) THEN 1
            ELSE 0
        END) = 1
ORDER BY NAME;
SQL;
