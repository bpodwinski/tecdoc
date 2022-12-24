<?php

    // SQL for db: tecdoc_mapping_brand
    $DbMappingBrandHost = "192.168.0.190";
    $DbMappingBrandPort = "3307";
    $DbMappingBrandName = "tecdoc_mapping_brand";
    $DbMappingBrandUser = "root";
    $DbMappingBrandPassword = "824688Ygg";

    // SQL for db: tecdoc_full
    $DbTecDocFullHost = "192.168.0.190";
    $DbTecDocFullPort = "3307";
    $DbTecDocFullName = "tecdoc_full";
    $DbTecDocFullUser = "root";
    $DbTecDocFullPassword = "824688Ygg";

    // Global config
    $langId = 6;
    $csvPath = "./import/opa.csv";
    $pathToImage = "http://rzrb9611.odns.fr/img/";
    $pathToPdf = "http://rzrb9611.odns.fr/pdf/";
    $limitNom = 128;
    $limitUrl = 128;

    echo "\033[01;32m//* ******************************************************************* *//\n\033[0m";
    echo "\033[01;32m//* *********************** LANCEMENT DU SCRIPT *********************** *//\n\033[0m";
    echo "\033[01;32m//* ******************************************************************* *//\n\n\033[0m";

    // Init
    $logFile = "opa_builder.log";
    $brand = "";
    $dlnr = "";
    $reference = "";

    // ****************************************** //
    // ************** SQL connect *************** //
    try {
        $DbMapping = new PDO(
            'mysql:host='.$DbMappingBrandHost.';port='.$DbMappingBrandPort.';dbname='.$DbMappingBrandName.';charset=utf8',
            $DbMappingBrandUser,
            $DbMappingBrandPassword
        );

        $DbTecDocFull = new PDO(
            'mysql:host='.$DbTecDocFullHost.';port='.$DbTecDocFullPort.';dbname='.$DbTecDocFullName.';charset=utf8',
            $DbTecDocFullUser,
            $DbTecDocFullPassword
        );
    } catch (Exception $error) {
        die("Erreur : " . $error->getMessage());
    };

    function generateSeoURL($string, $limit = 0) {
        $separator = "-";

        if ($limit != 0) {
            $string = substr($string, 0, $limit);
        }
     
        $quoteSeparator = preg_quote($separator, '#');

        $search  = array('À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ò', 'Ó', 'Ô', 'Õ', 'Ö', 'Ù', 'Ú', 'Û', 'Ü', 'Ý', 'à', 'á', 'â', 'ã', 'ä', 'å', 'ç', 'è', 'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï', 'ð', 'ò', 'ó', 'ô', 'õ', 'ö', 'ù', 'ú', 'û', 'ü', 'ý', 'ÿ');
        $replace = array('A', 'A', 'A', 'A', 'A', 'A', 'C', 'E', 'E', 'E', 'E', 'I', 'I', 'I', 'I', 'O', 'O', 'O', 'O', 'O', 'U', 'U', 'U', 'U', 'Y', 'a', 'a', 'a', 'a', 'a', 'a', 'c', 'e', 'e', 'e', 'e', 'i', 'i', 'i', 'i', 'o', 'o', 'o', 'o', 'o', 'o', 'u', 'u', 'u', 'u', 'y', 'y');

        $string = str_replace($search, $replace, $string);
     
        $trans = array( 
            "&.+?;" => "", 
            "[^\w\d _-]" => "", 
            "\s+" => $separator, 
            "(".$quoteSeparator.")+"=> $separator 
        ); 
     
        $string = strip_tags($string); 
        foreach ($trans as $key => $val){ 
            $string = preg_replace('#'.$key.'#iu', $val, $string); 
        } 
     
        $string = strtolower($string); 
     
        return trim(trim($string, $separator)); 
    }

    // ****************************************** //
    // ***** Préparation des fichiers CSV ******* //
    $fpCompatibilityBuild = fopen("./export/compatibility_build.csv", 'w');
    fputcsv($fpCompatibilityBuild, array("ID", "Marque", "Modèle", "Motorisation"), ";");

    $RefNotFound = fopen("./export/ref_not_found.csv", 'w');
    fputcsv($RefNotFound, array("id", "référence", "marque"), ";", "\"");

    $fpBrandNotMatched = fopen('./export/brand_not_matched.csv', 'w');
    fputcsv($fpBrandNotMatched, array("id", "référence", "marque"), ";", "\"");

    // ****************************************** //
    // ********** Démarrage du script *********** //
    if (file_exists($logFile)) {
        unlink($logFile);
    };
    
    $row = 1;
    $flag = true;
    $flag2 = true;
    if (($handle = fopen($csvPath, "r")) !== FALSE) {
        $lineCount = count(file($csvPath)) - 1;

        while (($data = fgetcsv($handle, 0, ";", "\"")) !== FALSE) {
            if ($flag) {$flag = false; continue;}
            $id = $data[0];
            $reference = $data[1];
            $marque = $data[2];
            $equivTecdocReference = $data[3];
            $equivTecdocMarque = $data[4];

            $row++;
            for ($i = 0; $i < 1; $i++) {

                // Vérifie si une marque contient un erreur
                if (str_contains($marque, "'")) {
                    error_log("\033[01;31mLa marque $marque contient une erreur de caractère sur le produit id $id\n\033[0m", 3, $logFile);
                    echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mLa marque $marque contient une erreur de caractère sur le produit id $id\n\033[0m";
                    continue;
                }

                $stmtMapping = $DbMapping->prepare("SELECT DLNR, BRAND FROM brands WHERE BRAND='$marque'");
                $stmtMapping->execute();

                while ($rowB = $stmtMapping->fetch()) {
                    $dlnr = $rowB['DLNR'];
                    $brand = $rowB['BRAND'];
                    $artnr = $reference;
                    $id = $id;
                }

                // La marque ne match pas avec le catalogue TecDoc
                if ($stmtMapping->rowCount() === 0) {

                    // Alors on test avec les équivalences
                    $stmtMapping = $DbMapping->prepare("SELECT DLNR, BRAND FROM brands WHERE BRAND='$equivTecdocMarque'");
                    $stmtMapping->execute();

                    while ($rowC = $stmtMapping->fetch()) {
                        $dlnr = $rowC['DLNR'];
                        $brand = $rowC['BRAND'];
                        $artnr = $equivTecdocReference;
                        $id = $id;
                    }

                    // La marque ne match pas avec le catalogue TecDoc même avec les équivalences
                    if ($stmtMapping->rowCount() === 0) {
                        error_log("La marque $marque est introuvable pour le produit id $id\n", 3, $logFile);
                        echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mLa marque $marque est introuvable pour le produit id $id\n\033[0m";
                        continue;
                    }

                } else {
                    // ****************************************** //
                    // ************ DEBUT - Main Info *********** //
                    include "./SQL/getMainInfo.php";
                    $stmtMainInfo = $DbTecDocFull->prepare($getMainInfo);
                    $stmtMainInfo->execute();
                    $getMainInfo = $stmtMainInfo->fetchAll(PDO::FETCH_ASSOC);

                    if (empty($getMainInfo[0])) {
                        error_log("Correspondance introuvable dans TecDoc pour le produit id $id\n", 3, $logFile);
                        echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mCorrespondance introuvable dans TecDoc pour le produit id $id\n\033[0m";
                        continue;
                    }

                    // ****************************************** //
                    // ************ DEBUT - Cryteries *********** //
                    include "./SQL/getCryteries.php";
                    $stmtCryteries = $DbTecDocFull->prepare($getCryteriesProduct);
                    $stmtCryteries->execute();
                    $getCryteries = $stmtCryteries->fetchAll(PDO::FETCH_ASSOC);

                    if(!empty($getCryteries)) {
                        $getCryteriesResult = <<<HTML
                        <p>
                        HTML;
    
                        foreach ($getCryteries as $key => $value) {
                            if (is_array($value)) {
                                foreach ($value as $key => $value) {
                                    $getCryteriesResult.= <<<HTML
                                    $value<br>
                                    HTML;
                                }
                            }
                        }
    
                        $getCryteriesResult.= <<<HTML
                        </p>
                        HTML;
    
                        $getCryteriesResult = substr_replace($getCryteriesResult, "", -8, 4);
                    } else {
                        $getCryteriesResult = "";
                    }

                    // ****************************************** //
                    // ************* DEBUT - Images ************* //
                    include "./SQL/getImages.php";
                    $stmtImages = $DbTecDocFull->prepare($getImages);
                    $stmtImages->execute();
                    $getImages = $stmtImages->fetchAll(PDO::FETCH_ASSOC);

                    // ****************************************** //
                    // ************** DEBUT - Ktype ************* //
                    include "./SQL/getKtype.php";
                    $stmtKtype = $DbTecDocFull->prepare($getKtype);
                    $stmtKtype->execute();
                    $getKtype = $stmtKtype->fetchAll(PDO::FETCH_ASSOC);

                    // ****************************************** //
                    // ********** DEBUT - Carac Marque ********** //
                    include "./SQL/getCaractBrand.php";
                    $stmtCaractBrand = $DbTecDocFull->prepare($getCaractBrand);
                    $stmtCaractBrand->execute();
                    $rowsCaractBrandRaw = $stmtCaractBrand->fetchAll(PDO::FETCH_ASSOC);
                    $getCaractBrandString = implode(" ", $rowsCaractBrandRaw[0]);
                    $getCaractBrand = str_replace("VW", "VOLKSWAGEN", $getCaractBrandString);

                    // ****************************************** //
                    // ************ DEBUT - Cross ref *********** //
                    include "./SQL/getCrossRef.php";
                    $stmtCrossRef = $DbTecDocFull->prepare($getCrossRefAftermarket);
                    $stmtCrossRef->execute();
                    $rowsCrossRefRaw = $stmtCrossRef->fetchAll(PDO::FETCH_ASSOC);

                    $getCrossRef = <<<HTML
                    <div class="cross_ref">
                    <h4>Références équivalentes</h4>
                    <ul>
                    HTML;
                    foreach ($rowsCrossRefRaw as $value) {
                        $CrossRefBrand = $value["CROSS_BRAND"];
                        $CrossRefArtnr = $value["CROSS_ARTNR"];
                        $getCrossRef.= <<<HTML
                        <li><h5>$CrossRefBrand</h5> $CrossRefArtnr</li>
                        HTML;
                    }
                    $getCrossRef.= <<<HTML
                    </ul>
                    </div>
                    HTML;

                    // ****************************************** //
                    // ***** DEBUT - Compatibilité véhicule ***** //
                    include "./SQL/getCompatibility.php";
                    $stmtCompatibility = $DbTecDocFull->prepare($getCompatibility);
                    $stmtCompatibility->execute();
                    $rowsCompatibilityRaw = $stmtCompatibility->fetchAll(PDO::FETCH_ASSOC);

                    $getCompatibility = <<<HTML
                    <div class="compatability_vehicule">
                    <h4>Compatible avec les véhicules</h4>
                    <ul>
                    HTML;

                    foreach ($rowsCompatibilityRaw as $value) {
                        $rowsCompatibilityManufacturer = $value["MANUFACTURER"];
                        $rowsCompatibilityModel = $value["MODEL"];
                        $rowsCompatibilityBjvon = DateTime::createFromFormat("Ym", $value["BJVON"])->format("m/Y");
                        if (str_contains($value["BJBIS"], "to now")) {
                            $rowsCompatibilityBjbis = "aujourd'hui";
                        } else {
                            $rowsCompatibilityBjbis = DateTime::createFromFormat("Ym", $value["BJBIS"])->format("m/Y");
                        }
                        $rowsCompatibilitPs = $value["PS"];
                        $rowsCompatibilityCcm = $value["CCM"];
                        $getCompatibility.= <<<HTML
                        <li>$rowsCompatibilityManufacturer $rowsCompatibilityModel ($rowsCompatibilityBjvon à $rowsCompatibilityBjbis, $rowsCompatibilitPs ch, $rowsCompatibilityCcm cm3)</li>
                        HTML;

                        $compatibility = [];
                        $compatibility["ID"] = $id;
                        $compatibility["Marque"] = $rowsCompatibilityManufacturer;
                        $compatibility["Modèle"] = $rowsCompatibilityModel . " (" .$rowsCompatibilityBjvon . " à " . $rowsCompatibilityBjbis . ")";
                        $compatibility["Motorisation"] = $value[("TYPE")] . " - " . "(" . $value[("PS")] . "ch) " . "(" .$rowsCompatibilityBjvon . " à " . $rowsCompatibilityBjbis . ")";
                        fputcsv($fpCompatibilityBuild, $compatibility, ";");
                    }

                    $getCompatibility.= <<<HTML
                    </ul>
                    </div>
                    HTML;

                    // ******************************************* //
                    // ************** DEBUT - Ktype ************** //
/*                     foreach ($rowsCompatibilityRaw as $value) {
                        $compatibility = [];
                        $compatibility["ID"] = $id;
                        $compatibility["Marque"] = $value[("MANUFACTURER")];
                        $compatibility["Modèle"] = $value[("MODEL")];
                        $compatibility["Motorisation"] = $value[("TYPE")] . " - " . $value[("PS")] . "ch";
                        fputcsv($fpCompatibilityBuild, $compatibility, ";");
                    } */

                    // ******************************************* //
                    // ***** DEBUT - Construction du fichier ***** //
                    $result = [];
                    $result[0]["id"] = $id;
                    $result[0]["reference"] = $reference;
                    $result[0]["marque"] = $marque;
                    $result[0]["equivTecdocReference"] = $equivTecdocReference;
                    $result[0]["equivTecdocMarque"] = $equivTecdocMarque;
                    $result[0]["marqueTecDoc"] = $brand;
                    $result[0]["reference2"] = $getMainInfo[0]["reference"];
                    $result[0]["reference_courte"] = $getMainInfo[0]["reference_courte"];
                    $result[0]["ean13"] = $getMainInfo[0]["ean13"];
                    $result[0]["caract_marque"] = $getCaractBrand;
                    $result[0]["nom"] = substr($getMainInfo[0]["nom"] . " pour " . ucfirst(strtolower($result[0]["caract_marque"])), 0, $limitNom);
                    $result[0]["url"] = generateSeoURL($result[0]["nom"], $limitUrl);
                    $result[0]["standard_group"] = $getMainInfo[0]["STANDARD_GROUP"];
                    $result[0]["assembly_group"] = $getMainInfo[0]["ASSEMBLY_GROUP"];
                    $result[0]["purpose_group"] = $getMainInfo[0]["PURPOSE_GROUP"];
                    $result[0]["images"] = $getImages[0]["images"];
                    $result[0]["ktype"] = $getKtype[0]["ktype"];
                    $result[0]["description_courte"] = $getCryteriesResult;
                    $result[0]["description_longue"] = preg_replace("# {2,}#"," ",preg_replace("#(\r\n|\n\r|\n|\r)#"," ",$getCrossRef . $getCompatibility));
                    $result[0]["tva"] = "20";
                    $result[0]["stock_avance"] = "2";
                    $result[0]["message_si_stock"] = "En stock";
                    $result[0]["message_si_hors_stock"] = "Livraison entre 2 à 4 jours";
                    //print_r($data);die;
                    //print_r($result);die;

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
                        $fpProductsBuild = fopen("./export/products_build.csv", "w");
                        foreach ($result as $firstRow) {
                            $keys = array_keys($firstRow);
                            fputcsv($fpProductsBuild, $keys, ";", "\"");
                        }
                        $flag2 = false;
                    }

                    // Enregistrement des données dans le fichier CSV
                    echo $row - 1 . "/" . $lineCount . " " . "\033[01;36mCorrespondance trouvée pour la référence " .$result[0]["reference"]. " de marque " .$result[0]["marque"]. "\n\033[0m";
                    //print_r($final);die;
                    foreach ($final as $row2) {
                        //print_r($row2);die;
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
        echo "\033[01;32m//* ******************************************************************* *//\n\033[0m";
    }
