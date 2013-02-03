<div class="btn-toolbar">
  <div class="btn-group">
    <a class="btn" href="index.php?page=receta_crear"><img src="theme/minica/images/icons/small/grey/note_book.png"> Crear receta</a>
    <a class="btn" href="#"><img src="theme/minica/images/icons/small/grey/paperclip.png"> Favoritas</a>
    <a class="btn" href="#"><img src="theme/minica/images/icons/small/grey/paperclip.png"> Orden 1</a>
    <a class="btn" href="#"><img src="theme/minica/images/icons/small/grey/paperclip.png"> Orden 2</a>
  </div>
</div>

<div class="row">

  <div class="span9">
    <div class="widget">
      <div class="widget-header">
        <h3>Biblioteca de recetas</h3>
      </div>
      <div class="widget-content">

        <ul class="nav nav-tabs" id="tabrecetas">
          {foreach $recetas as $clave => $etiquetas}
            <li><a href="#{$clave}">{$etiquetas[0]->etiqueta->nombre_es}</a></li>
          {/foreach}
        </ul>

        <div class="tab-content">
          {foreach $recetas as $clave => $etiquetas}
            <div class="tab-pane" id="{$clave}">
              <table class="table table-striped table-bordered table-condensed"> 
                <tbody>
                  {foreach $etiquetas as $etiqueta}
                    <tr>
                      <td><a href="index.php?page=receta_mostrar&id_receta={$etiqueta->receta->id}">{$etiqueta->receta->nombre_es}</a></td>
                    </tr>
                  {/foreach}
                </tbody>
              </table>
            </div><!-- .tab-pane -->
          {/foreach}
        </div><!-- .tab-content -->

      </div><!-- .widget-content -->
    </div><!-- .widget -->
  </div><!-- .span8 -->
    
  <div class="span3">
    <div class="widget">
      <div class="widget-header">
        <h3>Nuevas recetas</h3>
      </div>
      <div class="widget-content">
        <table class="table table-striped table-bordered table-condensed"> 
          <tbody>
            {foreach $nuevas_recetas as $receta}
              <tr>
                <td><a href="index.php?page=receta_mostrar&id_receta={$receta->id}">{$receta->nombre_es}</a></td>
              </tr>
            {/foreach}
          </tbody>
        </table>
        <p align="right"><img src="images/manzana_roja.png" alt="Manzana"></p>
      </div>
    </div><!-- .widget -->
  </div><!-- .span4 -->

</div><!-- .row -->

<script>
  $('#tabrecetas a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });

  $(function () {
    $('#tabrecetas a:first').tab('show');
  });
</script>
