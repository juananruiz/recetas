{$dia_anterior = 0}
{$momento_anterior = 0}

{foreach $menus_recetas as $menu_receta}
  {if $menu_receta->id_dia > 0}
    {if $dia_anterior != $menu_receta->id_dia}
      <h3>{$menu_receta->dia->nombre_es}</h3>
    {/if}

    {if $momento_anterior != $menu_receta->id_momento}
      <h4>{$menu_receta->momento->nombre_es}</h4>
    {/if}

      <span class="nombre_receta">{$menu_receta->receta->nombre_es}</span>

    {$dia_anterior = $menu_receta->id_dia}
    {$momento_anterior = $menu_receta->id_momento}
  {/if}
{/foreach}
