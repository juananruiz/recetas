<style>
  .dia {
    background:#FFFFCC;
    float:left;
    margin:5px;
    padding:0px;
    border: 1px solid #FCC000;
    height:300px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }

  .dia h2 {
    font-size: 1em;
    color: #333;
    background:#FFCC00;
    border: 0px;
    padding: 3px;
    margin: 0px;
    margin-bottom: 5px;
    line-height: 1em;
    text-align: center;
    text-shadow:0px 0px 0px #FFFFCC;
  }
  
  .dia h3 {
    font-size: 1em;
    color: #444;
    margin: 4px 8px;
    text-shadow:0px 0px 0px #FFFFCC;
  }
  
  #reserva {
    border: 1px dashed #FFCC00;
  }

  div.main_container .receta {
    margin: 3px 4px;
  }

  .resumen {
    display: block;
    color: #333;
    background: white;
    border: 1px solid  #FFCC00;
    width: 210px;
    padding: 3px;
    margin: 0px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    cursor: pointer;
  }

  .resumen .nombre {
    color: #555;
    font-weight: bold;
  }

  .box .resumen a.grabber {
    height: 20px;
    width: 20px;
  }

  .detalle {
    display: none;
    color: #333;
    background: white;
    border: 1px solid #FFCC00;
    border-top: 0;
    width: 210px;
    padding: 3px;
    margin: 0px;
    z-index: 999;
  }
  
  .descartar {
    float: left;
    background: #FFFFCC;
    color: #FFCC00;
    font-size: 0.9em;
    line-height: 1;
    border:1px solid #FFCC00;
    padding:2px 4px;
    margin-right: 5px;
    text-shadow:0px 0px 0px #FFFFCC;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    cursor: pointer;
  }

</style>

<div class="box grid_16 no_titlebar" style="opacity: 1; ">
  <div class="block lines" style="opacity: 1; ">
    <div class="columns clearfix">
      <div class="col_25">
        <div class="section">
          <button id="grabar">Grabar menú</button>
        </div>
      </div>
      <div class="col_25">
        <div class="section">
          <p>25% content</p>
        </div>
      </div>
      <div class="col_25">
        <div class="section">
          <p>25% content</p>
        </div>
      </div>
      <div class="col_25 on_right">
        <div class="section">
          <p>25% content</p>
        </div>
      </div>
    </div>
  </div>
</div>
--------------------------------------
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
------------------------------------
{$dia_anterior = -1}
{$momento_anterior = -1}
<div class="flat grid_16 no_titlebar">
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
  {else}
    {if $dia_anterior != $menu_receta->id_dia}
      <div class="dia" id="reserva">
        <h2>RESERVA</h2>
    {/if}
      <div class="box receta ui-sortable" id="{$receta->receta->id}">
        <div class="resumen">
          <span class="descartar">X</span>
          <a href="#" class="grabber"></a>
          <span class="nombre">{$receta->receta->nombre_es}</span>
        </div>
        <div class="detalle">
          <ul>
            <li>{$receta->receta->descripcion_es}</li>
            <li>Calorías: {$receta->receta->kilocalorias}kcal</li>
            <li>Carbohidratos: {$receta->receta->carbohidratos}gr</li>
            <li>Grasas: {$receta->receta->grasas}gr</li>
            <li>Proteínas: {$receta->receta->proteinas}gr</li>
            <li><a href="index.php?receta_mostrar&id_receta={$receta->receta->id}">Ver receta completa</a></li>
          </ul>
        </div>
      </div>
    
    {$dia_anterior = $menu_receta->id_dia}
    {$momento_anterior = $menu_receta->id_momento}
    {if $dia_anterior != $menu_receta->id_dia}
      </div>
    {/if}

    {if $momento_anterior != $menu_receta->id_momento}
      </div>
    {/if}
  {/if}
{/foreach}
------------------------------------

