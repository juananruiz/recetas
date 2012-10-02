<style>
  .dia {
    background:white;
    float:left;
    margin:5px;
    padding:0px;
    height:300px;
    border: 0;
  }

  .dia h2 {
    font-size: 1em;
    color: #333;
    padding: 3px;
    margin: 0px;
    margin-bottom: 5px;
    line-height: 1em;
    text-align: center;
    text-shadow:0px 0px 0px #FFFFCC;
    background: #E9E9E9;
    background:-moz-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%); /* FF3.6+ */
    background:-webkit-gradient(linear, left top, left bottom, color-stop(0%,#FAFAFA), color-stop(100%,#E9E9E9)); /* Chrome,Safari4+ */
    background:-webkit-linear-gradient(top, #FAFAFA 0%,#E9E9E9 100%); /* Chrome10+,Safari5.1+ */
    background:-o-linear-gradient(top, #FAFAFA 0%,#E9E9E9 100%); /* Opera11.10+ */
    background:-ms-linear-gradient(top, #FAFAFA 0%,#E9E9E9 100%); /* IE10+ */
    background:linear-gradient(top, #FAFAFA 0%,#E9E9E9 100%); /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9');
    -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9')";
    border: 1px solid #D5D5D5;
    -webkit-border-top-left-radius: 4px;
    -webkit-border-top-right-radius: 4px;
    -moz-border-radius-topleft: 4px;
    -moz-border-radius-topright: 4px;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    -webkit-background-clip: padding-box;
  }
  
  .dia h3 {
    font-size: 1em;
    color: #444;
    margin: 4px 8px;
    text-shadow:0px 0px 0px #FFFFCC;
  }
  
  #reserva {
    border: 0;
  }

  div.main_container .receta {
    margin: 3px 4px;
  }

  .resumen {
    display: block;
    color: #333;
    background: #eee;
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

<div class="row">
  <div class="widget">
    <div class="widget-content">
      <div class="span2">
          <button class="btn btn-primary btn-xlarge" id="grabar">Grabar menú</button>
      </div>
      <div class="span2">
          <p>Calorías: 1950 kcal (95% DDR)</p>
      </div>
      <div class="span2">
          <p>Proteinas: 500gr (75% DDR)</p>
      </div>
      <div class="span2">
          <p>Carbohidratos: 400 gr (63% DDR)</p>
      </div>
      <div class="span2">
          <p>Grasas: 278 gr (85% DDR)</p>
      </div>
    </div><!-- .widget-content -->
  </div><!-- .widget -->
</div><!-- .row -->

<div class="modal hide fade" id="dialogo-grabar">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Grabar menú</h3>
  </div>
    <form class="validate" id="graba_menu" method="post">
  <div class="modal-body">
      <fieldset>
        <div class="control-group">
          <label class="control-label" for="nombre">Nombre del menú</label>
          <div class="controls">
            <input class="input-xxlarge" type="text" id="nombre" name="nombre" placeholder="Elige un nombre que te ayude a reconocer este menú">
          </div>
        </div>
      </fieldset>  
    </form>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn">Close</a>
    <a href="#" class="btn btn-primary">Save changes</a>
  </div>
</div>

<div class="container">
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
    $('#dialogo-grabar').modal();
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
