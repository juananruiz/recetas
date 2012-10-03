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

$busqueda = sanitize($_GET["busqueda"],SQL);

if (is_object($usuario))
{
  $etiqueta = new etiqueta();
  $etiquetas = $etiqueta->Find("nombre_es LIKE '%$busqueda%'");
  $smarty->assign("etiquetas", $etiquetas);

  $plantilla = "receta_crear_etiqueta_ajax.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para proponer nuevas recetas";
}
?>
