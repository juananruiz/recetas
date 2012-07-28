<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: ComerBien 
// Archivo: inicio.php
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
global $smarty;
global $usuario;
global $plantilla;

$smarty->assign('_nombre_pagina', 'Inicio');

//Carga la página de novedades para mostrar en la pantalla inicial
$pagina = new pagina();
$pagina->load("alias = 'noticias'");
$smarty->assign('pagina',$pagina);
 

$plantilla = 'inicio.tpl';
?>
