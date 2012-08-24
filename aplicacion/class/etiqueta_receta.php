<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/etiqueta_receta.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona las etiqueta asociadas a los recetas
//---------------------------------------------------------------------------------------------------
class etiqueta_receta extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'etiquetas_recetas';
  public $receta;

  public function Find_etiquetas($condicion)
  {
    $etiqueta = new etiqueta();
    if ($etiquetas = $etiqueta->Find($condicion))
    {
      return $etiquetas;
    }
    else
    {
      return false;
    }
  }
  
  public function Find_recetas($condicion)
  {
    if ($etiquetas_recetas = $this->Find($condicion))
    {
      foreach ($etiquetas_recetas as& $etiqueta_receta)
      {
        $etiqueta_receta->receta = new receta();
        $etiqueta_receta->receta->load("id = $etiqueta_receta->id_receta");
      }
      return $etiquetas_recetas;
    }
    else
    {
      return false;
    }
  }
}
?>