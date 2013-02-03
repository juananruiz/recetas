<div class="tabbable tabs-left">
	 <ul class="nav nav-tabs" id="etiquetas_all">
		{foreach from=$familias item=familia}
		<li><a href="#familia_{$familia->id}" data-toggle="tab">{$familia->nombre_es}</a></li>
		{/foreach}
	</ul>
	<div class="tab-content">
	{foreach from=$familias item=familia}
		<div class="tab-pane" id="familia_{$familia->id}">
	<table class="table table-hover table-striped">
		<thead>
		<tr><th style="width:85%"></th><th style="width:15%"></th></tr>
		</thead>
		<tbody>
		{foreach from=$familia->etiquetas item=etiqueta}
			<tr>
				<td>
					{$etiqueta->nombre_es}
					<input type="hidden" name="etiqueta_encontrada_{$etiqueta->id}" 
					id="etiqueta_encontrada_{$etiqueta->id}"  value="{$etiqueta->nombre_es}">
				</td>
				<td>
					<button value="{$etiqueta->id}" class="btn btn-small" 
					type="button" id="boton_seleccionar" 
					onclick="javascript:poner_etiqueta({$etiqueta->id})">Añadir</button>
				</td>
		</tr>
		{/foreach}
		</tbody>
	</table>
		</div>
	{/foreach}
	</div>
</div>
<script>
$(function () {
	$('#etiquetas_all a:first').tab('show');
});
</script>
