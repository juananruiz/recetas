<!doctype html public "✰">
<!--[if lt IE 7]> <html lang="en-us" class="no-js ie6"> <![endif]-->
<!--[if IE 7]>    <html lang="en-us" class="no-js ie7"> <![endif]-->
<!--[if IE 8]>    <html lang="en-us" class="no-js ie8"> <![endif]-->
<!--[if IE 9]>    <html lang="en-us" class="no-js ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html lang="es-es" class="no-js"> 
<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>{$_nombre_pagina} - Foodness</title>
		
  	<meta name="description" content="Planifica y controla tu alimentación para sentirte fenomenal">
  		
	<!-- iPhone, iPad and Android specific settings -->	
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1;">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
		<link rel="apple-touch-icon" href="theme/minica/images/iOS_icon.png">
		<link rel="apple-touch-startup-image" href="theme/minica/images/iOS_startup.png">

	<!-- Styles -->
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/reset.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/fancybox/jquery.fancybox-1.3.4.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/tinyeditor/style.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/slidernav/slidernav.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/uitotop/css/ui.totop.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/fullcalendar/fullcalendar.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/isotope/isotope.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/elfinder/css/elfinder.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/tiptip/tipTip.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/uniform/css/uniform.aristo.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/multiselect/css/ui.multiselect.css">
    <link rel="stylesheet" type="text/css" href="theme/minica/scripts/colorpicker/css/colorpicker.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/selectbox/jquery.selectBox.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/scripts/uistars/jquery.ui.stars.min.css">
    <link rel="stylesheet" type="text/css" href="theme/minica/scripts/themeroller/Aristo.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/text.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/grid.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/main.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/theme/theme_base.css">
    <!--<link rel="stylesheet" type="text/css" href="theme/minica/scripts/syntax_highlighter/styles/shCore.css">-->
    <!--<link rel="stylesheet" type="text/css" href="theme/minica/scripts/syntax_highlighter/styles/shThemeDefault.css">-->
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/colours.css">
		<link rel="stylesheet" type="text/css" href="theme/minica/styles/bottons.css">

	<!-- Scripts -->

		<!-- Load JQuery -->		
		<script src="theme/minica/scripts/jquery/jquery171.min.js" type="text/javascript"></script>

		<!-- Load JQuery UI -->
		<script src="theme/minica/scripts/jquery/jquery-ui1817.min.js" type="text/javascript"></script>
		
		<!-- Global -->
		<script src="theme/minica/scripts/touchPunch/jquery.ui.touch-punch.min.js" type="text/javascript"></script>
		<script src="theme/minica/scripts/uitotop/js/jquery.ui.totop.js" type="text/javascript"></script>
				
		<!-- Forms -->
		<script src="theme/minica/scripts/uniform/jquery.uniform.min.js"></script>
		<script src="theme/minica/scripts/autogrow/jquery.autogrowtextarea.js"></script>
		<script src="theme/minica/scripts/multiselect/js/ui.multiselect.js"></script>
		<script src="theme/minica/scripts/selectbox/jquery.selectBox.min.js"></script>
		<script src="theme/minica/scripts/timepicker/jquery.timepicker.js"></script>
		<script src="theme/minica/scripts/colorpicker/js/colorpicker.js"></script>
		<script src="theme/minica/scripts/uistars/jquery.ui.stars.min.js"></script>
		<script src="theme/minica/scripts/tiptip/jquery.tipTip.minified.js"></script>
		<script src="theme/minica/scripts/validation/jquery.validate.min.js" type="text/javascript"></script>		

		<!-- Configuration Script -->
		<script type="text/javascript" src="theme/minica/scripts/minica/minica_ui.js"></script>
		<script type="text/javascript" src="theme/minica/scripts/minica/minica_forms.js"></script>
		<script type="text/javascript" src="theme/minica/scripts/minica/minica_mobile.js"></script>
		
	<body>
		<div id="wrapper">		
      
			<div id="main_container" class="main_container container_16 clearfix">
        <div id="logo">
          <a href="index.php"><img src="images/logo_foodness.png" alt="foodness" /></a>
        </div>
        <div id="control_sesion" style=" position: absolute; top: 10px; right: 30px; padding-top: 5px; letter-spacing:0">
          {if isset($_usuario)}
            {$_usuario->nombre} {$_usuario->apellidos} | 
            <a href="index.php?page=usuario_perfil">Mis datos</a> | 
            <a href="index.php?page=login_basico&logout=true">Salir</a>
          {else}
            <a href="index.php?page=login_basico">Iniciar sesión</a> |
            <a href="index.php?page=usuario_crear">Crear cuenta</a>
          {/if}
        </div>
        {include file="menu_top.tpl"}
        <!-- #nav_top -->

      <div class="flat_area grid_16">
        
      <div>
        <h2>{$_nombre_pagina}</h2>
      </div>

        {if isset($smarty.get.error)}
          <div class="alert dissmisible alert_red">
            <img height="24" width="24" src="theme/minica/images/icons/small/white/alarm_bell.png"> 
            {$smarty.get.error}
          </div>
        {/if}
        {if isset($error)}
          <div class="alert dissmisible alert_red">
            <img height="24" width="24" src="theme/minica/images/icons/small/white/alarm_bell.png"> 
            {$error}
          </div>
        {/if}
        {if isset($smarty.get.aviso)}
          <div class="alert dissmisible alert_blue">
            <img height="24" width="24" src="theme/minica/images/icons/small/white/alert_2.png"> 
            {$smarty.get.aviso}
          </div>
        {/if}
        {if isset($aviso)}
          <div class="alert dissmisible alert_blue">
            <img height="24" width="24" src="theme/minica/images/icons/small/white/alert_2.png"> 
            {$aviso}
          </div>
        {/if}
