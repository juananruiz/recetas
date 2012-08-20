<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_azar.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Alta de nuevas menus en la base de datos
//---------------------------------------------------------------------------------------------------

global $smarty;
global $plantilla;
global $usuario;

if (is_object($usuario))
{
  $etiqueta_receta = new etiqueta_receta();
  $primeros = $etiqueta_receta->Find_recetas("id_etiqueta = 20");
  $segundos = $etiqueta_receta->Find_recetas("id_etiqueta = 21");
  $entrantes = $etiqueta_receta->Find_recetas("id_etiqueta = 19");
  $unicos = $etiqueta_receta->Find_recetas("id_etiqueta = 101");
  
  $total_primeros = count($primeros) - 1;
  $total_segundos = count($segundos) - 1;

  $lunes = array();
  $lunes[] = $primeros[rand(0,$total_primeros)];
  $lunes[] = $segundos[rand(0,$total_segundos)];
  
  $martes = array();
  $martes[] = $primeros[rand(0,$total_primeros)];
  $martes[] = $segundos[rand(0,$total_segundos)];
  
  $miercoles = array();
  $miercoles[] = $primeros[rand(0,$total_primeros)];
  $miercoles[] = $segundos[rand(0,$total_segundos)];
  
  $jueves = array();
  $jueves[] = $primeros[rand(0,$total_primeros)];
  $jueves[] = $segundos[rand(0,$total_segundos)];
  
  $viernes = array();
  $viernes[] = $primeros[rand(0,$total_primeros)];
  $viernes[] = $segundos[rand(0,$total_segundos)];
  
  $sabado = array();
  $sabado[] = $primeros[rand(0,$total_primeros)];
  $sabado[] = $segundos[rand(0,$total_segundos)];
  
  $domingo = array();
  $domingo[] = $primeros[rand(0,$total_primeros)];
  $domingo[] = $segundos[rand(0,$total_segundos)];
  
  $smarty->assign("lunes", $lunes);
  $smarty->assign("martes", $martes);
  $smarty->assign("miercoles", $miercoles);
  $smarty->assign("jueves", $jueves);
  $smarty->assign("viernes", $viernes);
  $smarty->assign("sabado", $sabado);
  $smarty->assign("domingo", $domingo);
  $smarty->assign("_nombre_pagina", "Creando menu");
  $plantilla = "menu_azar.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?page=mi_menu_listar&error=$error");
}
?>

