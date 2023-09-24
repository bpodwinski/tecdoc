<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

global $langId;

$query = <<<SQL
SELECT
    T110.HERNR, -- ID MANUFACTURER
    T110.KMODNR,  -- ID MODEL
    GET_LBEZNR(T100.LBEZNR, $langId) AS MANUFACTURER,  -- NAME MANUFACTURER
    GET_LBEZNR_BIS(T110.LBEZNR, $langId) AS MODEL,  -- NAME MODEL
    T110.BJVON, -- MODEL PRODUCTING FROM YEAR+MONTH
    IFNULL(T110.BJBIS, 'to now') AS `BJBIS`, -- MODEL PRODUCTING TO YEAR+MONTH
    T110.PKW, -- 0/1 MARK THAT MODEL IS PASSANGER CARS OR MOTORCYCLES
    T110.NKW, -- 0/1 MARK THAT MODEL IS TRUCK AND COMMERCIAL CARS
    T110.TRANSPORTER, -- 0/1 MARK THAT MODEL IS LIGHT COMMERCIAL VEHICLE
    T110.ACHSE -- 0/1 MARK THAT MODEL IS AXLE
FROM `110` AS T110
    JOIN `100` AS T100 ON T100.HERNR = T110.HERNR
WHERE 1 
    AND T110.KMODNR = $id
    AND (CASE
            WHEN 0 = 0 OR LENGTH(0) <> 4 THEN 1					
            WHEN T110.BJVON <= CAST(CONCAT(0,'01') AS UNSIGNED) AND IFNULL(T110.BJBIS, CAST(CONCAT(YEAR(NOW()),'12') AS UNSIGNED)) >= CAST(CONCAT(@NEEDYEAR,'01') AS UNSIGNED) THEN 1
            ELSE 0
        END) = 1
ORDER BY T110.SORTNR;
SQL;