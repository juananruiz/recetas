<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/usuario_grupo.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona los usuario_grupos de la aplicación
//---------------------------------------------------------------------------------------------------
class usuario_grupo extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'usuarios_grupos';
  
  function Find_grupos()
  {
    $grupo = new grupo();
  }

}
?>
