<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Icasus 
// Archivo: usuario_mostrar.php
//---------------------------------------------------------------------------------------------------
// Muestra los datos de un usuario y las entidades a las que pertenece
//---------------------------------------------------------------------------------------------------
global $smarty;
global $plantilla;
global $usuario;

if ($_REQUEST['id_usuario'])
{
	$id_usuario = sanitize($_REQUEST['id_usuario'],INT);
  // Los datos de un usuario sólo puede verlos el mismo o un administrador
  if ($id_usuario = $usuario->id OR $usuario->id < 100)
  {
    $usuario = new usuario();
    $usuario->load("id = $id_usuario");
    $smarty->assign('usuario', $usuario);

    $nombre_pagina = "Datos del usuario: " . $usuario->login;
    $smarty->assign('_nombre_pagina', $nombre_pagina);
    $plantilla = "usuario_mostrar.tpl";
  }
  else
  {
    $error = "No está autorizado a consultar los datos de este usuario";
    header("location:index.php?error=$error");
  }
}
else
{
	$error = "No se puede mostrar el usuario por falta de parámetros.";
  header("location:index.php?page=inicio&error=$error");
}
?>
