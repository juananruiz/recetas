{literal}
<style>
/*
label.valid {
		  width: 24px;
		  height: 24px;
		  background: url("") center center no-repeat;
		  display: inline-block;
		  text-indent: -9999px;
		}
label.error {
			font-weight: bold;
			color: red;
			padding: 2px 8px;
			margin-top: 2px;
		}
		*/
</style>
{/literal}
<ul class="nav nav-tabs" id="tabrecetas" style="display:none">
	<li><a href="#nombre" data-toggle="tab">Nombre, preparación y variantes</a></li>
	<li><a href="#ingrediente" data-toggle="tab">Ingredientes</a></li>
	<li><a href="#etiqueta" data-toggle="tab">Etiquetas</a></li>
</ul>

<form method="post" action="index.php?page=receta_grabar" id="receta_crear" name="receta_crear">
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade active in" id="nombre">
		<h3>Nombre, preparación y variantes</h3>
		<fieldset>	
		<div class="control-group">
			<label class="control-label" for="nombre_es">Nombre</label>
			<div class="input-prepend controls">
				<input type="text" name="nombre_es" class="span10" placeholder="Requerido"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="preparacion">Preparación</label>
			<div class="controls">
				<textarea  class="span10 autogrow" rows="5" name="preparacion" placeholder="Requerido"></textarea>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="Variantes">Variantes</label>
			<div class="controls">
				<textarea class="span10 autogrow" name="variantes"></textarea>
			</div>
		</div>
		</fieldset>	
		<a href="#" class="btn btnNext">Siguiente</a>
		</div>
		<div class="tab-pane fade" id="ingrediente">
		<h3>Ingredientes</h3>
		<div class="row">
		<fieldset>	
			<div class="span6">
				<div class="widget">
					<div class="widget-header">
						<h3><span class="icon-align-left" style="margin-right:10px"></span> Busca tus ingredientes</h3>
						<input id="busqueda" name="busqueda" type="text" class="input-medium search-query"  placeholder="Escribe tu ingrediente">
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
						<h3><span class="icon-indent-left" style="margin-right:10px"></span> Ingredientes seleccionados</h3>
					</div>
					<div id="seleccionados" class="widget-content tabbable tabs-left">
					<table id="tabla_seleccionados" class="table table-hover table-striped"><thead><tr><th style="width:15%"></th><th style="width:70%"></th><th style="width:15%"></th></tr></thead><tbody></tbody></table>
					</div>
				</div>
			</div>
		</fieldset>	
		</div>
		<a href="#" class="btn btnPrev">Anterior</a>
		<a href="#" class="btn btnNext">Siguiente</a>
		</div>
		<div class="tab-pane fade" id="etiqueta">
		<h3>Etiquetas</h3>
		<div class="row">
		<fieldset>	
			<div class="span6">
				<div class="widget">
					<div class="widget-header">
						<h3><span class="icon-tag" style="margin-right:10px"></span> Busca tus etiquetas</h3>
						<input id="busqueda_etiqueta" name="busqueda_etiqueta" type="text" class="input-medium search-query"  placeholder="Escribe tu etiqueta">
					</div>
					<div class="widget-content tabbable tabs-left">
						<table class="table table-hover table-striped">
						<thead>
							<tr><th style="width:70%"></th><th style="width:15%"></th><th style="width:15%"></th></tr>
						</thead>
						<tbody id="etiquetas_encontradas">
						</tbody>
						</table>	
					</div>
				</div>
			</div>
			<div class="span6">
				<div class="widget">
					<div class="widget-header">
						<h3><span class="icon-tags" style="margin-right:10px"></span> Etiquetas  seleccionadas</h3>
					</div>
					<div id="etiquetas_seleccionadas" class="widget-content tabbable tabs-left">
						<table id="tabla_etiquetas_seleccionadas" class="table table-hover table-striped">
							<thead><tr><th style="width:15%"></th><th style="width:70%"></th><th style="width:15%"></th></tr></thead>
							<tbody></tbody>
						</table>
					</div>
				</div>
			</div>
		</fieldset>	
			<div style="display:none">
				<button class="btn btn-primary btn-large" type="submit">Grabar receta</button>
				<button class="btn offset1" type="reset" onclick="history.back()">Cancelar</button>
			</div>
		</div>
		<a href="#" class="btn btnPrev">Anterior</a>
		<a href="#" class="btn btnFin">Finalizar</a>
		</div>
	</div>
