  <style>
  .miniboton {
    float: right;
    background: #FCCC2E;
    color: #333;
    font-size: 0.9em;
    line-height: 1;
    border:1px solid #999;
    padding:2px;
    margin:0.4em 0;
    text-shadow:0px 0px 0px #FCCC2E;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }
  </style>
<script>
  window.onload = function() {
  }

  function agregarReceta(e) {
    var receta = e.target.parentNode;
    var receptor = document.getElementById("receptor");
    receptor.appendChild(receta);
  }
</script>

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
                      <a href="index.php?page=receta_mostrar&id_receta={$etiqueta->receta->id}">{$etiqueta->receta->nombre_es}</a>
                      <span class="miniboton" onclick="agregarReceta();">Agregar</span>
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
      <ul id="receptor">
      </ul>
      <select name="comida">
        <option value="" selected>Desayuno</option>
        <option value="">Almuerzo</option>
        <option value="">Merienda</option>
        <option value="">Cena</option>
      </select>

      <ul>
        <li>Café con leche</li>
        <li>Zumo de naranja</li>
        <li>Tostadas con aceite y queso fresco</li>
      </ul>
      <select name="comida">
        <option value="">Desayuno</option>
        <option value="" selected>Almuerzo</option>
        <option value="">Merienda</option>
        <option value="">Cena</option>
      </select>

      <ul>
        <li>Crema de calabacines y puerros</li>
        <li>Hamburguesas de tofú</li>
        <li>Helado de membrillo</li>
      </ul>
      <select name="comida">
        <option value="">Desayuno</option>
        <option value="">Almuerzo</option>
        <option value="">Merienda</option>
        <option value="" selected>Cena</option>
      </select>

      <ul>
        <li>Pollo al ajillo</li>
        <li>Ensalada mixta con frutos secos</li>
      </ul>
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
</script>
