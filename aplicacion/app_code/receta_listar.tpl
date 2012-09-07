  <a class="comando" href="index.php?page=receta_crear"><img src="theme/minica/images/icons/small/grey/note_book.png" alt=""><span>Agregar receta</span></a>

  <ul class="nav nav-tabs" id="tabrecetas">
    {foreach $recetas as $clave => $etiquetas}
      <li><a href="#{$clave}">{$etiquetas[0]->etiqueta->nombre_es}</a></li>
    {/foreach}
  </ul>

  <div class="tab-content">
    {foreach $recetas as $clave => $etiquetas}
      <div class="tab-pane" id="{$clave}">
        <table class="table table-striped table-condensed"> 
          <thead>
            <tr>
              <th>Nombre</th>
            </tr>
          </thead>
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
