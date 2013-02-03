<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: alimento_listar.php
//---------------------------------------------------------------------------------------------------
// Lista los alimentos existentes en la base de datos
//---------------------------------------------------------------------------------------------------
global $smarty;
global $plantilla;
global $usuario;

$alimentos = array();
$alimento = new alimento();
$alimentos = $alimento->Find("nombre_es_singular IS NOT NULL AND ingrediente = 1 ORDER BY nombre_es_singular");
$smarty->assign("alimentos", $alimentos);
$smarty->assign("_nombre_pagina", "Biblioteca de Alimentos");
$plantilla = "alimento_listar.tpl";
?>
