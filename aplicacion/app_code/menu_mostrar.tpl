<!-- Cabecera con botones y resumen nutritivo -->
<div class="row">
<div class="span12">
  <div class="widget">
    <div class="widget-header">
      <h3>Menú: {$plan_menu.menu->nombre_es}</h3>
    </div>
    <div class="widget-content">
      <div class="span2">
        <button class="btn btn-primary btn-xlarge" id="grabar">Grabar menú</button>
        <a class="btn" href="index.php?page=menu_imprimir&id_menu={$plan_menu.menu->id}" 
          style="margin-top:10px;"><i class="icon-print"></i> Imprimir</a>
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
  </div><!-- .span12 -->
</div><!-- .row -->

<!-- Dias, momentos y platos -->
<div class="row">
{foreach $plan_menu.dias as $id_dia => $momentos}
  <div class="span2">
    <div class="widget widget-mini">
      <div class="widget-header">
        <h3 id_dia="{$id_dia}">{$lista_dias[$id_dia]->nombre_es}</h3>
      </div>
      <div class="widget-content">
        {foreach $momentos as $id_momento => $recetas}
          <span id_momento="{$id_momento}">{$lista_momentos[$id_momento]->nombre_es}</span>
          {foreach $recetas as $receta}
            <div class="plato ui-sortable" id_receta="{$receta->id}">
              <div class="plato-resumen">
                <button type="button" class="close" style="line-height:15px;">×</button>
                <span class="plato-nombre">{$receta->nombre_es}</span>
              </div>
              <div class="plato-detalle">
                  {$receta->descripcion_es}
                <ul class="unstyled">
                  <li><b>Calorías:</b> {$receta->kilocalorias}kcal</li>
                  <li><b>Carbohidratos:</b> {$receta->carbohidratos}gr</li>
                  <li><b>Grasas:</b> {$receta->grasas}gr</li>
                  <li><b>Proteínas:</b> {$receta->proteinas}gr</li>
                </ul>
                <a href="#recetaModal" role="button" data-toggle="modal">Ver Receta</a>
                <!-- <a href="index.php?receta_mostrar&id_receta={$receta->id}">Ver receta completa</a> -->
              </div><!-- .plato-detalle -->
            </div><!-- .plato ui-sortable-->
          {/foreach}
        {/foreach}
      </div><!-- .widget-content -->
    </div><!-- .widget -->
  </div><!-- .span2 -->
{/foreach}
</div><!-- .row -->

<!-- Ventana modal para mostrar una receta -->
 
<!-- Modal -->
<div id="recetaModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="recetaModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="recetaModalLabel">Nombre Receta</h3>
  </div>
  <div class="modal-body">
    <h4>Ingredientes</h4>
    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>

    <h4>Preparación</h4>
    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>

  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal">Cerrar</button>
  </div>
</div>

<!-- Javascript para darle vidilla -->
{literal}
<script>
  $(".plato-nombre").click(detallarReceta);
  $(".close").click(descartarReceta);
  $("#grabar").click(grabarMenuJson);
    
  function detallarReceta(){
    $(this).parent().css("border-bottom", "1px solid #EEE");
    $(this).parent().css("border-bottom", "0px");
    $(this).parent().next().slideToggle("slow");
  }

  function descartarReceta(){
    $(this).parent().fadeOut(500);
    $(this).parent().next().fadeOut(500);
    $(this).parent().parent().remove();
  }

  // Ahora mismo graba sin tener en cuenta los días, sólo los platos.
  // Espero pronto poder grabarlo todo
  function grabarMenu(){
    var menuazar = crearAlmacenLocal("menuazar"); 
    var menuazarAjax = "nombre_es=MenuJuanan";
    $(".plato-nombre").each(function(){
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
    localStorage.setItem("menuauto", JSON.stringify(menuazar));
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
    $(".plato-nombre").each(function(){
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
