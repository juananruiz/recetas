<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: menu_listar.php
//---------------------------------------------------------------------------------------------------
// Lista los menús relacionados con el usuario actual
//---------------------------------------------------------------------------------------------------
global $smarty;
global $plantilla;
global $usuario;

if (is_object($usuario))
{
  $menu = new menu();
  $menus = $menu->Find("id_usuario = $usuario->id");
  $smarty->assign("menus", $menus);

  $smarty->assign("_nombre_pagina", "Mis Menús");
  $plantilla = "menu_listar.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?error=$error");
}
?>
