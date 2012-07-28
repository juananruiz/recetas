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
  public $grupos = array();

  public function load_joined($condicion)
  {
    if ($this->load($condicion))
    {
      $usuario_grupo = new usuario_grupo();
      $this->grupos = $usuario_grupo->Find_grupos("id_usuario = $this->id");
      return true;
    }
    else
    {
      return false;
    }
  }
}
?>
