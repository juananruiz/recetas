<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/ingrediente_receta.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona los ingredientes asociadas a los recetas
//---------------------------------------------------------------------------------------------------
class ingrediente_receta extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'ingredientes_recetas';
  public $receta;
  public $ingrediente;

  //Devuelve las ingredientes de una receta
  public function Find_ingredientes($condicion)
  {
    if ($ingredientes_recetas = $this->Find($condicion)) {
      foreach ($ingredientes_recetas as& $ingrediente_receta)
      {
        $ingrediente_receta->ingrediente = new ingrediente();
        $ingrediente_receta->ingrediente->load("id = $ingrediente_receta->id_ingrediente");
      }
      return $ingredientes_recetas;
    }
    else 
    {
      return false;
    }
  }
  
}
?>
