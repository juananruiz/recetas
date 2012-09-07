<form method="post" action="index.php?page=receta_grabar" class="validate_form">
  <label>Nombre</label>
  <input type="text" name="nombre_es" class="span10 required" />
  <div class="required_tag"></div>
  
  <label>Preparación</label>
  <textarea  class="span10 autogrow" rows="5" name="preparacion"></textarea>
  
  <label>Variantes</label>
  <textarea class="span10 autogrow" name="variantes"></textarea>
   
  <div class="span10">
    <button class="btn btn-primary btn-large" type="submit">Grabar</button>
    <button class="btn" type="reset" onclick="history.back()">Cancelar</button>
  </div>
</form>

