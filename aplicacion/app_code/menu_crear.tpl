<div class="row">
<div class="span12">
  <div class="widget">
    <div class="widget-header">
      <h3>Bautiza tu menú</h3>
    </div>
    <div class="widget-content">
      <form method="post" action="index.php?page=receta_grabar" class="form-inline validate_form">
        <label>Nombre del menú</label>
        <input type="text" name="nombre_es" class="input-xxlarge required" />
        <button class="btn btn-primary" type="submit" id="grabar">Grabar</button>
        <button class="btn" type="reset" id="cancelar" onclick="history.back()">Cancelar</button>
      </form>
    </div><!-- /widget-content -->
  </div><!-- /widget -->
</div><!-- /span12 -->
</div><!-- /row -->

<div class="row">
  <div class="span6">
  <div class="widget">
  <div class="widget-header">
    <h3>Elige los platos</h3>
  </div>
    <div class="widget-content tabbable tabs-left">
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
                    <td>
                      <a href="index.php?page=receta_mostrar&id_receta={$etiqueta->receta->id}" 
                        id_receta="{$etiqueta->receta->id}">{$etiqueta->receta->nombre_es}</a>
                      <i class="icon-arrow-right pull-right"></i>
                    </td>
                  </tr>
                {/foreach}
              </tbody>
            </table>
          </div>
        {/foreach}
      </div><!-- /tab-content -->
    </div><!-- /widget-content -->
  </div><!-- /widget -->
  </div><!-- /span6 -->

  <div class="span6">
  <div class="widget">
    <div class="widget-header">
      <h3>Organiza tu menú</h3>
    </div>
    <div class="widget-content">
      <div id="platos-seleccionados">
        <div class="plato-nombre"><a href="#" id="123">Solomillo a la mostaza</a> <i class="icon-remove pull-right"></i></div> 
      </div>
      <select name="comida">
        <option value="">Desayuno</option>
        <option value="">Almuerzo</option>
        <option value="">Merienda</option>
        <option value="" selected>Cena</option>
      </select>

    </div><!-- /widget-content -->
  </div><!-- /widget -->
  </div><!-- /span6 -->
</div><!-- /row -->

<script>
  $('#tabrecetas a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });

  $(function () {
    $('#tabrecetas a:first').tab('show');
  });

  $('.icon-arrow-right').click(function()
  {
    $(this).prev('a').clone().appendTo('#platos-seleccionados').wrap("<div class='plato-nombre' />").after('<i class="icon-remove pull-right"></i>');
    return false;
  });

  $('.icon-remove').click(function()
  {
    $(this).parent().fadeOut(500);
    $(this).parent().next().fadeOut(500);
    //$(this).parent().parent().html("<img src='theme/minica/images/icons/large/grey/cloud_lightning.png'>");
    $(this).parent().parent().remove();
  });
  
</script>
