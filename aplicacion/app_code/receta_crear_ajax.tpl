	{foreach from=$ingredientes item=item}
	<tr>
		<td>{if $item->nombre_es_singular != NULL}{$item->nombre_es_singular}{else}{$item->nombre_en}{/if}<input type="hidden" name="ingrediente_encontrado_{$item->id}" id="ingrediente_encontrado_{$item->id}"  value="{if $item->nombre_es_singular != NULL}{$item->nombre_es_singular}{else}{$item->nombre_en}{/if}" id="{if $item->nombre_es_singular != NULL}{$item->nombre_es_singular}{else}{$item->nombre_en}{/if}"></td><td>
		<div class="input-append">
			<input class="peso" id="peso_encontrado_{$item->id}" name="peso_encontrado_{$item->id}" style="width:40px" type="text" placeholder="Peso"><span class="add-on">gr.</span>
		</div>
		</td>
		<td>
			<button value="{$item->id}" class="btn btn-small" type="button" id="boton_seleccionar" onclick="javascript:poner({$item->id})">Añadir</button>
		</td>
	</tr>
	{/foreach}

