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

if (isset($_REQUEST["criterio"]))
{
  $criterio = sanitize($_REQUEST["criterio"], SQL);
}
else
{
  $criterio = "1 = 1";
}

$receta = new receta();
$recetas = $receta->Find($criterio);
$smarty->assign("recetas", $recetas);

$smarty->assign("_nombre_pagina", "Recetario");
$plantilla = "receta_listar.tpl";
?>
