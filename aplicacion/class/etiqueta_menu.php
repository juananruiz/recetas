<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/etiqueta_menu.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona las etiqueta asociadas a los menus
//---------------------------------------------------------------------------------------------------
class etiqueta_menu extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'etiquetas_menus';

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
}
?>
