<?php
include_once __DIR__ . "/../config.php";

function displayError($message)
{
    global $idProduct, $row, $lineCount, $logFile;

    $formattedMessage = sprintf($message . "\n", $idProduct);

    // Écrire dans le fichier log
    error_log($formattedMessage, 3, $logFile);

    // Afficher le message avec un compteur
    echo $row - 1 . "/" . $lineCount . " " . "\033[01;33m" . $formattedMessage . "\033[0m";
}