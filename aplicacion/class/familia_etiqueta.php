<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/etiqueta.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona las etiquetas
//---------------------------------------------------------------------------------------------------
class familia_etiqueta extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'familias_etiquetas';
	public $etiquetas;
	public function find_joined()
	{
		$familias = $this->find("1=1");
		foreach($familias as $familia)
		{
			$e = new etiqueta();
			$etiquetas = $e->find("id_familia = $familia->id");
			$familia->etiquetas = $etiquetas;
		}
		return $familias;
	}
}
?>
