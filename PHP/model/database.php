<?php
include_once __DIR__ . "/../config.php";

/**
 * Établit une connexion PDO à une base de données en utilisant la configuration fournie.
 * 
 * @param string $dbName Le nom de la base de données à connecter ("MappingBrand" ou "TecDoc").
 * @return PDO|null Instance PDO de la connexion ou null en cas d'erreur.
 */
function connectDatabase($dbName) {
    global $dbMappingConfig, $dbTecDocFullConfig;

    switch ($dbName) {
        case 'MappingBrand':
            $dbConfig = $dbMappingConfig;
            break;
        case 'TecDoc':
            $dbConfig = $dbTecDocFullConfig;
            break;
        default:
            echo "Nom de base de données non reconnu.";
            return null;
    }

    try {
        $dsn = 'mysql:host=' . $dbConfig['host'] . ';port=' . $dbConfig['port'] . ';dbname=' . $dbConfig['name'] . ';charset=utf8';
        return new PDO($dsn, $dbConfig['user'], $dbConfig['password']);
    } catch (PDOException $e) {
        // Handle connection errors (e.g., log the error, send notifications, etc.)
        echo "Error while connecting to the database: " . $e->getMessage();
        return null;
    }
}

$dbMappingBrand = connectDatabase('MappingBrand');
$dbTecDoc = connectDatabase('TecDoc');
