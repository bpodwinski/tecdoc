<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

/**
 * Regroupe les fabricants de voitures similaires dans un tableau en se basant sur les préfixes.
 *
 * Cette fonction trie le tableau d'entrée et regroupe les fabricants de voitures ayant 
 * des préfixes similaires. Par exemple, si le tableau contient "DONGFENG XIAOKANG" et 
 * "DONGFENG FUKANG", la fonction renverra un tableau avec une seule entrée "DONGFENG".
 *
 * @param array $array  Tableau contenant les noms des fabricants de voitures.
 * 
 * @return array        Tableau regroupé contenant les fabricants de voitures sans doublons basés sur les préfixes.
 */
function sanitizeManufacturersNames()
{

    global $dbTecDoc;

    $pathManufacturersModel = __DIR__ . "/../model/getManufacturers.php";
    $manufacturers = executeQuery($pathManufacturersModel, $dbTecDoc);

    foreach ($manufacturers as $key => $value) {
        // Get the name
        $name = $value['NAME'];

        // Look for the presence of '(' and ')'
        $openPos = strpos($name, '(');
        $closePos = strpos($name, ')');

        if ($openPos !== false && $closePos !== false) {
            $name = trim(substr($name, 0, $openPos)); // Also trim to remove trailing spaces
        }

        if ($name == "VW") {
            $name = str_replace("VW", "VOLKSWAGEN", $name);
        }

        $ford = ["FORD USA", "FORD AFRICA", "FORD AUSTRALIA", "FORD ASIA & OCEANIA", "FORD OTOSAN"];
        if (in_array($name, $ford)) {
            $name = "FORD";
        }

        // Update the name in the array
        $manufacturers[$key]['NAME'] = $name;
    }

    return $manufacturers;
}