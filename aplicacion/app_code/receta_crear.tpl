<div class="widget">

  <div class="widget-content">
    <ul class="nav nav-tabs" id="tabrecetas">
      <li><a href="#ingredientes">Preparación e ingredientes</a></li>
      <li><a href="#etiquetas">Asignar etiquetas</a></li>
    </ul>

    <div class="tab-content">
      <div class="tab-pane" id="ingredientes">
        <form method="post" action="index.php?page=receta_grabar" class="validate_form">
          <label>Nombre</label>
          <input type="text" name="nombre_es" class="span10 required" />
          <div class="required_tag"></div>
          
          <label>Preparación</label>
          <textarea  class="span10 autogrow" rows="5" name="preparacion"></textarea>
          
          <label>Variantes</label>
          <textarea class="span10 autogrow" name="variantes"></textarea>
           
          <div>
            <button class="btn btn-primary btn-large" type="submit">Grabar receta</button>
            <button class="btn offset1" type="reset" onclick="history.back()">Cancelar</button>
          </div>
        </form>
      </div>
      <div class="tab-pane" id="etiquetas">
        <p>Aquí se gestionarán las etiquetas</p>
      </div>
    </div>
  </div>
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
