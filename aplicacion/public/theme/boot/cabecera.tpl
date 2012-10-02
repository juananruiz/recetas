<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>{$_nombre_pagina} - Comer Bien</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="theme/boot/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="theme/boot/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="theme/boot/css/triplejota.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="theme/boot/js/jquery-1.8.0.js"></script>
    <script src="theme/boot/js/bootstrap.js"></script>
    <script src="theme/boot/js/jquery.validate.js"></script>


    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#"><!--<img src="img/logo_foodness.png">-->Comer Bien</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><a href="index.php" class="pjax"><img src="theme/minica/images/icons/small/white/home.png" alt=""/><span>Inicio</span></a></li>
              {if isset($_usuario)}
                <li><a href="index.php?page=mi_menu_listar"><img src="theme/minica/images/icons/small/white/frames.png" alt=""/><span>Mi Menú</span></a></li>
                <li><a href="index.php?page=diario_mostrar"><img src="theme/minica/images/icons/small/white/create_write.png" alt=""/><span>Diario</span></a></li>
              {/if}
              <li><a href="index.php?page=receta_listar"><img src="theme/minica/images/icons/small/white/note_book.png" alt=""/><span>Recetas</span></a></li>
              <li><a href="index.php?page=alimento_listar"><img src="theme/minica/images/icons/small/white/ice_cream_2.png" alt=""/><span>Alimentos</span></a> </li>
              <li><a href="index.php?page=disenio"><img src="theme/minica/images/icons/small/white/rss.png" alt=""/><span>Diseño</span></a></li>
              {if isset($_usuario)}
                <li><a href="index.php?page=usuario_perfil">{$_usuario->login}</a></li>
                <li><a href="index.php?page=login_basico&logout=true">Salir</a></li>
              {else}
                <li><a href="index.php?page=login_basico">Iniciar sesión</a></li>
              {/if}
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <h1>{$_nombre_pagina}</h1>

