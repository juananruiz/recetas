<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: receta_listar.php
//---------------------------------------------------------------------------------------------------
// Lista las recetas existentes en la base de datos
// en función de un criterio de búsqueda
//---------------------------------------------------------------------------------------------------
global $smarty;
global $plantilla;
global $usuario;

$recetas = array();
$etiqueta_receta = new etiqueta_receta();
$recetas["carne"] = $etiqueta_receta->Find_recetas("id_etiqueta = 1");
$recetas["pollo"] = $etiqueta_receta->Find_recetas("id_etiqueta = 2");
$recetas["verdura"] = $etiqueta_receta->Find_recetas("id_etiqueta = 3");
$recetas["arroz"] = $etiqueta_receta->Find_recetas("id_etiqueta = 4");
$recetas["legumbre"] = $etiqueta_receta->Find_recetas("id_etiqueta = 5");
$recetas["fruta"] = $etiqueta_receta->Find_recetas("id_etiqueta = 6");
$recetas["dulce"] = $etiqueta_receta->Find_recetas("id_etiqueta = 7");
$recetas["pescado"] = $etiqueta_receta->Find_recetas("id_etiqueta = 100");
$recetas["ensalada"] = $etiqueta_receta->Find_recetas("id_etiqueta = 103");
//$recetas["bebida"] = $etiqueta_receta->Find_recetas("id_etiqueta = 11");

$smarty->assign("recetas", $recetas);

$receta = new receta();
$nuevas_recetas = $receta->Find("publica = 1 ORDER BY fecha_alta DESC LIMIT 10");
$smarty->assign("nuevas_recetas", $nuevas_recetas);

$smarty->assign("_nombre_pagina", "Libro de Recetas");
$plantilla = "receta_listar.tpl";
?>
