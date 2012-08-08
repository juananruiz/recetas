<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/menu.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona los menus
//---------------------------------------------------------------------------------------------------
class menu extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'menus';
  public $etiquetas = array();

  public function load_joined($condicion)
  {
    if ($this->load($condicion))
    {
      $etiqueta_menu = new etiqueta_menu();
      $this->etiquetas = $etiqueta_menu->Find_etiquetas("id_menu = $this->id");
      return true;
    }
    else
    {
      return false;
    }
  }
}
?>
