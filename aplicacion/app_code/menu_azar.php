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
  $primeros = $etiqueta_receta->Find_recetas("id_etiqueta = 19");
  $segundos = $etiqueta_receta->Find_recetas("id_etiqueta = 20");
  $entrantes = $etiqueta_receta->Find_recetas("id_etiqueta = 21");
  $unicos = $etiqueta_receta->Find_recetas("id_etiqueta = 101");
  $cenas = $etiqueta_receta->Find_recetas("id_etiqueta = 15");
  
  $total_primeros = count($primeros);
  $total_segundos = count($segundos);
  $total_cenas = count($cenas);

  $dias = array("lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo");
  $momentos = array("almuerzo","cena"); //Este habría que ampliarlo para incluir el número (¿y tipo?) de plato en cada comida
  $recetas = array();
  foreach($dias as $dia)
  {
    foreach($momentos as $momento)
    {
      $recetas[$dia][$momento][] =  $primeros[rand(0,$total_primeros - 1)];
      $recetas[$dia][$momento][] =  $segundos[rand(0,$total_segundos - 1)];
    }
  } 
  
  $reserva =array();
  for ($i = 0; $i < 3; $i++)
  {
    $reserva[] = $primeros[rand(0,$total_primeros - 1)];
    $reserva[] = $segundos[rand(0,$total_segundos - 1)];
    $reserva[] = $cenas[rand(0,$total_cenas - 1)];
  }

  $smarty->assign("recetas", $recetas);
  $smarty->assign("reserva", $reserva);
  $smarty->assign("_nombre_pagina", "Menú semanal inteligente");
  $plantilla = "menu_azar.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?error=$error");
}
?>

