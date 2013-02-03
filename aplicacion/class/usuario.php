<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/usuario.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona los usuarios de la aplicación
//---------------------------------------------------------------------------------------------------
class usuario extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'usuarios';

  public function load_joined($condicion)
  {
    if ($this->load($condicion))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}
?>
