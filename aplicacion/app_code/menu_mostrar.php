<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_mostrar.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Recupera y muestra un menu de la base de datos
//---------------------------------------------------------------------------------------------------

global $smarty;
global $plantilla;
global $usuario;

if (is_object($usuario))
{
  if (isset($_REQUEST["id_menu"])) 
  {
    $id_menu = sanitize($_REQUEST["id_menu"], INT);
    $menu = new menu();
    if ($menu->load("id = $id_menu"))
    {
      $menu_receta = new menu_receta();
      $menus_recetas = $menu_receta->Find_recetas("id_menu = $id_menu order by id_dia, id_momento");

      $smarty->assign("menus_recetas", $menus_recetas);
      $smarty->assign("_nombre_pagina", "{$menu->nombre_es}");
      $plantilla = "menu_mostrar.tpl";
    }
    else
    {
      $error = "No existe ningún menú con los datos proporcionados";
      header("location: index.php?page=mi_menu_listar&error=$error");
    }
  }
  else 
  {
    $error = "Faltan parámetros para imprimir el menú";
    header("location: index.php?page=mi_menu_listar&error=$error");
  }
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?error=$error");
}
?>

