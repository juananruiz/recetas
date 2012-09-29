    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="index.php"><!--<img src="img/logo_foodness.png">-->Comer Bien</a>
          <div class="nav-collapse collapse">
            <span class="navbar-text pull-right">
              {if isset($_usuario)}
                <i class="icon-user icon-white"></i> 
                <a href="#" class="navbar-link" id="usuario-pop" rel="popover" 
                  data-original-title="Datos personales"
                  data-content="
                    {$_usuario->correo}
                    <hr>
                    <a href='index.php?page=usuario_perfil'><i class='icon-wrench'></i> Perfil de usuario</a> <br>
                    <a href='index.php?page=usuario_login&logout=true'><i class='icon-off'></i> Cerrar sesión</a>" 
                  data-placement="bottom" style="text-decoration:none;">{$_usuario->nombre}
                </a>
              {else}
                <a href="index.php?page=usuario_login">Iniciar sesión</a> |
                <a href="index.php?page=usuario_nuevo">Crear cuenta</a>
              {/if}
            </span>
            <ul class="nav">
              {if isset($_usuario)}
                <li><a href="index.php?page=mi_menu_listar"><img src="theme/minica/images/icons/small/white/frames.png" alt=""/><span>Menús</span></a></li>
                <li><a href="index.php?page=diario_mostrar"><img src="theme/minica/images/icons/small/white/create_write.png" alt=""/><span>Diario</span></a></li>
              {/if}
              <li><a href="index.php?page=receta_listar"><img src="theme/minica/images/icons/small/white/note_book.png" alt=""/><span>Recetas</span></a></li>
              <li><a href="index.php?page=alimento_listar"><img src="theme/minica/images/icons/small/white/ice_cream_2.png" alt=""/><span>Alimentos</span></a> </li>
              <li><a href="index.php?page=disenio"><img src="theme/minica/images/icons/small/white/rss.png" alt=""/><span>Diseño</span></a></li>
            </ul>
          </div><!-- .nav-collapse -->
        </div><!-- .container -->
      </div><!-- .navbar-inner -->
    </div><!-- .navbar navbar-inverse navbar-fixed-top -->
