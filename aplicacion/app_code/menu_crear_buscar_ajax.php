<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_crear_buscar_ajax.php
//---------------------------------------------------------------------------------------------------
// Descripcion: controlador ajax para buscar recetas de manera interactiva en la base de datos
//---------------------------------------------------------------------------------------------------

global $smarty;
global $plantilla;

$busqueda = sanitize($_GET["busqueda"],SQL);

$receta = new receta();
$recetas = $receta->Find("nombre_es LIKE '% $busqueda%' OR nombre_es LIKE '$busqueda%'");
$smarty->assign("recetas", $recetas);

$plantilla = "menu_crear_buscar_ajax.tpl";
?>
