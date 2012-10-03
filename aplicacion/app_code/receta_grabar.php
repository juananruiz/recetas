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
  $receta->preparacion_es = isset($_REQUEST['preparacion'])?sanitize($_REQUEST['preparacion'],SQL):0;   
  $receta->variantes_es = isset($_REQUEST['variantes'])?sanitize($_REQUEST['variantes'],SQL):null;

  if ($receta->save())
  {
    $id_receta = $receta->id;
		//graba los ingredientes de esta receta si son enviados desde el formulario
		if (isset($_REQUEST["ingrediente"]) AND isset($_REQUEST["peso"]))
		{
			$ingredientes = $_REQUEST["ingrediente"];
			$pesos = $_REQUEST["peso"];
			$i=0; 
			for ($i;$i<count($_REQUEST["ingrediente"]);$i++)
			{
				$alimento_receta = new alimento_receta();
				$alimento_receta->id_alimento = $ingredientes[$i];
				$alimento_receta->id_receta = $id_receta;
				$alimento_receta->cantidad = $pesos[$i];
				$alimento_receta->save();
			}
		}
		//graba las etiquetas
		if (isset($_REQUEST["etiqueta_seleccionada_"]))
		{
			$etiquetas = $_REQUEST["etiqueta_seleccionada_"];
			$j=0; 
			for ($j;$j<count($etiquetas);$j++)
			{
				$etiqueta = new etiqueta_receta();
				$etiqueta->id_receta = $id_receta;
				$etiqueta->id_etiqueta = $etiquetas[$j];
				$etiqueta->save();
			}
		}
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

