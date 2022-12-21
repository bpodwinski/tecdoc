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
    $csvPath = "./import/ajs.csv";
    $pathToImage = "http://rzrb9611.odns.fr/img/";
    $pathToPdf = "http://rzrb9611.odns.fr/pdf/";

    echo "\033[01;32m//* ******************************************************************* *//\n\033[0m";
    echo "\033[01;32m//* *********************** LANCEMENT DU SCRIPT *********************** *//\n\033[0m";
    echo "\033[01;32m//* ******************************************************************* *//\n\n\033[0m";

    // Init
    $logFile = "opa_builder.log"; 
    $brand = "";
    $dlnr = "";
    $reference = "";

    // SQL connect
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

    // Préparation des fichiers CSV
    $fpCompatibilityBuild = fopen("./export/compatibility_build.csv", 'w');
    fputcsv($fpCompatibilityBuild, array("référence", "ktype", "id", "marque", "Cross référence"), ";", "\"");

    $RefNotFound = fopen("./export/ref_not_found.csv", 'w');
    fputcsv($RefNotFound, array("id", "référence", "marque"), ";", "\"");

    $fpBrandNotMatched = fopen('./export/brand_not_matched.csv', 'w');
    fputcsv($fpBrandNotMatched, array("id", "référence", "marque"), ";", "\"");

    // Démarrage du script
    if (file_exists($logFile)) {
        unlink($logFile);
    };
    
    $row = 1;
    $flag = true;
    if (($handle = fopen($csvPath, "r")) !== FALSE) {
        $lineCount = count(file($csvPath)) - 1;

        while (($data = fgetcsv($handle, 0, ";", "\"")) !== FALSE) {
            if ($flag) {$flag = FALSE; continue;}
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

                    // get Main Info
                    include "./SQL/getMainInfo.php";
                    $stmtMainInfo = $DbTecDocFull->prepare($getMainInfo);
                    $stmtMainInfo->execute();
                    $getMainInfo = $stmtMainInfo->fetchAll(PDO::FETCH_ASSOC);

                    if (empty($getMainInfo[0])) {
                        error_log("Correspondance introuvable dans TecDoc pour le produit id $id\n", 3, $logFile);
                        echo $row - 1 . "/" . $lineCount . " " . "\033[01;33mCorrespondance introuvable dans TecDoc pour le produit id $id\n\033[0m";
                        continue;
                    }

                    // get Images
                    include "./SQL/getImages.php";
                    $stmtImages = $DbTecDocFull->prepare($getImages);
                    $stmtImages->execute();
                    $getImages = $stmtImages->fetchAll(PDO::FETCH_ASSOC);

                    // get Ktype
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
                    <div class="cross_ref"><br/>
                    <h4>Références équivalentes</h4><br/>
                    <ul><br/>
                    HTML;
                    foreach ($rowsCrossRefRaw as $value) {
                        $CrossRefBrand = $value["CROSS_BRAND"];
                        $CrossRefArtnr = $value["CROSS_ARTNR"];
                        $getCrossRef.= <<<HTML
                        <li><h5>$CrossRefBrand</h5> $CrossRefArtnr</li><br/>
                        HTML;
                    }
                    $getCrossRef.= <<<HTML
                    </ul><br/>
                    </div><br/>
                    HTML;

                    // ****************************************** //
                    // ***** DEBUT - Compatibilité véhicule ***** //
                    include "./SQL/getCompatibility.php";
                    $stmtCompatibility = $DbTecDocFull->prepare($getCompatibility);
                    $stmtCompatibility->execute();
                    $rowsCompatibilityRaw = $stmtCompatibility->fetchAll(PDO::FETCH_ASSOC);

                    $getCompatibility = <<<HTML
                    <div class="compatability_vehicule"><br/>
                    <h4>Compatible avec les véhicules</h4><br/>
                    <ul><br/>
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
                        <li>$rowsCompatibilityManufacturer $rowsCompatibilityModel ($rowsCompatibilityBjvon à $rowsCompatibilityBjbis, $rowsCompatibilitPs ch, $rowsCompatibilityCcm cm3)</li><br/>
                        HTML;
                    }

                    $getCompatibility.= <<<HTML
                    </ul><br/>
                    </div><br/>
                    HTML;

                    // ******************************************* //
                    // ************** DEBUT - Ktype ************** //
                    foreach ($rowsCompatibilityRaw as $compatibility) {
                        fputcsv($fpCompatibilityBuild, $compatibility, ";", "\"");
                    }

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
                    $result[0]["nom"] = $getMainInfo[0]["nom"] . " pour " . ucfirst(strtolower($result[0]["caract_marque"]));
                    $result[0]["STANDARD_GROUP"] = $getMainInfo[0]["STANDARD_GROUP"];
                    $result[0]["ASSEMBLY_GROUP"] = $getMainInfo[0]["ASSEMBLY_GROUP"];
                    $result[0]["PURPOSE_GROUP"] = $getMainInfo[0]["PURPOSE_GROUP"];
                    $result[0]["images"] = $getImages[0]["images"];
                    $result[0]["ktype"] = $getKtype[0]["ktype"];
                    $result[0]["description_longue"] = preg_replace("# {2,}#"," ",preg_replace("#(\r\n|\n\r|\n|\r)#"," ",$getCrossRef . $getCompatibility));

                    //print_r($data);die;
                    //print_r($result);die;

                    $k = 0;
                    foreach ($data as $key => $item) {
                        if ($k++ < 5) {
                            continue;
                        }
                        $test[0] = array_merge($result[0], $data);
                    }

                    // Création des noms des colonnes au fichier CSV
                    if ($row == 2) {
                        $fpProductsBuild = fopen("./export/products_build.csv", "w");
                        foreach ($result as $firstRow) {
                            $keys = array_keys($firstRow);
                            fputcsv($fpProductsBuild, $keys, ";", "\"");
                        }
                    }

                    // Enregistrement des données dans le fichier CSV
                    echo $row - 1 . "/" . $lineCount . " " . "\033[01;36mCorrespondance trouvée pour la référence " .$result[0]["reference"]. " de marque " .$result[0]["marque"]. "\n\033[0m";
                    foreach ($test as $row2) {
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
