<div class="flat_area grid_16 single_datatable">
  <div class="button_bar clearfix">
      <a class="comando" href="index.php?page=menu_crear"><img src='theme/minica/images/icons/small/white/frames.png' /><span>Crear menú</span></a>
      <a class="comando" href="index.php?page=menu_buscar"><img src='theme/minica/images/icons/small/white/magnifying_glass.png' /><span>Buscar menú</span></a>
  </div>

  {if $menus}
  <div id="dt1" class="no_margin">
    <table class="display datatable"> 
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      {foreach $menus as $menu}
        <tr class="gradeX">
          <td>
            {$menu->nombre_es}
            {if $menu->etiquetas}
              <ul class="etiquetas">
                {foreach $etiquetas as $etiqueta}
                  <li>{$etiqueta}</li>
                {/foreach}
              </ul>
            {/if}
          </td>
          <td>
            <a href="index.php?page=menu_mostrar&id_menu={$menu->id}">Mostrar</a>
            <a href="index.php?page=menu_imprimir&id_menu={$menu->id}">Imprimir</a>
          </td>
        </tr>
      {/foreach}
    </tbody>
    </table>
  </div>
  {else}
    <div class="alert alert_blue">
      <img height="24" width="24" src="theme/minica/images/icons/small/white/alert_2.png">
      Todavía no has creado o marcado como favorito ningún menú
    </div>
  {/if}
</div>

