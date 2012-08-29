<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien 
// Archivo: menu_grabar_json.php
//---------------------------------------------------------------------------------------------------
// Descripcion: Graba un menu en la base de datos tras una peticion de ajax utilizando json
//---------------------------------------------------------------------------------------------------
global $usuario;

if (is_object($usuario))
{
  if (isset($_REQUEST["nombre_es"]) AND isset($_REQUEST["recetas"]))
  {
    $menu = new menu();
    $menu->nombre_es = sanitize($_REQUEST["nombre_es"], SQL);
    $menu->id_usuario = $usuario->id;
    $menu->publico = 1; //De momento todos serán públicos por defecto
    if ($menu->save())
    {
      foreach($_REQUEST["recetas"] as $id_receta)
      {
        $menu_receta = new menu_receta();
        $menu_receta->id_receta = sanitize($id_receta, INT);
        $menu_receta->id_menu = $menu->id;
        $menu_receta->save();
      }
      return true;
    }
    else
    {
      return false;
    }
  }
  else
  {
    return false;
  }
}
else
{
  return false;
}
?>
