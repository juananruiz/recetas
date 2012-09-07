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
  public $etiqueta;

  //Devuelve las etiquetas de una receta
  public function Find_etiquetas($condicion)
  {
    if ($etiquetas_recetas = $this->Find($condicion)) {
      foreach ($etiquetas_recetas as& $etiqueta_receta)
      {
        $etiqueta_receta->etiqueta = new etiqueta();
        $etiqueta_receta->etiqueta->load("id = $etiqueta_receta->id_etiqueta");
      }
      return $etiquetas_recetas;
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
        $etiqueta_receta->etiqueta = new etiqueta();
        $etiqueta_receta->etiqueta->load("id = $etiqueta_receta->id_etiqueta");
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
