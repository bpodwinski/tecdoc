-- INFO ABOUT PRODUCT ARE POSSIBLE SHOW ONLY FOR PRODUCTS FROM MAIN TABLE `200`
-- ELSE NEED SEARCH ANALOG FROM MAIN TABLE AND THEN CAN SUBSTITUTE NECESSARY INFO FOR CROSSREFERENCE PRODUCT
SET @SPRACHNR = 6;  -- SELECTED ID LANG (ENGLISH)
SET @DLNR = 6355;

SELECT
    T.référence AS `référence`,
    GROUP_CONCAT(T.ktype ORDER BY T.ktype SEPARATOR ',') AS `ktype`
FROM (
    SELECT
        T400.ARTNR AS `référence`,
        T120.KTYPNR AS `ktype`
    FROM `200_fixed` AS P
        JOIN `400` AS T400 ON T400.ARTNR = P.ARTNR AND T400.DLNR = P.DLNR AND T400.VKNZIELART = 2
        JOIN `120` AS T120 ON T120.KTYPNR = T400.VKNZIELNR
        JOIN `110` AS T110 ON T110.KMODNR = T120.KMODNR
        JOIN `100` AS T100 ON T100.HERNR = T110.HERNR
    WHERE P.DLNR = @DLNR
    ) AS T
GROUP BY `référence`
ORDER BY `référence`;
