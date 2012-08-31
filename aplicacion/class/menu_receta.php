<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: class/menu_receta.php
//---------------------------------------------------------------------------------------------------
// Descripcion: gestiona las recetas asociadas a cada menu y el dia al que pertenecen
//---------------------------------------------------------------------------------------------------
class menu_receta extends ADOdb_Active_Record
{
  //Propiedades de la clase
	public $_table = 'menus_recetas';
  public $receta;
  public $dia;
  public $momento;

  function Find_recetas($condicion) 
  {
    if ($menus_recetas = $this->Find($condicion)) 
    {
      foreach($menus_recetas as& $menu_receta) 
      {
        $menu_receta->receta = new receta();
        $menu_receta->receta->load_joined("id = $menu_receta->id_receta");
        $menu_receta->dia = new dia();
        $menu_receta->dia->load("id = $menu_receta->id_dia");
        $menu_receta->momento = new momento();
        $menu_receta->momento->load("id = $menu_receta->id_momento");
      }
      return $menus_recetas;  
    }
    else 
    {
      return false;
    }
  }
}
?>
