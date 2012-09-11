<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_auto.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Creación automatizada de menús siguiendo directrices básicas del usuario
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

  //Esta información debe proporcionarla el usuario previamente o tomar configuración por defecto
  $dias = array(1,2,3,4,5,6,7);
  $momentos = array(3,6);//Este habría que ampliarlo para incluir el número (¿y tipo?) de plato en cada comida
  $comidas = array();
  foreach($dias as $dia)
  {
    foreach($momentos as $momento)
    {
      $comidas[$dia][$momento][] =  $primeros[rand(0,$total_primeros - 1)];
      $comidas[$dia][$momento][] =  $segundos[rand(0,$total_segundos - 1)];
    }
  } 
  
  $reserva =array();
  for ($i = 0; $i < 3; $i++)
  {
    $reserva[] = $primeros[rand(0,$total_primeros - 1)];
    $reserva[] = $segundos[rand(0,$total_segundos - 1)];
    $reserva[] = $cenas[rand(0,$total_cenas - 1)];
  }
  $dia = new dia();
  $dias = $dia->Find("1 = 1");
  $smarty->assign("dias", $dias);

  $momento = new momento();
  $momentos = $momento->Find("1 = 1");
  $smarty->assign("momentos", $momentos);

  $smarty->assign("comidas", $comidas);
  $smarty->assign("reserva", $reserva);
  $smarty->assign("_nombre_pagina", "Menú semanal inteligente");
  $plantilla = "menu_auto.tpl";
}
else
{
  $error = "Debe iniciar sesión con su cuenta de usuario para crear nuevos menus";
  header("location:index.php?error=$error");
}
?>

