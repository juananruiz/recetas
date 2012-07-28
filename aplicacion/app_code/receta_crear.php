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
  $ingrediente = new ingrediente();
  $ingredientes = $ingrediente->load("1 = 1");
  $smarty->assign("ingredientes", $ingredientes);

  $smarty->assign("_nombre_pagina", "Creando receta");
  $plantilla = "receta_crear.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para proponer nuevas recetas";
  header("location:index.php?page=receta_listar");
}
?>
