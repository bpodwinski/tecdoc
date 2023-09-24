<?php

/**
 * Génère une URL optimisée pour le SEO à partir d'une chaîne de caractères.
 *
 * Cette fonction prend une chaîne en entrée et retourne une version "SEO-friendly" de cette chaîne.
 * Elle remplace les caractères spéciaux, supprime les tags HTML, 
 * convertit la chaîne en minuscules, et tronque la chaîne si une limite est définie.
 * 
 * @param string $string La chaîne de caractères à transformer.
 * @param int $limit Limite de caractères pour la chaîne de sortie (0 signifie pas de limite).
 * @param string $separator Le séparateur utilisé pour remplacer les espaces et autres caractères non désirés.
 * 
 * @return string L'URL optimisée pour le SEO.
 */
function seoUrl($string, $limit = 0, $separator = "-")
{
    $trans = [
        'À' => 'A',
        'Á' => 'A',
        'Â' => 'A',
        'Ã' => 'A',
        'Ä' => 'A',
        'Å' => 'A',
        'Ç' => 'C',
        'È' => 'E',
        'É' => 'E',
        'Ê' => 'E',
        'Ë' => 'E',
        'Ì' => 'I',
        'Í' => 'I',
        'Î' => 'I',
        'Ï' => 'I',
        'Ò' => 'O',
        'Ó' => 'O',
        'Ô' => 'O',
        'Õ' => 'O',
        'Ö' => 'O',
        'Ù' => 'U',
        'Ú' => 'U',
        'Û' => 'U',
        'Ü' => 'U',
        'Ý' => 'Y',
        'à' => 'a',
        'á' => 'a',
        'â' => 'a',
        'ã' => 'a',
        'ä' => 'a',
        'å' => 'a',
        'ç' => 'c',
        'è' => 'e',
        'é' => 'e',
        'ê' => 'e',
        'ë' => 'e',
        'ì' => 'i',
        'í' => 'i',
        'î' => 'i',
        'ï' => 'i',
        'ð' => 'o',
        'ò' => 'o',
        'ó' => 'o',
        'ô' => 'o',
        'õ' => 'o',
        'ö' => 'o',
        'ù' => 'u',
        'ú' => 'u',
        'û' => 'u',
        'ü' => 'u',
        'ý' => 'y',
        'ÿ' => 'y',
        '&' => '',
        '<' => '',
        '>' => '',
        '"' => '',
        "'" => ''
    ];

    $string = strtr($string, $trans); // Remplacement des caractères
    $string = preg_replace('#[^\w\d _-]+#iu', '', $string); // Suppression des caractères inutiles
    $string = preg_replace('#\s+#iu', $separator, $string); // Remplacement des espaces par le séparateur
    $string = strtolower($string); // Convertir la chaîne en minuscules

    // Si une limite est définie, tronquez la chaîne à cette limite
    if ($limit > 0 && strlen($string) > $limit) {
        $string = substr($string, 0, $limit);
    }

    return trim($string, $separator);
}
