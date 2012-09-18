{literal}
<script>

</script>
<style>
label.valid {
		  width: 24px;
		  height: 24px;
		  background: url(assets/img/valid.png) center center no-repeat;
		  display: inline-block;
		  text-indent: -9999px;
		}
label.error {
			font-weight: bold;
			color: red;
			padding: 2px 8px;
			margin-top: 2px;
		}
</style>
{/literal}
<ul class="nav" id="tabrecetas">
	<li><a href="#nombre">Nombre, preparación y variantes</a></li>
	<li><a href="#ingrediente">Ingredientes</a></li>
	<li><a href="#etiqueta">Fuente</a></li>
</ul>

<form method="post" action="index.php?page=receta_grabar" id="receta_crear" name="receta_crear">

<div class="control-group">
	<label class="control-label" for="nombre_es">Nombre</label>
	<div class="controls">
		<input type="text" name="nombre_es" class="span10" />
	</div>
</div>

<div class="control-group">
	<label class="control-label" for="preparacion">Preparación</label>
	<div class="controls">
		<textarea  class="span10 autogrow" rows="5" name="preparacion"></textarea>
	</div>
</div>

<div class="control-group">
	<label class="control-label" for="Variantes">Variantes</label>
	<div class="controls">
		<textarea class="span10 autogrow" name="variantes"></textarea>
	</div>
</div>
<div class="row">

	<div class="span6">
		<div class="widget">
			<div class="widget-header">
				<h3>Busca tus ingredientes</h3>
				<input id="busqueda" name="busqueda"type="text" class="input-medium search-query"  placeholder="Escribe tu ingrediente">
			</div>
			<div class="widget-content tabbable tabs-left">
				<table class="table table-hover table-striped">
				<thead>
					<tr><th style="width:70%"></th><th style="width:15%"></th><th style="width:15%"></th></tr>
				</thead>
				<tbody id="encontrados">
				</tbody>
				</table>	
			</div>
		</div>
	</div>
	
	<div class="span6">
		<div class="widget">
			<div class="widget-header">
				<h3>Ingredientes seleccionados</h3>
			</div>
			<div id="seleccionados" class="widget-content tabbable tabs-left">
			<table id="tabla_seleccionados" class="table table-hover table-striped"><thead><tr><th style="width:15%"></th><th style="width:70%"></th><th style="width:15%"></th></tr</thead><tbody></tbody></table>
			</div>
		</div>
	</div>

</div>

<div>
		<button class="btn btn-primary btn-large" type="submit">Grabar receta</button>
		<button class="btn offset1" type="reset" onclick="history.back()">Cancelar</button>
	</div>
</form>
{literal}
<script>
$('#receta_crear').validate({
	    rules: {
	      nombre_es: {
	        minlength: 2,
	        required: true
	      },
	      preparacion: {
					minlength: 2,
	        required: true
	      },
	    },
	    highlight: function(label) {
				$(label).closest('.control-group').addClass('error');
	    },
	    success: function(label) {
				label
					.text('OK!').addClass('valid')
					.closest('.control-group').addClass('success');
	    }
});
$('#busqueda').keyup(function () {
 var valor = $('#busqueda').val();
 $.ajax({
	url: "index.php?page=receta_crear_ajax&ajax=true&busqueda="+valor,
  success: function(datos)
	{
		$('#encontrados').html(datos);
  }
	}); 
});
$('#tabrecetas a').click(function (e) { e.preventDefault(); $(this).tab('show'); });
$(function () { $('#tabrecetas a:first').tab('show'); });
//Quitar de la lista de ingredientes seleccionados
function quitar(id)
{
	$('#fila_'+id).remove();
}
//Añadir ingredientes a la receta
function poner(id)
{
	var peso = $('#peso_'+id).val();
	var ingrediente = $('#ingrediente_'+id).val();
	if (peso !='')
	{
		$('#tabla_seleccionados tbody:last').append('<tr id="fila_'+id+'"><td><button class="btn btn-small" type="button"  onclick="javascript:quitar(\''+id+'\')">Quitar</button></td><td>'+ingrediente+'</td><td><div class="input-append"><input class="" style="width:40px"  type="text" name="peso[]" value="'+peso+'"><span class="add-on">gr.</span></div></td></tr>');
	}
	else
	{
		alert('Debe indicar el peso en gramos del ingrediente.');
	}
}
</script>
{/literal}