<div class="flat grid_16 no_titlebar">
  {foreach $comidas as $dia => $array_momentos}
    <div class="dia" id="{$dia}">
      <h2>{$dias[$dia-1]->nombre_es|upper}</h2>
      {foreach $array_momentos as $momento => $recetas}
        <div class="momento" id="{$momento}">
          <h3>{$momentos[$momento-1]->nombre_es}</h3>
          {foreach $recetas as $receta}
            <div class="box receta ui-sortable" id="{$receta->receta->id}">
              <div class="resumen">
                <span class="descartar">X</span>
                <a href="#" class="grabber"></a>
                <span class="nombre">{$receta->receta->nombre_es}</span>
              </div>
              <div class="detalle">
                <ul>
                  <li>{$receta->receta->descripcion_es}</li>
                  <li>Calorías: {$receta->receta->kilocalorias}kcal</li>
                  <li>Carbohidratos: {$receta->receta->carbohidratos}gr</li>
                  <li>Grasas: {$receta->receta->grasas}gr</li>
                  <li>Proteínas: {$receta->receta->proteinas}gr</li>
                  <li><a href="index.php?receta_mostrar&id_receta={$receta->receta->id}">Ver receta completa</a></li>
                </ul>
              </div>
            </div>
          {/foreach}
        </div>
      {/foreach}
    </div>
  {/foreach}

  <div class="dia" id="reserva">
    <h2>RESERVA</h2>
    {foreach $reserva as $receta}
      <div class="box receta ui-sortable" id="{$receta->receta->id}">
        <div class="resumen">
          <span class="descartar">X</span>
          <a href="#" class="grabber"></a>
          <span class="nombre">{$receta->receta->nombre_es}</span>
        </div>
        <div class="detalle">
          <ul>
            <li>{$receta->receta->descripcion_es}</li>
            <li>Calorías: {$receta->receta->kilocalorias}kcal</li>
            <li>Carbohidratos: {$receta->receta->carbohidratos}gr</li>
            <li>Grasas: {$receta->receta->grasas}gr</li>
            <li>Proteínas: {$receta->receta->proteinas}gr</li>
            <li><a href="index.php?receta_mostrar&id_receta={$receta->receta->id}">Ver receta completa</a></li>
          </ul>
        </div>
      </div>
    {/foreach}
  </div>
</div>

{literal}
<script>
  $(".resumen span.nombre").click(detallarReceta);
  $(".descartar").click(descartarReceta);
  $("#grabar").click(grabarMenuJson);
    
  function detallarReceta(){
    $(this).parent().css("border-bottom", "1px solid #EEE");
    $(this).parent().next().slideToggle("slow");
  }

  function descartarReceta(){
    $(this).parent().fadeOut(500);
    $(this).parent().next().fadeOut(500);
    //$(this).parent().parent().html("<img src='theme/minica/images/icons/large/grey/cloud_lightning.png'>");
    $(this).parent().parent().remove();
  }

  // Ahora mismo graba sin tener en cuenta los días, sólo los platos.
  // Espero pronto poder grabarlo todo
  function grabarMenu(){
    var menuazar = crearAlmacenLocal("menuazar"); 
    var menuazarAjax = "nombre_es=MenuJuanan";
    $(".receta").each(function(){
      var receta = $(this).attr("id");
      // Resto todo
      menuazar.push(receta); 
      menuazarAjax += "&recetas[]=" + receta;
      $("#grabar").attr("disabled","disabled");
      $("#grabar").css("background","silver");
      $("#grabar").css("border","1px dashed gray");
      $("#grabar").css("cursor","default");
    });
    // Grabamos en local (por experimentar)
    localStorage.setItem("menuazar", JSON.stringify(menuazar));
    // Grabamos en remoto (esta es la buena)
    grabarRemoto(menuazarAjax);
  }

  // Esta función graba con JavaScript utilizando Ajax contra un controlador php
  function grabarRemoto(datos){
    var request = new XMLHttpRequest();
    var page = "index.php?page=menu_grabar";
    request.open("POST", page, true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(datos);
  }
  
  function grabarMenuJson(){
    var recetas = new Array();
    $(".receta").each(function(){
      var receta = {
        id_receta:$(this).attr("id"),
        id_momento:$(this).parent().attr("id"),
        id_dia:$(this).parent().parent().attr("id")
      };
      recetas.push(receta);
    });
    var datos = {nombre_es:"MenuJuananJson", recetas:recetas};
    grabarRemotoJson(datos);
  }

  function grabarRemotoJson(datos){
    $.ajax({ 
      type: "POST", 
      url: "index.php?page=menu_grabar_json", 
      data: datos,
      dataType: "json", 
      success: deshabilitarGrabar()   
    }); 
  }

  function deshabilitarGrabar(){
    $("#grabar").attr("disabled","disabled");
    $("#grabar").css("background","silver");
    $("#grabar").css("border","1px dashed gray");
    $("#grabar").css("cursor","default");
  }

  function crearAlmacenLocal(key) {
    var valor = localStorage.getItem(key);
    if (valor) {
      localStorage.removeItem(key);
    }
    valor = new Array();
    return valor;
  }
  
  //Esta me sirve para cuando quiero mantener el almacen siempre en memoria local
  function getAlmacenLocal(key) { 
    var valor = localStorage.getItem(key); 
    if (valor == null || valor == "") { 
      valor = new Array();
    }	
    else { 
      valor = JSON.parse(valor); 
    }	
    return valor;
  }
</script>
{/literal}