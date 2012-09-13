<div class="span6">
  <form class="form-horizontal" id="form_registro" action="">
    <fieldset>
      <legend>Datos personales <small>(prometemos cuidarlos)</small></legend>
      <div class="control-group">
        <label class="control-label" for="nombre">Nombre</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="nombre" name="nombre" placeholder="Puedes introducir tu nombre real o un alias, como prefieras">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="clave">Clave</label>
        <div class="controls">
          <input class="input-xlarge" type="password" id="clave" name="clave" placeholder="Al menos 6 caracteres, usa tu astucia">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="clave_confirma">Repite la clave</label>
        <div class="controls">
          <input class="input-xlarge" type="password" id="clave_confirma" name="clave_confirma" placeholder="Vamos allá de nuevo">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="email">Correo electrónico</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="email" name="email" placeholder="Introduce un correo electrónico que uses">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="onomastica">Fecha de nacimiento</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="onomastica" name="onomastica" placeholder="Queda entre nosotros, si no te fias: miente ;)">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="peso">Peso</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="peso" name="peso" placeholder="Si no lo recuerdas ahora ponlo luego">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="altura">Altura</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="altura" name="altura" placeholder="Si no la recuerdas ahora ponlo luego">
        </div>
      </div>
       <div class="form-actions">
          <button type="submit" class="btn btn-primary btn-large">Crear cuenta</button>
          <button class="btn">Cancelar</button>
      </div>
    <fieldset>
  </form>
</div>

{literal}
<script src="theme/boot/js/jquery.validate.min.js"></script>
<script>
$(document).ready(function(){

  //	jQuery Validate tuneado para Bootstrap by David Cochran
	// http://bassistance.de/jquery-plugins/jquery-plugin-validation/
	// http://docs.jquery.com/Plugins/Validation/
	// http://docs.jquery.com/Plugins/Validation/validate#toptions
	
  $('#form_registro').validate({
    rules: {
      nombre: {
        minlength: 4,
        required: true
      },
      clave: {
        minlength: 6,
        required: true
      }
      ,
      clave_confirma: {
        required: true,
        equalTo: clave
      },
      email: {
        required: true,
        email: true
      },
      onomastica: {
        date: true,
        required: true
      },
      altura: {
        number: true
      },
      peso: {
        number: true
      }
    },
    highlight: function(label) {
      $(label).closest('.control-group').removeClass('success');
      $(label).closest('.control-group').addClass('error');
    },
    success: function(label) {
      $(label).text('OK!');
      $(label).addClass('valid');
      $(label).removeClass('error');
      $(label).closest('.control-group').removeClass('error');
      $(label).closest('.control-group').addClass('success');
    }
  });
	  
}); // end document.ready
</script>
{/literal}
