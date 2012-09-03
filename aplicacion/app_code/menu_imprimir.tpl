  <div class="flat_area grid_8">
    <div class="section">
    {$dia_anterior = 0}
    {$momento_anterior = 0}

    {foreach $menus_recetas as $menu_receta}
      {if $menu_receta->id_dia > 0}
        {if $dia_anterior != $menu_receta->id_dia}
          {if $dia_anterior > 0}
            </ul>
          {/if}
          <h2 style="font-size: 1.2em;">{$menu_receta->dia->nombre_es}</h2>
          {$ultimo_impreso = "dia"}
        {/if}

        {if $momento_anterior != $menu_receta->id_momento OR $dia_anterior != $menu_receta->id_dia}
          {if $ultimo_impreso == "momento"}
            </ul>
          {/if}
          <h3 style="font-size: 1em;">{$menu_receta->momento->nombre_es}</h3>
            <ul>
          {$ultimo_impreso = "momento"}
        {/if}

          <li class="nombre_receta">{$menu_receta->receta->nombre_es}</li>

        {$dia_anterior = $menu_receta->id_dia}
        {$momento_anterior = $menu_receta->id_momento}
      {/if}
    {/foreach}
    </ul>
    </div>
  </div>

  <div class="flat_area grid_8">
  <div class="section">
  <h2>La lista de la compra</h2>
    <ul>
      <li>2 kgs de tomates</li>
      <li>1 pechuga de pollo</li>
      <li>4 calabacines</li>
      <li>1 litro de leche</li>
      <li>500 gr macarrones</li>
      <li>200 gr garbanzos</li>
      <li>300 gr sal marina</li>
      <li>730 gr aceite de oliva</li>
      <li>400 gr atún, lata</li>
      <li>150 gr harina</li>
      <li>14 huevos</li>
      <li>350 gr jamón de york</li>
    </ul>
  </div>
  </div>
