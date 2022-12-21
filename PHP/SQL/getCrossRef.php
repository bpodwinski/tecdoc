<?php

    $getCrossRefAftermarket = <<<SQL
    SELECT DISTINCT
        T.CROSS_BRAND,
        T.CROSS_ARTNR
    FROM (
        SELECT
            GET_LBEZNR(T100.LBEZNR, $langId) AS CROSS_BRAND,
            GROUP_CONCAT(CONCAT('<a href="/fr/module/ambjolisearch/jolisearch?search_query=',T203.REFNR,'">',T203.REFNR,'</a>')
            SEPARATOR ', '
            ) AS CROSS_ARTNR
        FROM `200_fixed` AS P
            JOIN `203` AS T203 ON T203.ARTNR = P.ARTNR AND T203.DLNR = P.DLNR
            JOIN `100` AS T100 ON T100.HERNR = T203.KHERNR
            WHERE P.ARTNR_SHORT = CLEAN_NUMBER('.$artnr.') AND P.DLNR = $dlnr
        GROUP BY CROSS_BRAND
    ) AS T
    SQL;
