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
      $plan_menu = array();
      $plan_menu["menu"] = $menu;
      $menu_receta = new menu_receta();
      // Llamamos plato a cada una de las recetas que contiene un menu y esta asociada a un dia y un momento
      if ($platos = $menu_receta->Find("id_menu = $id_menu ORDER by id_dia, id_momento"))
      {
        foreach ($platos as $plato)
        {
          $receta = new receta();
          $receta->load_joined("id = $plato->id_receta");
          $plan_menu["dias"][$plato->id_dia][$plato->id_momento][] = $receta;
        }
      }
      $smarty->assign("plan_menu",$plan_menu);
      // Pasamos información para bautizar a los dias y a los momentos
      $dia = new dia();
      $dias = $dia->Find("1 = 1 ORDER BY id");
      $smarty->assign("lista_dias", $dias);
      $momento = new momento();
      $momentos = $momento->Find("1 = 1 ORDER BY id");
      $smarty->assign("lista_momentos", $momentos);
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

