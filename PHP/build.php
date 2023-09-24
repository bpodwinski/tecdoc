<?php
$start_time = microtime(true);

include_once __DIR__ . "/config.php";
include_once __DIR__ . "/model/database.php";
include_once __DIR__ . "/controller/queryController.php";
include_once __DIR__ . "/controller/modelController.php";
include_once __DIR__ . "/controller/manufacturerController.php";
include_once __DIR__ . "/controller/formatDateController.php";
include_once __DIR__ . "/controller/seoUrlController.php";

echo "\033[01;32m//* ******************************************************************* *//\n\033[0m";
echo "\033[01;32m//* *********************** LANCEMENT DU SCRIPT *********************** *//\n\033[0m";
echo "\033[01;32m//* ******************************************************************* *//\n\n\033[0m";

// **************************************** //
// ***** Préparation des fichiers CSV ***** //

// Pour le fichier build_compatibility.csv
if ($build_compatibility === true) {
    $fileCompatibilityBuild = "./var/export/build_compatibility.csv";
    if (!file_exists($fileCompatibilityBuild)) {
        $fpCompatibilityBuild = fopen($fileCompatibilityBuild, 'w');
        fputcsv($fpCompatibilityBuild, array("ID", "Marque", "Famille", "Modèle", "Motorisation"), ";");
    } else {
        $fpCompatibilityBuild = fopen($fileCompatibilityBuild, 'a');
    }
}

// Pour le fichier warning_ref_not_found.csv
$fileRefNotFound = "./var/export/warning_ref_not_found.csv";
if (!file_exists($fileRefNotFound)) {
    $RefNotFound = fopen($fileRefNotFound, 'w');
    fputcsv($RefNotFound, array("id", "référence", "marque"), ";", "\"");
} else {
    $RefNotFound = fopen($fileRefNotFound, 'a');
}

// Pour le fichier warning_brand_not_matched.csv
$fileBrandNotMatched = './var/export/warning_brand_not_matched.csv';
if (!file_exists($fileBrandNotMatched)) {
    $fpBrandNotMatched = fopen($fileBrandNotMatched, 'w');
    fputcsv($fpBrandNotMatched, array("id", "référence", "marque"), ";", "\"");
} else {
    $fpBrandNotMatched = fopen($fileBrandNotMatched, 'a');
}

// ****************************************** //
// ******* Tableau des contructeurs ********* //
$sanitizeManufacturers = sanitizeManufacturersNames();

// ****************************************** //
// ********** Démarrage du script *********** //
if (file_exists($logFile)) {
    unlink($logFile);
}
;

