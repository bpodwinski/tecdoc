<?php

    $getImages = <<<SQL
    SELECT
        GROUP_CONCAT(
            CONCAT(
                (CASE
                    WHEN IFNULL(T014.EXTENSION, '') = 'PDF' THEN '$pathToPdf'
                    WHEN IFNULL(T014.EXTENSION, '') IN ('BMP','JPG','PNG','GIF') THEN '$pathToImage'
                    ELSE ''
                END), -- URL SERVER WHERE PLACED IMAGES OR PDF
                (CASE
                    WHEN IFNULL(T014.EXTENSION, '') IN ('PDF','BMP','JPG','PNG','GIF') THEN CONCAT(T200.DLNR, '/')
                    ELSE ''
                END), -- FOLDER
                (CASE
                    WHEN IFNULL(T014.EXTENSION, '') IN ('PDF','BMP','JPG','PNG','GIF') THEN T231.BILDNAME
                    ELSE ''
                END), -- NAME FILE
                (CASE
                    WHEN IFNULL(T014.EXTENSION, '') IN ('PDF','BMP','JPG','PNG','GIF') THEN CONCAT('.', T014.EXTENSION)
                    ELSE T231.URL
                END) -- EXTENSION
                )
        SEPARATOR ','
        ) AS `images`
    FROM `200_fixed` AS P
        JOIN `200` AS T200 ON T200.ARTNR = P.ARTNR AND T200.DLNR = P.DLNR
        JOIN `232` AS T232 ON T232.ARTNR = T200.ARTNR AND T232.DLNR = T200.DLNR
        JOIN `231` AS T231 ON T231.BILDNR = T232.BILDNR AND T231.SPRACHNR IN (@SPRACHNR, 255) AND T231.DOKUMENTENART = T232.DOKUMENTENART
        LEFT JOIN `014` AS T014 ON T014.DOKUMENTENART = T232.DOKUMENTENART
    WHERE P.ARTNR_SHORT = CLEAN_NUMBER('.$artnr.') AND P.DLNR = $dlnr
    SQL;

?>
