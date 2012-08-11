  <style>
  .miniboton {
    float: right;
    background: #FCCC2E;
    color: #333;
    font-size: 0.9em;
    line-height: 1;
    border:1px solid #999;
    padding:2px;
    margin:0.4em 0;
    text-shadow:0px 0px 0px #FCCC2E;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }
  </style>

<div class="box grid_8 side_tabs tabs no_titlebar" style="opacity: 1; ">
  <div class="side_holder">
    <ul class="tab_sider clearfix">
      <li><a href="#entrantes">Entrantes</a></li>
      <li><a href="#sopa">Sopas y consomés</a></li>
      <li><a href="#arroz">Arroz, cereales y pasta</a></li>
      <li><a href="#ensalada">Ensaladas</a></li>
      <li><a href="#carne">Carne</a></li>
      <li><a href="#pescado">Pescado</a></li>
      <li><a href="#verdura">Verduras y hortalizas</a></li>
      <li><a href="#legumbre">Legumbres</a></li>
      <li><a href="#postres">Postres</a></li>
      <li><a href="#desayuno">Desayunos y meriendas</a></li>
      <li><a href="#pasteleria">Pastelería y bollería</a></li>
      <li><a href="#bebida">Bebidas</a></li>
    </ul>
  </div>
  <div id="entrantes" class="block">
    <div class="section">
      <ul>
        {foreach $recetas as $receta}
          <li style="clear:both;">{$receta->nombre_es} <span class="miniboton">Agregar</span></li>
        {/foreach}
      </ul>
    </div>
  </div>
  <div id="sopa" class="block">
    <div class="section">
      <ul>
        {foreach $recetas as $receta}
          <li style="clear:both;">{$receta->nombre_es} <span class="miniboton">Agregar</span></li>
        {/foreach}
      </ul>
    </div>
  </div>
  <div id="arroz" class="block">
    <div class="section">
      <ul>
      {foreach $recetas as $receta}
        <li style="clear:both;">{$receta->nombre_es} <span class="miniboton">Agregar</span></li>
      {/foreach}
      </ul>
    </div>
  </div>
  <div id="ensalada" class="block">
    <div class="section">
      <p>Content goes here.</p>
    </div>
  </div>
  <div id="carne" class="block">
    <div class="section">
      <p>Content goes here.</p>
    </div>
  </div>
  <div id="pescado" class="block">
    <div class="section">
      <p>Content goes here.</p>
    </div>
  </div>
  <div id="verdura" class="block">
    <div class="section">
      <p>Content goes here.</p>
    </div>
  </div>
  <div id="legumbre" class="block">
    <div class="section">
      <p>Content goes here.</p>
    </div>
  </div>
</div>
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
				<label>Nombre</label>
				<div>
					<input type="text" name="nombre_es" class="required" />
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
