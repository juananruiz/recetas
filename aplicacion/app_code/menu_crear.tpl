<div class="row">
<div class="span12">
  <div class="widget">
    <div class="widget-header">
      <h3>Bautiza tu menú</h3>
    </div>
    <div class="widget-content">
      <form method="post" class="form-inline validate_form">
        <label>Nombre del menú</label>
        <input type="text" name="nombre_es" id="nombre_es" class="input-xxlarge required" />
        <button class="btn btn-primary" type="button" id="grabar">Grabar</button>
        <button class="btn" type="reset" id="cancelar" onclick="history.back()">Cancelar</button>
      </form>
    </div><!-- /widget-content -->
  </div><!-- /widget -->
</div><!-- /span12 -->
</div><!-- /row -->

<div class="row">
  <div class="span6">
  <div class="widget">
  <div class="widget-header">
    <h3>Elige los platos</h3>
  </div>
    <div class="widget-content tabbable tabs-left">
      <ul class="nav nav-tabs" id="tabrecetas">
        {foreach $recetas as $clave => $etiquetas}
          <li><a href="#{$clave}">{$etiquetas[0]->etiqueta->nombre_es}</a></li>
        {/foreach}
      </ul>

      <div class="tab-content">
        {foreach $recetas as $clave => $etiquetas}
          <div class="tab-pane" id="{$clave}">
            <table class="table table-striped table-bordered table-condensed"> 
              <tbody>
                {foreach $etiquetas as $etiqueta}
                  <tr>
                    <td>
                      <a class="receta" href="index.php?page=receta_mostrar&id_receta={$etiqueta->receta->id}" 
                        id_receta="{$etiqueta->receta->id}">{$etiqueta->receta->nombre_es}</a>
                      <i class="icon-arrow-right pull-right"></i>
                    </td>
                  </tr>
                {/foreach}
              </tbody>
            </table>
          </div>
        {/foreach}
      </div><!-- /tab-content -->
    </div><!-- /widget-content -->
  </div><!-- /widget -->
  </div><!-- /span6 -->

  <div class="span6">
  <div class="widget">
    <div class="widget-header">
      <h3>Organiza tu menú</h3>
    </div>
    <div class="widget-content">
      <div id="platos-seleccionados">
        <ul class="nav nav-tabs" id="tabdias">
          {foreach $dias as $dia}
            <li><a href="#{$dia->id}">{$dia->nombre_es|substr:0:3}</a></li>
          {/foreach}
        </ul>

        <div class="tab-content">
          {foreach $dias as $dia}
            <div class="tab-pane" id="{$dia->id}">
              {section name="momento" start=1 loop=3}
                <div class="momento">
                  <select style="height: 20px; line-height: 20px; margin: 5px;">
                    {foreach $momentos as $momento}
                      <option value="{$momento->id}" {if $momento->id == $smarty.section.momento.index * 3}selected{/if}>{$momento->nombre_es}</option>
                    {/foreach}
                  </select>
                  <span class="pull-right"><a href="#"><i class="icon-plus"></i><i class="icon-remove"></i></a></span>
                  <div class="receptor"></div>
                </div><!-- .momento -->
              {/section}
            </div><!-- .tab-pane -->
          {/foreach}
        </div><!-- .tab-content -->
      </div>

    </div><!-- .widget-content -->
  </div><!-- .widget -->
  </div><!-- .span6 -->
</div><!-- /row -->

{literal}
<script>
  $(function () {
    $('#tabrecetas a:first').tab('show');
    $('#tabdias a:first').tab('show');
    $('.momento:first .receptor:first').toggleClass('activo');
  });

  $('#tabrecetas a').click(function (evento) {
    evento.preventDefault();
    $(this).tab('show');
  });

  $('#tabdias a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
    $('.activo').removeClass('activo');
    $('.active .momento:first .receptor:first').toggleClass('activo');
  });

  $('.icon-arrow-right').click(function()
  {
    $(this).prev('a').clone().appendTo('.activo').wrap("<div class='plato-nombre' />").before('<i class="icon-move"></i>&nbsp;').after('<i class="icon-remove pull-right"></i>').removeClass("receta").addClass("plato");
    $('.icon-remove').bind('click', function()
    {
      $(this).parent().fadeOut(500);
      $(this).parent().delay(500).remove();
    });
    return false;
  });

  $('.icon-remove').bind('click', function()
  {
    $(this).parent().fadeOut(500);
    $(this).parent().remove();
  });

  $('.receptor').click(function()
  {
    $('.receptor').removeClass('activo');  
    $(this).toggleClass('activo');  
  });

  $('#grabar').click(function(evento)
    {
    evento.preventDefault();
    generarMenuJson();
    });

// ----- Módulo de grabación -----  //

  // EN DESUSO 
  function grabarMenu(){
    var menuazar = crearAlmacenLocal("menuazar"); 
    var menuazarAjax = "nombre_es=MenuJuanan";
    $(".receta").each(function(){
      var receta = $(this).attr("id");
      // Resto todo
      menuazar.push(receta); 
      menuazarAjax += "&recetas[]=" + receta;
    });
    // Grabamos en local (por experimentar)
    localStorage.setItem("menuazar", JSON.stringify(menuazar));
    // Grabamos en remoto (esta es la buena)
    grabarRemoto(menuazarAjax);
  }

  // EN DESUSO 
  // Esta función graba con JavaScript utilizando Ajax contra un controlador php
  function grabarRemoto(datos){
    var request = new XMLHttpRequest();
    var page = "index.php?page=menu_grabar";
    request.open("POST", page, true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(datos);
  }
  
  // Prepará el menú para que se puede grabar utilizando formato JSON
  function generarMenuJson(){
    //$('#dialogo-grabar').modal();
    var platos = new Array();
    $(".plato").each(function(){
      var receta = {
        id_receta:$(this).attr("id_receta"),
        id_momento:$(this).closest(".momento").find("option:selected").attr("value"),
        id_dia:$(this).closest(".tab-pane").attr("id")
      };
      platos.push(plato);
    });
    var nombre_es = $("#nombre_es").attr("value");
    var datos = {nombre_es:nombre_es, recetas:platos};
    alert(datos);
    grabarRemotoJson(datos);
  }

  // Graba el menú en formato JSON en la base de datos utilizando AJAX
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

  // EN DESUSO 
  function crearAlmacenLocal(key) {
    var valor = localStorage.getItem(key);
    if (valor) {
      localStorage.removeItem(key);
    }
    valor = new Array();
    return valor;
  }
  
  // EN DESUSO 
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
