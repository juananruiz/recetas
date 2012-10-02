<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: usuario_grabar.php
//---------------------------------------------------------------------------------------------------
// Graba un nuevo usuario en la base de datos
//---------------------------------------------------------------------------------------------------

// Si vienen todos los datos necesarios del formulario grabamos     
if (isset($_REQUEST['login']) AND isset($_REQUEST['clave']) AND isset($_REQUEST['correo']) AND isset($_REQUEST['fecha_nacimiento']))
{
  $usuario = new usuario();        
  $usuario->login = sanitize($_REQUEST["login"], SQL);
  $usuario->clave = sanitize($_REQUEST["clave"], SQL);
  $usuario->correo = sanitize($_REQUEST["correo"], SQL);
  $usuario->fecha_nacimiento = sanitize($_REQUEST["fecha_nacimiento"], SQL);
  $usuario->peso = isset($_REQUEST['peso'])?sanitize($_REQUEST['peso'],INT):0;   
  $usuario->altura = isset($_REQUEST['altura'])?sanitize($_REQUEST['altura'],INT):0;

  if ($usuario->save())
  {
    $id_usuario = $usuario->id;
    $aviso = 'Te has registrado como usuario ¡Bravo!';
    header("Location:index.php?page=usuario_mostrar&id_usuario=$id_usuario&aviso=$aviso");
  }
  else
  {
    $error = "Ha ocurrido un error. Lo sentimos no hemos podido crear tu cuenta.";
    header("Location:index.php?error=$error");
  }
}
// Si no vienen datos mostramos el formulario
else
{
  $error = 'Faltan datos para crear una nueva cuenta';
  header("Location:index.php?error=$error");
}
?>

