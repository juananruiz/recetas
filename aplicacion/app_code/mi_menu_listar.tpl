<div class="box grid_16 single_datatable">
  <div class="button_bar clearfix">
    <ul class="clearfix">
      <li class><a href="index.php?page=menu_crear"><img src='theme/minica/images/icons/small/white/frames.png' /> Crear menú</a></li>
      <li class><a href="index.php?page=menu_buscar"><img src='theme/minica/images/icons/small/white/magnifying_glass.png' /> Buscar menú</a></li>
    </ul>
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
          <td><a href="index.php?page=menu_mostrar&id_menu={$menu->id}">Mostrar</a></td>
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

