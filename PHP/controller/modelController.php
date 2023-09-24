<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

/**
 * Regroupe les données par modèle de véhicule et identifie les dates de début et de fin de production.
 *
 * @param array $data Les données brutes à regrouper.
 * 
 * @return array Un tableau regroupé par modèle de véhicule avec les dates de début et de fin.
 */
function getModel(array $data): array
{
    global $dbTecDoc;

    $modelId = $data["KMODNR"];
    $pathgetModelsCar = __DIR__ . "/../model/getModelsCar.php";
    $stmtModelCarRawMult = executeQuery($pathgetModelsCar, $dbTecDoc, $modelId);
    $stmtModelCarRaw = $stmtModelCarRawMult[0];

    $stmtModelCarRaw["BJVON"] = formatDateBjvon($stmtModelCarRaw["BJVON"]);
    $stmtModelCarRaw["BJBIS"] = formatDateBjbis($stmtModelCarRaw["BJBIS"]);

    return $stmtModelCarRaw;
}