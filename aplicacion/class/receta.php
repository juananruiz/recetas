<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/receta.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona las recetas
//---------------------------------------------------------------------------------------------------
class receta extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'recetas';
  public $ingredientes = array();
  public $etiquetas = array();

  public function load_joined($condicion)
  {
    if ($this->load($condicion))
    {
      $ingrediente_receta = new ingrediente_receta();
      $this->ingredientes = $ingrediente_receta->Find_ingredientes("id_receta = $this->id");
      $etiqueta_receta = new etiqueta_receta();
      $this->etiquetas = $etiqueta_receta->Find_etiquetas("id_receta = $this->id");
      return true;
    }
    else
    {
      return false;
    }
  }
}
?>
