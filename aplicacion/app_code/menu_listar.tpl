<div class="btn-toolbar">
  <div class="btn-group">
    <a class="btn" href="index.php?page=menu_crear"><img src='theme/minica/images/icons/small/grey/frames.png' /> <span>Crear menú</span></a>
    <a class="btn" href="index.php?page=menu_buscar"><img src='theme/minica/images/icons/small/grey/magnifying_glass.png' /><span>Buscar menú</span></a>
  </div>
</div>

{if $menus}
  <div class="row">

    <div class="span4"> 
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
                  <a id_menu="{$menu->id}" class="enlace_menu" href="index.php?page=menu_mostrar&id_menu={$menu->id}">{$menu->nombre_es}</a>
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
        </div><!-- .widget-content -->
      </div><!-- .widget -->
    </div><!-- .span4 -->

    <div class="span8 hidden">
      <div class="widget">
        <div class="widget-header">
          <h3 id="menu_nombre"></h3>
        </div>
        <div id="menu_platos" class="widget-content">
        </div>
      </div>
    </div><!-- .span8 -->

  </div><!-- .row -->
{else}
  <div class="alert alert_blue">
    <img height="24" width="24" src="theme/minica/images/icons/small/white/alert_2.png">
    Todavía no has creado o marcado como favorito ningún menú
  </div>
{/if}

<!-- Comienza la fiesta del jQuery -->
{literal}
<script>
  $(".enlace_menu").hover(function(){ 
    var id_menu = $(this).attr("id_menu");
    vistaPreviaMenu(id_menu);
    });

  function vistaPreviaMenu(id_menu)
  {
    console.log(id_menu);
  }
</script>
{/literal}
