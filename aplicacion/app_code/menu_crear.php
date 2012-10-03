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
  $recetas = array();
  $etiqueta_receta = new etiqueta_receta();
  $recetas["carne"] = $etiqueta_receta->Find_recetas("id_etiqueta = 1");
  $recetas["pollo"] = $etiqueta_receta->Find_recetas("id_etiqueta = 2");
  $recetas["verdura"] = $etiqueta_receta->Find_recetas("id_etiqueta = 3");
  $recetas["arroz"] = $etiqueta_receta->Find_recetas("id_etiqueta = 4");
  $recetas["legumbre"] = $etiqueta_receta->Find_recetas("id_etiqueta = 5");
  $recetas["fruta"] = $etiqueta_receta->Find_recetas("id_etiqueta = 6");
  $recetas["dulce"] = $etiqueta_receta->Find_recetas("id_etiqueta = 7");
  //$recetas["bebida"] = $etiqueta_receta->Find_recetas("id_etiqueta = 11");
  $recetas["pescado"] = $etiqueta_receta->Find_recetas("id_etiqueta = 100");
  $recetas["ensalada"] = $etiqueta_receta->Find_recetas("id_etiqueta = 103");
  $smarty->assign("recetas", $recetas);

  $dia = new dia();
  $dias = $dia->Find("id > 0 ORDER BY id");
  $smarty->assign("dias", $dias);
  $momento = new momento();
  $momentos = $momento->Find("id > 0 ORDER BY id");
  $smarty->assign("momentos", $momentos);
  $smarty->assign("_nombre_pagina", "Diseña tu menú");
  $plantilla = "menu_crear.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?page=mi_menu_listar&error=$error");
}
?>
