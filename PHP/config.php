<?php

$dbMappingConfig = [
    'host' => "192.168.1.101",
    'port' => 3307,
    'name' => "tecdoc_mapping_brand",
    'user' => "root",
    'password' => "824688Ygg"
];

$dbTecDocFullConfig = [
    'host' => "192.168.1.101",
    'port' => 3307,
    'name' => "tecdoc_full",
    'user' => "root",
    'password' => "824688Ygg"
];

// Global config
$langId = 6;
$csvPath = "./var/import/bf-first-equiv.csv";
$pathToImage = "http://rzrb9611.odns.fr/img/";
$pathToPdf = "http://rzrb9611.odns.fr/pdf/";
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