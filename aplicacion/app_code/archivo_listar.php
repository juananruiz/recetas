<?php
//---------------------------------------------------------------------------------------------------
// Proyecto: Comerbien
// Archivo: archivo_listar.php
//---------------------------------------------------------------------------------------------------
// Lista el contenido de archivos del directorio indicado y muestra un formulario para 
// subir nuevos archivos
//---------------------------------------------------------------------------------------------------
global $smarty;
global $plantilla;
global $usuario;

if (isset($_GET['dir']))
{
    //directorio de trabajo
    $dir = sanitize($_GET['dir'],PARANOID);

    //Creamos el array con los ficheros del directorio
    $directorio = opendir(IC_DIR_BASE . '/upload/' . $dir); 
    while ($archivo = readdir($directorio))
    {
        $fecha = date ("d-m-Y", filemtime(IC_DIR_BASE . '/upload/' . $dir . "/" . $archivo));
        $archivos[] = array($archivo, $fecha);
    }
    closedir($directorio);

    $smarty->assign('archivos',$archivos);
    $smarty->assign('directorio',$dir);
}
else
{
    $error = "No se ha proporcionado un nombre de directorio";
    $smarty->assign('error', $error);
}
$plantilla = "archivo_listar.tpl";
?>
