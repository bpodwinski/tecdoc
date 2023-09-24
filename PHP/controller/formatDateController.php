<?php
include_once __DIR__ . "/../config.php";

/**
 * Transforme une date au format "YYYYMM" en "MM/YYYY".
 *
 * Cette fonction prend en entrée une chaîne de caractères représentant une date
 * au format "YYYYMM" (par exemple "202109" pour septembre 2021). Elle renvoie 
 * cette date au format "MM/YYYY".
 *
 * @param string $dateString La date sous forme de chaîne au format "YYYYMM".
 *
 * @return string La date transformée au format "MM/YYYY".
 */
function formatDateBjvon($dateString)
{
    global $logFile;

    if (str_contains($dateString, "to now")) {
        return "aujourd'hui";
    }

    $date = DateTime::createFromFormat("Ym", $dateString);
    if ($date === false) {
        return "aujourd'hui";
        //error_log("Date non valide $dateString\n", 3, $logFile);
        //echo "\033[01;33mDate non valide $dateString\n\033[0m";
    }

    return $date->format("m/Y");
}

/**
 * Transforme une date au format "YYYYMM" en "MM/YYYY".
 *
 * Cette fonction vérifie si la date contient "to now", auquel cas elle retourne "aujourd'hui".
 * Et prend en entrée une chaîne de caractères représentant une date
 * au format "YYYYMM" (par exemple "202109" pour septembre 2021). Elle renvoie 
 * cette date au format "MM/YYYY".
 * 
 * @param string $dateString La date sous forme de chaîne au format "YYYYMM".
 *
 * @return string La date transformée au format "MM/YYYY".
 */
function formatDateBjbis($dateString)
{
    global $logFile;

    if (str_contains($dateString, "to now")) {
        return "aujourd'hui";
    }

    $date = DateTime::createFromFormat("Ym", $dateString);
    if ($date === false) {
        return "aujourd'hui";
        //error_log("Date non valide $dateString\n", 3, $logFile);
        //echo "\033[01;33mDate non valide $dateString\n\033[0m";
    }

    return $date->format("m/Y");
}