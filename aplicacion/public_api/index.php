<?php

// Conexión a datos
require_once("../app_code/app_config.php");
@mysql_connect(CC_DB_HOST , CC_DB_LOGIN , CC_DB_CLAVE);
if (@mysql_select_db(CC_DB_DATABASE))
{
  // Capturamos y procesamos los datos de la petición
  require_once("../../cascara_core/function/sanitize.php");
  if (isset($_REQUEST["method"]) AND !empty($_REQUEST["method"]))
  {
    if (function_exists($_REQUEST["method"]))
    {
      if (isset($_REQUEST["id"]))
      {
        $id = sanitize($_REQUEST["id"], INT);
        $_REQUEST["method"]($id);
      }
      else
      {
        $_REQUEST["method"]();
      }
    }
  }
}
else
{
  echo "Error de conexion a la base de datos";
}

// Métodos

function get_receta($id)
{
  $query = "SELECT * FROM recetas WHERE id = $id";  
  $resultado = mysql_query($query);
  $receta = mysql_fetch_array($resultado);

  $query = "SELECT * FROM alimentos a INNER JOIN alimentos_recetas ar ON a.id = ar.id_alimento WHERE ar.id_receta = $id";
  $resultado = mysql_query($query);
  while ($ingrediente = mysql_fetch_array($resultado))
  {
    $receta["ingredientes"][] = $ingrediente;
  }

  $receta = json_encode($receta);
  echo $receta;
  //echo $_REQUEST["callback"] . "(" . $receta . ")";
}

function get_menu($id)
{
  $query = "SELECT * FROM menus WHERE id = $id";
  $resultado = mysql_query($query);
  $menu = mysql_fetch_array($resultado);

  $query = "SELECT * FROM menus_recetas WHERE id_menu = $id ORDER BY id_dia, id_momento";
  $resultado = mysql_query($query);
  while ($plato = mysql_fetch_array($resultado))
  {
    $query = "SELECT * FROM recetas WHERE id = " . $plato["id_receta"];
    $receta_sql = mysql_query($query);
    $receta = mysql_fetch_array($receta_sql);
    $menu["dias"][$plato["id_dia"]][$plato["id_momento"]][] = $receta;
  }

  $query = "SELECT * FROM dias";
  $dias_sql = mysql_query($query);
  $dias = mysql_fetch_array($dias_sql);

  foreach ($menu["dias"] as $dia)
  {
    $menu["dias"][$key]    

  $menu = json_encode($menu);
  echo $menu;
  //echo $_REQUEST["callback"] . "(" . $menu . ")";

}

?>