</form>
<div id="aviso_validacion"> </div>
{literal}
<script src="theme/boot/js/jquery.validate.min.js"></script>
<script>
$().ready(function() {
	//validar formulario
	$('#receta_crear').validate({
		rules:{
			preparacion:{
					required:true
					},
			nombre_es:{
					required:true
					}
		},
    ignore: "",
		messages:{
			nombre_es:'Debe cumplimentar el nombre de la receta',
			preparacion:'Debe cumplimetar la preparación de la receta'
		},
			/*
			highlight: function(label) {
			$(label).closest('.control-group').addClass('error');
			},
			success: function(label) {
			label
			.text('OK!').addClass('valid')
			.closest('.control-group').addClass('success');
			}
			*/
	});
		//busqueda de etiquetas
	$('#busqueda_etiqueta').keyup(function () {
	 var valor = $('#busqueda_etiqueta').val();
	 $.ajax({
		url: "index.php?page=receta_crear_etiqueta_ajax&ajax=true&busqueda="+valor,
		success: function(datos)
		{
			$('#etiquetas_encontradas').html(datos);
		}
		}); 
	});
	//busqueda de alimentos o ingredientes
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
	//tabs de seguimiento
	$('#tabrecetas a').click(function (e) { e.preventDefault(); $(this).tab('show'); });
	$('#tabrecetas li:eq(0) a').tab('show'); 
	//Botones de seguimiento
	$('.btnNext').bind("click",function(e){
		if ($("#receta_crear").valid()) 
      nextTab();
    else {
            //  TODO: doesn't properly scroll to fields on top
            $.validator.focusInvalid();
          }
          return false;
	});	
	$('.btnPrev').bind("click",function(e){
      prevTab();
	});	
	$('.btnFin').bind('click', function() {
		if ($("#receta_crear").valid()) 
		 $('#receta_crear').submit();
		else {
			$.validator.focusInvalid();
		}
		return false; 
	});
});
function prevTab() {
  var e = $('#tabrecetas li.active').prev().find('a[data-toggle="tab"]');  
  e.tab('show');
	$(window).scrollTop(0);
}
function nextTab() {
  var e = $('#tabrecetas li.active').next().find('a[data-toggle="tab"]');  
  e.tab('show');
	$(window).scrollTop(0);
}
//Quitar de la lista de ingredientes seleccionados
function quitar(id)
{
	$('#fila_'+id).remove();
}
//Añadir ingredientes a la receta
function poner(id)
{
	var peso = $('#peso_encontrado_'+id).val();
	var ingrediente = $('#ingrediente_encontrado_'+id).val();
	if (peso !='')
	{
		if (isNaN(peso)== false)
		{
		$('#tabla_seleccionados tbody:last').append('<tr id="fila_'+id+'"><td><button class="btn btn-small" type="button"  onclick="javascript:quitar(\''+id+'\')">Quitar</button></td><td>'+ingrediente+'</td><td><div class="input-append"><input name="ingrediente[]" class="" type="hidden" value="'+id+'"><input class="" style="width:40px"  type="text" name="peso[]" value="'+peso+'"><span class="add-on">gr.</span></div></td></tr>');
		}
		else
		{
			alert('No es un número.');
		}
	}
	else
	{
		alert('Debe indicar el peso en gramos del ingrediente.');
	}
}
//Añadir etiqueta la receta
function poner_etiqueta(id)
{
	var etiqueta = $('#etiqueta_encontrada_'+id).val();
	if (etiqueta !='')
	{
		$('#tabla_etiquetas_seleccionadas tbody:last').append('<tr id="fila_'+id+'"><td><button class="btn btn-small" type="button"  onclick="javascript:quitar_etiqueta(\''+id+'\')">Quitar</button></td><td><input type="hidden" id="etiqueta_seleccionada_'+id+'" name="etiqueta_seleccionada_[]" value="'+id+'">'+etiqueta+'</td></tr>');
	}
	else
	{
		alert('Debe seleccionar alguna etiqueta.');
	}
}
//Quitar de la lista de ingredientes seleccionados
function quitar_etiqueta(id)
{
	$('#fila_'+id).remove();
}
</script>
{/literal}
