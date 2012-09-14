<div class="span6">
<div class="widget">
<div class="widget-content">
  <form class="form-horizontal validate" id="form_registro" action="index.php?page=usuario_grabar">
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
      <div class="control-group input-append">
        <label class="control-label" for="peso">Peso</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="peso" name="peso" placeholder="Si no lo recuerdas ahora ponlo luego">
          <span class="add-on">kgs.</span>
        </div>
      </div>
      <div class="control-group input-append">
        <label class="control-label" for="altura">Altura</label>
        <div class="controls">
          <input class="input-xlarge" type="text" id="altura" name="altura" placeholder="Si no la recuerdas ahora ponlo luego">
          <span class="add-on">cms.</span>
        </div>
      </div>
       <div class="form-actions">
          <button type="submit" class="btn btn-primary btn-large">Crear cuenta</button>
          <button class="btn">Cancelar</button>
      </div>
    <fieldset>
  </form>
</div><!-- .widget-content -->
</div><!-- .widget -->
</div><!-- .span6 -->
{literal}
<script src="theme/boot/js/jquery.validate.min.js"></script>
<script src="theme/boot/js/jquery.validate.boothack.js"></script>
<script>
  $(document).ready(function() {
    $('form.validate').validate({
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
      errorClass: 'error',
      validClass: 'success',
      errorElement: 'span',
      highlight: function(element, errorClass, validClass) {
        if (element.type === 'radio') {
          this.findByName(element.name).parent('div').parent('div').removeClass(validClass).addClass(errorClass);
        } else {
          $(element).parent('div').parent('div').removeClass(validClass).addClass(errorClass);
        }
      },
      unhighlight: function(element, errorClass, validClass) {
        if (element.type === 'radio') {
          this.findByName(element.name).parent('div').parent('div').removeClass(errorClass).addClass(validClass);
        } else {
          $(element).parent('div').parent('div').removeClass(errorClass).addClass(validClass);
        }
      }
    });
  });
</script>
{/literal}
