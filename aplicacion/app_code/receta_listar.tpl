<div class="btn-toolbar">
  <div class="btn-group">
    <a class="btn" href="index.php?page=receta_crear"><img src="theme/minica/images/icons/small/grey/note_book.png" alt=""> Crear receta</a>
    <a class="btn" href="#"><img src="theme/minica/images/icons/small/grey/paperclip.png" alt=""> Favoritas</a>
    <a class="btn" href="#"><img src="theme/minica/images/icons/small/grey/paperclip.png" alt=""> Orden 1</a>
    <a class="btn" href="#"><img src="theme/minica/images/icons/small/grey/paperclip.png" alt=""> Orden 2</a>
  </div>
</div>

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
      </div>
    {/foreach}
  </div>
    
<script>
  $('#tabrecetas a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });

  $(function () {
    $('#tabrecetas a:first').tab('show');
  });
</script>
