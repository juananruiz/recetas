<div class="box grid_16">
	<div class="toggle_container">
		<div class="block">
      <div class="button_bar clearfix">
        <button class="light send_right" type="reset" value="Cancelar" name="proceso_cancel" 
          onclick="history.back()">
          <div class="ui-icon ui-icon-closethick"></div>
          <span>Cancelar</span>
        </button>
      </div>
			<form method="post" action="index.php?page=receta_grabar" class="validate_form">
			  <fieldset class="label_side">
				<label>Nombre largo</label>
				<div>
					<input type="text" name="nombre_largo" class="required" />
					<div class="required_tag"></div>
				</div>
			  </fieldset> 
			  <fieldset class="label_side">
				<label>Nombre corto</label>
				<div>
					<input type="text" name="nombre_corto" class="required" />
					<div class="required_tag"></div>
				</div>
			  </fieldset> 
        <!--
        <div class="columns clearfix">
          <div class="col_50">
            <fieldset>
            <label>Propietario</label>
              <div>
                <select name="id_propietario" class="select_box">
                  {foreach from=$usuarios_entidad item=usuario_entidad}
                    <option value="{$usuario_entidad->usuario->id}">{$usuario_entidad->usuario->nombre} {$usuario_entidad->usuario->apellidos} {if $usuario_entidad->usuario->puesto} - {$usuario_entidad->usuario->puesto} {/if}
                    </option>
                  {/foreach}              
                  </select>
            </div>
            </fieldset> 
          </div>
          <div class="col_50">
            <fieldset>
              <label>Tipo de proceso</label>
              <div>
                <select name="alcance" class="select_box">
                    <option value="Indefinido">Indefinido ...</option>
                  <option value="Apoyo">Apoyo</option>
                  <option value="Operativo">Operativo</option>
                  <option value="Directivo/Gestion">Directivo/Gestión</option>
                </select>   
            </div>
            </fieldset> 
          </div>
        </div>
        -->
			  <fieldset class="label_side">
          <label>Preparación</label>
          <div>
            <textarea  class="autogrow" name="preparacion"></textarea>
          </div>
			  </fieldset>   
			  <fieldset class="label_side">
          <label>Variantes</label>
          <div>
					<textarea class="autogrow" name="variantes"></textarea>
				</div>
			  </fieldset>      
			   
			  <div class="button_bar clearfix">
					<button class="green" type="submit" value="Grabar" name="proceso_submit">
            <div class="ui-icon ui-icon-check"></div>
						<span>Grabar</span>
					</button>
          <button class="light send_right" type="reset" value="Cancelar" name="proceso_cancel" onclick="history.back()">
            <div class="ui-icon ui-icon-closethick"></div>
            <span>Cancelar</span>
          </button>
				</div>    
			</form>
		</div>
	</div>
</div>
