<?php

$dbMappingConfig = [
    'host' => "127.0.0.1",
    'port' => 3307,
    'name' => "tecdoc_mapping_brand",
    'user' => "root",
    'password' => "***"
];

$dbTecDocFullConfig = [
    'host' => "127.0.0.1",
    'port' => 3307,
    'name' => "tecdoc_full",
    'user' => "root",
    'password' => "***"
];

// Global config
$langId = 6;
$csvPath = "./var/import/first-equiv.csv";
$pathToImage = "http://***/img/";
$pathToPdf = "http://***/pdf/";
$limitNom = 128;
$limitUrl = 128;
$tva = 20;
$stock_avance = 2;
$message_si_stock = "En stock";
$message_si_hors_stock = "Livraison entre 2 à 4 jours";

// Init
$logFile = "./var/error.log";
$brand = "";
$dlnr = "";
$reference = "";

// Files
$build_compatibility = true;