$row = 1;
$flag = true;
$flag2 = true;
if (($handle = fopen($csvPath, "r")) !== FALSE) {
    $lineCount = count(file($csvPath)) - 1;

    while (($data = fgetcsv($handle, 0, ";", "\"")) !== FALSE) {
        if ($flag) {
            $flag = false;
            continue;
        }
        $id = $data[0];
        $reference = $data[1];
        $marque = $data[2];
        $equivTecdocReference = $data[3];
        $equivTecdocMarque = $data[4];

        $row++;
        for ($i = 0; $i < 1; $i++) {

            // Vérifiez si le compteur est un multiple de 1000
            if ($row % 1000 == 0) {
                $elapsed_time = microtime(true) - $start_time;
                $rounded_time = round($elapsed_time);

                // Affichez le temps écoulé
                echo $row - 1 . "/" . $lineCount . " " . "\033[01;32mTemps écoulé depuis le début : $rounded_time secondes\n\033[0m";
            }

            if ($marque == "Valéo") {
                $marque = "VALEO";
            }

            // Vérifie si une marque contient une erreur
            // Minimisez l'utilisation de str_contains : Bien que str_contains soit une fonction rapide, elle est appelée à chaque itération. Si la condition qu'elle vérifie est rare (par exemple, une erreur dans une marque), vous pourriez envisager d'autres approches, comme le filtrage des données en amont.
            if (str_contains($marque, "'")) {
                error_log("\032[01;31mLa marque $marque contient une erreur de caractère sur le produit id $id\n\033[0m", 3, $logFile);
                echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mLa marque $marque contient une erreur de caractère sur le produit id $id\n\033[0m";
                continue;
            }

            $stmtMappingBrand = $dbMappingBrand->prepare("SELECT DLNR, BRAND FROM brands WHERE BRAND='$marque'");
            $stmtMappingBrand->execute();

            while ($rowB = $stmtMappingBrand->fetch()) {
                $dlnr = $rowB['DLNR'];
                $brand = $rowB['BRAND'];
                $artnr = $reference;
                $id = $id;
            }

            // La marque ne match pas avec le catalogue TecDoc
            if ($stmtMappingBrand->rowCount() === 0) {

                // Alors on test avec les équivalences
                $stmtMappingBrand = $dbMappingBrand->prepare("SELECT DLNR, BRAND FROM brands WHERE BRAND='$equivTecdocMarque'");
                $stmtMappingBrand->execute();

                while ($rowC = $stmtMappingBrand->fetch()) {
                    $dlnr = $rowC['DLNR'];
                    $brand = $rowC['BRAND'];
                    $artnr = $equivTecdocReference;
                    $id = $id;
                }

                // La marque ne match pas avec le catalogue TecDoc même avec les équivalences
                if ($stmtMappingBrand->rowCount() === 0) {
                    error_log("La marque $marque est introuvable pour le produit id $id\n", 3, $logFile);
                    echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mLa marque $marque est introuvable pour le produit id $id\n\033[0m";
                    continue;
                }

                // Correspondence trouvée on construit les fichiers
            } else {

                $productMainInfo = executeQuery("./model/getMainInfo.php", $dbTecDoc, $artnr);
                $productsCompatibility = executeQuery("./model/getCompatibility.php", $dbTecDoc, $artnr);
                $productImages = executeQuery("./model/getImages.php", $dbTecDoc, $artnr);
                $productKtype = executeQuery("./model/getKtype.php", $dbTecDoc, $artnr);
                $productsCrossRef = executeQuery("./model/getCrossRef.php", $dbTecDoc, $artnr);
                $productCryteries = executeQuery("./model/getCryteries.php", $dbTecDoc, $artnr);
                $productCaractBrand = executeQuery("./model/getCaractBrand.php", $dbTecDoc, $artnr);

                $productCaractBrand = str_replace("VW", "VOLKSWAGEN", implode(" ", $productCaractBrand[0]));

                if (empty($productMainInfo[0])) {
                    error_log("Correspondance introuvable dans TecDoc pour le produit id $id\n", 3, $logFile);
                    echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mCorrespondance introuvable dans TecDoc pour le produit id $id\n\033[0m";
                    continue;
                }

                if (!empty($productCryteries)) {
                    $productCryteriesHtml = <<<HTML
                        <p>
                        HTML;

                    foreach ($productCryteries as $key => $productCompatibility) {
                        if (is_array($productCompatibility)) {
                            foreach ($productCompatibility as $key => $productCompatibility) {
                                $productCryteriesHtml .= <<<HTML
                                    $productCompatibility<br>
                                    HTML;
                            }
                        }
                    }

                    $productCryteriesHtml .= <<<HTML
                        </p>
                        HTML;

                    $productCryteriesHtml = substr_replace($productCryteriesHtml, "", -8, 4);
                } else {
                    $productCryteriesHtml = "";
                }

                $productCrossRefHtml = <<<HTML
                    <div class="cross_ref">
                    <h4>Références équivalentes</h4>
                    <ul>
                    HTML;
                foreach ($productsCrossRef as $productCrossRef) {
                    $productCrossRefBrand = $productCrossRef["CROSS_BRAND"];
                    $productCrossRefArtnr = $productCrossRef["CROSS_ARTNR"];
                    $productCrossRefHtml .= <<<HTML
                        <li><h5>$productCrossRefBrand</h5> $productCrossRefArtnr</li>
                        HTML;
                }
                $productCrossRefHtml .= <<<HTML
                    </ul>
                    </div>
                    HTML;

                $productCompatibilityHtml = <<<HTML
                    <div class="compatability_vehicule">
                    <h4>Compatible avec les véhicules</h4>
                    <ul>
                    HTML;

                foreach ($productsCompatibility as $productCompatibility) {
                    $productCompatibilityManufacturerId = $productCompatibility["HERNR"];
                    $productCompatibilityManufacturerName = $productCompatibility["MANUFACTURER"];
                    $productCompatibilityModel = $productCompatibility["MODEL"];
                    $productCompatibilityFamille = explode(" ", $productCompatibility["MODEL"]);
                    $productCompatibilityBjvon = formatDateBjvon($productCompatibility["BJVON"]);
                    $productCompatibilityBjbis = formatDateBjbis($productCompatibility["BJBIS"]);
                    $productCompatibilityPs = $productCompatibility["PS"];
                    $productCompatibilityCcm = $productCompatibility["CCM"];

                    $sanitizeManufacturer = [];
                    foreach ($sanitizeManufacturers as $manufacturer) {

                        $manufacturerId = $manufacturer["HERNR"];

                        if ($manufacturerId == $productCompatibilityManufacturerId) {
                            $sanitizeManufacturer = $manufacturer;
                        }
                    }

                    $productCompatibilityHtml .= <<<HTML
                        <li>$productCompatibilityManufacturerName $productCompatibilityModel ($productCompatibilityBjvon à $productCompatibilityBjbis, $productCompatibilityPs ch, $productCompatibilityCcm cm3)</li>
                        HTML;

                    if ($build_compatibility === true) {
                        $modelCar = getModel($productCompatibility);
                        $compatibility = [];
                        $compatibility["ID"] = $id;
                        $compatibility["Marque"] = $sanitizeManufacturer["NAME"];
                        $compatibility["Famille"] = $productCompatibilityFamille[0];
                        $compatibility["Modèle"] = str_replace("_", "", $modelCar["MODEL"]) . " (" . $modelCar["BJVON"] . " à " . $modelCar["BJBIS"] . ")";
                        $compatibility["Motorisation"] = $productCompatibility[("ENGINETYPE")] . " " . $productCompatibility[("TYPE")] . " (" . $productCompatibility[("KW")] . " kw, " . $productCompatibility[("PS")] . " cv)" . " (" . $productCompatibilityBjvon . " à " . $productCompatibilityBjbis . ")";
                        fputcsv($fpCompatibilityBuild, $compatibility, ";");
                    }
                }

                $productCompatibilityHtml .= <<<HTML
                    </ul>
                    </div>
                    HTML;

                // ******************************************* //
                // ***** DEBUT - Construction du fichier ***** //
                $result = [];
                $result[0]["id"] = $id;
                $result[0]["reference"] = $reference;
                $result[0]["marque"] = $marque;
                $result[0]["equivTecdocReference"] = $equivTecdocReference;
                $result[0]["equivTecdocMarque"] = $equivTecdocMarque;
                $result[0]["marqueTecDoc"] = $brand;
                $result[0]["reference2"] = $productMainInfo[0]["reference"];
                $result[0]["reference_courte"] = $productMainInfo[0]["reference_courte"];
                $result[0]["ean13"] = $productMainInfo[0]["ean13"];
                $result[0]["caract_marque"] = $productCaractBrand;
                $result[0]["nom"] = substr($productMainInfo[0]["nom"] . " pour " . ucfirst(strtolower($result[0]["caract_marque"])), 0, $limitNom);
                $result[0]["url"] = seoUrl($result[0]["nom"], $limitUrl);
                $result[0]["standard_group"] = $productMainInfo[0]["STANDARD_GROUP"];
                $result[0]["assembly_group"] = $productMainInfo[0]["ASSEMBLY_GROUP"];
                $result[0]["purpose_group"] = $productMainInfo[0]["PURPOSE_GROUP"];
                $result[0]["images"] = $productImages[0]["images"];
                $result[0]["ktype"] = $productKtype[0]["ktype"];
                $result[0]["description_courte"] = $productCryteriesHtml;
                $result[0]["description_longue"] = preg_replace("# {2,}#", " ", preg_replace("#(\r\n|\n\r|\n|\r)#", " ", $productCrossRefHtml . $productCompatibilityHtml));
                $result[0]["tva"] = $tva;
                $result[0]["stock_avance"] = $stock_avance;
                $result[0]["message_si_stock"] = $message_si_stock;
                $result[0]["message_si_hors_stock"] = $message_si_hors_stock;

                $k = 0;
                foreach ($data as $key => $item) {
                    if ($k++ < 5) {
                        $final[0] = array_merge($result[0], $data);
                        continue;
                    } else {
                        $final[0] = array_merge($result[0], $data);
                    }
                }

                // Création des noms des colonnes au fichier CSV
                if ($flag2) {
                    $fpProductsBuild = fopen("./var/export/build_products.csv", "w");
                    foreach ($result as $firstRow) {
                        $keys = array_keys($firstRow);
                        fputcsv($fpProductsBuild, $keys, ";", "\"");
                    }
                    $flag2 = false;
                }

                // Enregistrement des données dans le fichier CSV
                echo $row - 1 . "/" . $lineCount . " " . "\033[01;36mCorrespondance trouvée pour la référence " . $result[0]["reference"] . " de marque " . $result[0]["marque"] . "\n\033[0m";
                foreach ($final as $row2) {
                    fputcsv($fpProductsBuild, $row2, ";", "\"");
                }
                // ****** FIN - Construction du fichier ****** //
                // ******************************************* //
            }
        }
    }
    fclose($handle);
    echo "\033[01;32m\n//* ******************************************************************* *//\n\033[0m";
    echo "\033[01;32m//* ************************** FIN DU SCRIPT ************************** *//\n\033[0m";
    echo "\033[01;32m Temps total écoulé : $rounded_time secondes\033[0m";
}