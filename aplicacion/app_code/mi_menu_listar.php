<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: mi_menu_listar.php
//---------------------------------------------------------------------------------------------------
// Lista los menús relacionados con el usuario actual
//---------------------------------------------------------------------------------------------------
global $smarty;
global $plantilla;
global $usuario;


$menu = new menu();
$menus = $menu->Find("id_usuario = $usuario->id");
$smarty->assign("menus", $menus);

$smarty->assign("_nombre_pagina", "Mis Menús");
$plantilla = "mi_menu_listar.tpl";
?>
