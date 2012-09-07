<div class="row">
<div class="span2">
<div class="btn-group btn-group-vertical">
  <a class="btn" href="index.php?page=menu_crear"><img src='theme/minica/images/icons/small/grey/frames.png' /> <span>Crear menú</span></a>
  <a class="btn" href="index.php?page=menu_buscar"><img src='theme/minica/images/icons/small/grey/magnifying_glass.png' /><span>Buscar menú</span></a>
</div>
</div>

{if $menus}
<div class="span6"> 
  <div class="widget widget-table">
    <div class="widget-header">
      <h3>Tus menús</h3>
    </div>
    <div class="widget-content">
      <table class="table table-striped table-bordered"> 
      <tbody>
        {foreach $menus as $menu}
          <tr>
            <td>
              <a href="index.php?page=menu_mostrar&id_menu={$menu->id}">{$menu->nombre_es}</a>
              {if $menu->etiquetas}
                <ul class="etiquetas">
                  {foreach $etiquetas as $etiqueta}
                    <li>{$etiqueta}</li>
                  {/foreach}
                </ul>
              {/if}
            </td>
          </tr>
        {/foreach}
      </tbody>
      </table>
    </div>
  </div>
  {else}
    <div class="alert alert_blue">
      <img height="24" width="24" src="theme/minica/images/icons/small/white/alert_2.png">
      Todavía no has creado o marcado como favorito ningún menú
    </div>
  {/if}
</div>
</div>

