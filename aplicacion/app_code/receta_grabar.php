<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: receta_crear.php
//---------------------------------------------------------------------------------------------------
// Graba un nueva receta
//---------------------------------------------------------------------------------------------------

// Si vienen todos los datos necesarios del formulario grabamos     
if (isset($_REQUEST['nombre_es']))
{
  $receta = new receta();        
  $receta->nombre_es = sanitize($_REQUEST["nombre_es"], SQL);
  $receta->preparacion = isset($_REQUEST['preparacion'])?sanitize($_REQUEST['preparacion'],SQL):0;   
  $receta->variantes = isset($_REQUEST['variantes'])?sanitize($_REQUEST['variantes'],SQL):null;

  if ($receta->save())
  {
    $id_receta = $receta->id;
    $aviso = 'Has grabado un nueva receta. ¡Bravo!';
    header("Location:index.php?page=receta_mostrar&id_receta=$id_receta&aviso=$aviso");
  }
  else
  {
    $error = "Ha ocurrido un error. Lo sentimos no hemos podido grabar tu receta.";
    header("Location:index.php?page=receta_listar&aviso=$error");
  }
}
// Si no vienen datos mostramos el formulario
else
{
  $error = 'Faltan datos para crear la receta';
  header("Location:index.php?page=receta_listar&aviso=$error");
}
?>

