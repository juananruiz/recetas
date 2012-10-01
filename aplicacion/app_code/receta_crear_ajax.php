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
  $ingrediente = new alimento();
  $ingredientes = $ingrediente->Find("nombre_es_singular LIKE '%$busqueda%'");
  $smarty->assign("ingredientes", $ingredientes);

  $plantilla = "receta_crear_ajax.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para proponer nuevas recetas";
}
?>
