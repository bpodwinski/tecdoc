<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

global $langId;
global $dlnr;

$query = <<<SQL
SELECT DISTINCT
    CONCAT(
        IFNULL (GET_BEZNR(T050.BEZNR, $langId), ''),
        ' : ',
        IF (T050.TYP <> 'K', 
            T210.KRITWERT, 
            IFNULL (GET_BEZNR_FOR_KEY_TABLE(T050.TABNR, T210.KRITWERT, $langId), '')
            )
    ) AS VALUE_CRY
FROM `200_fixed` AS P		
    JOIN `200` AS T200 ON T200.ARTNR = P.ARTNR AND T200.DLNR = P.DLNR
    JOIN `210` AS T210 ON T210.ARTNR = T200.ARTNR AND T210.DLNR = T200.DLNR
    JOIN `050` AS T050 ON T050.DLNR IN (T200.DLNR, 9999) AND T050.KRITNR = T210.KRITNR
WHERE P.ARTNR_SHORT = CLEAN_NUMBER('.$id.') AND P.DLNR = $dlnr
ORDER BY T210.SORTNR;
SQL;
