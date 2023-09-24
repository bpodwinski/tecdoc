<?php
include_once __DIR__ . "/../config.php";
include_once __DIR__ . "/../model/database.php";

/**
 * Exécute une requête SQL à partir d'un fichier modèle et renvoie les résultats.
 *
 * Cette fonction inclut un fichier modèle contenant une requête SQL, prépare
 * cette requête à l'aide de la connexion à la base de données fournie et l'exécute.
 * Si la requête a des résultats, ceux-ci sont renvoyés sous forme de tableau associatif.
 *
 * @param string $modelPath     Chemin d'accès au fichier modèle contenant la requête SQL.
 * @param PDO    $dbConnection  Connexion à la base de données pour exécuter la requête.
 * @param int|null $id          Identifiant (id pièce tecdoc, id marque auto) optionnel à utiliser dans la requête (non utilisé dans la version actuelle).
 * 
 * @return array                Résultats de la requête sous forme de tableau associatif.
 * 
 * @throws PDOException         En cas d'erreur lors de la préparation ou de l'exécution de la requête.
 */
function executeQuery($modelPath, $dbConnection, $id = null) {
    include $modelPath;
    
    $stmt = $dbConnection->prepare($query);
    $stmt->execute();
    
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
