{foreach from=$etiquetas item=item}
	<tr>
		<td>{$item->nombre_es}<input type="hidden" name="etiqueta_encontrada_{$item->id}" id="etiqueta_encontrada_{$item->id}"  value="{$item->nombre_es}"></td>
		<td>
			<button value="{$item->id}" class="btn btn-small" type="button" id="boton_seleccionar" onclick="javascript:poner_etiqueta({$item->id})">Añadir</button>
		</td>
	</tr>
	{/foreach}

