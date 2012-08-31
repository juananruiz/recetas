<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_imprimir.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Genera una versión para imprimir de un menú
//---------------------------------------------------------------------------------------------------

global $smarty;
global $plantilla;
global $usuario;

if (isset($_REQUEST["id_menu"])) 
{
  $id_menu = sanitize($_REQUEST["id_menu"], INT);
  $menu = new menu();
  if ($menu->load("id = $id_menu"))
  {
    $menu_receta = new menu_receta();
    $menus_recetas = $menu_receta->Find_recetas("id_menu = $id_menu order by id_dia, id_momento");
    $smarty->assign("menus_recetas", $menus_recetas);
    $smarty->assign("_nombre_pagina", $menu->nombre_es);
    $plantilla = "menu_imprimir.tpl";
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
