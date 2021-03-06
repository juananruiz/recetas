<?php 
//---------------------------------------------------------------------------------------------------
// Proyecto Cascara
// Archivo: index.php
// Desarrolladores: Juanan Ruiz <juanan@us.es>, Jesús Martin <jjmc@us.es>
//---------------------------------------------------------------------------------------------------
// Descripcion: Esta es la página que carga a todas las demas en su seno maternal 
//---------------------------------------------------------------------------------------------------
// Esto es para que se vean los errores
ini_set('display_errors', '1');
error_reporting(E_ALL);

include_once('../app_code/app_config.php');
include_once('../../cascara_core/lib/adodb5/adodb.inc.php');
include_once('../../cascara_core/lib/adodb5/adodb-active-record.inc.php');
include_once('../../cascara_core/lib/libopensso-php/OpenSSO.php');
include_once('../../cascara_core/lib/smarty/Smarty.class.php');
include_once('../../cascara_core/function/sanitize.php');
include_once('../../cascara_core/function/caracteres.php');

// Carga las clases necesarias automaticamente
spl_autoload_register('__autoload');
function __autoload($class_name) 
{
	if (file_exists('../class/'.$class_name.'.php'))
	{	
		require_once('../class/'.$class_name.'.php');
	}
}

// Variables globales
$smarty = new Smarty();
//$smarty->cache = false; 
$smarty->template_dir = '../app_code'; 
$smarty->compile_dir = '../templates_c'; 
$smarty->config_dir = '../configs'; 
$smarty->cache_dir = '../cache'; 

//Versión actual de la aplicación
$smarty->assign('_version', '0.1');

// Conectamos a los datos con ADODB y ActiveRecord 
$adodb = NewADOConnection('mysql://'.CC_DB_LOGIN.':'.CC_DB_CLAVE.'@'.CC_DB_HOST.'/'.CC_DB_DATABASE);
ADOdb_Active_Record::SetDatabaseAdapter($adodb);
$adodb->EXECUTE("set names 'utf8'");

// Crea una sesión con un identificador encriptado para evitar ataques
$session_key = substr(md5(CC_DIR_BASE), 0, 8);
@session_name('CC_SESSID' . $session_key);
@ini_set('url_rewriter.tags', '');
@ini_set('session.use_trans_sid', 0);
if(!@session_id())
{
    //Trans SID sucks also...
    @ini_set('url_rewriter.tags', '');
    @ini_set('session.use_trans_sid', 0);
	//@ini_set("session.cookie_lifetime", 10);
	//@ini_set("session.gc_maxlifetime",10);
    @session_start();
}
// Comprueba si el usuario ha iniciado sesión
if (isset($_SESSION['usuario'])) 
{
	$usuario = new usuario();
	$usuario = $_SESSION['usuario'];
	$smarty->assign('_usuario',$usuario);
}

if (isset($_GET['page']))
{
  $page = sanitize($_GET['page'],2);
}
else
{
  $page = "inicio";
}

// Definimos $plantilla en blanco para que se comporte como variable global
$plantilla = '';

// Carga la página solicitada ($_GET['page']) o la pagina por defecto ('login' en nuestro caso)
if(file_exists("../app_code/$page.php"))
{
	require_once("../app_code/$page.php");
}
else
{
	$smarty->assign('error', "Error 404: no encontramos la página que ha solicitado."); 
  require_once("../app_code/error.php");
}
if (isset($_GET['ajax']) AND $_GET['ajax'] == 'true')
{
	$smarty->display("$plantilla");
} 
else
{
	// Llama a las tres plantillas que conforman la página html
	$smarty->display('theme/'.CC_THEME.'/cabecera.tpl'); 
	$smarty->display("$plantilla");
	$smarty->display('theme/'.CC_THEME.'/piecera.tpl');
}
?>
