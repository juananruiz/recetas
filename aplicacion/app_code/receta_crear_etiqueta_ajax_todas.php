<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: receta_crear.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Alta de nuevas recetas en la base de datos
//---------------------------------------------------------------------------------------------------

global $smarty;
global $plantilla;
global $usuario;


if (is_object($usuario))
{
  $familia_etiqueta = new familia_etiqueta();
  $familias = $familia_etiqueta->find_joined();
  $smarty->assign("familias", $familias);
//print_r($familias);
  $plantilla = "receta_crear_etiqueta_ajax_todas.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para proponer nuevas recetas";
}
?>
