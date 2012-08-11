        <div id="nav_top" class="dropdown_menu clearfix round_top">
          <ul class="clearfix">
            <li><a href="index.php" class="pjax"><img src="theme/minica/images/icons/small/grey/home.png" alt=""/><span>Inicio</span></a></li>
            {if isset($_usuario)}
              <li><a href="index.php?page=mi_menu_listar"><img src="theme/minica/images/icons/small/grey/frames.png" alt=""/><span>Mi Menú</span></a></li>
              <li><a href="index.php?page=diario_mostrar"><img src="theme/minica/images/icons/small/grey/create_write.png" alt=""/><span>Diario</span></a></li>
            {/if}
            <li><a href="index.php?page=receta_listar"><img src="theme/minica/images/icons/small/grey/note_book.png" alt=""/><span>Recetas</span></a></li>
            <li><a href="index.php?page=alimento_listar"><img src="theme/minica/images/icons/small/grey/ice_cream_2.png" alt=""/><span>Alimentos</span></a> </li>
            <li><a href="index.php?page=blog"><img src="theme/minica/images/icons/small/grey/rss.png" alt=""/><span>Blog</span></a></li>
          </ul> 
          <script type="text/javascript">
            var currentPage = 6 - 1; // This is only used in php to tell the nav what the current page is
            $('#nav_top > ul > li').eq(currentPage).addClass("current");
            $('#nav_top > ul > li').addClass("icon_only").children("a").children("span").parent().parent().removeClass("icon_only");
          </script>
    
          <div id="mobile_nav">
            <div class="main"></div>
          </div>

        </div>
