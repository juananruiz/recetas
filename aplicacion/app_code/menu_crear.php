<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_crear.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Alta de nuevas menus en la base de datos
//---------------------------------------------------------------------------------------------------

global $smarty;
global $plantilla;
global $usuario;

if (is_object($usuario))
{
  $receta = new receta();
  $recetas = $receta->Find("1 = 1");
  $smarty->assign("recetas", $recetas);

  $smarty->assign("_nombre_pagina", "Creando menu");
  $plantilla = "menu_crear.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?page=mi_menu_listar&error=$error");
}
?>
