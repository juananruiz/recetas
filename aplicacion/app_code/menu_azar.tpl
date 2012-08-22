<style>
  .resumen {
    display: block;
    color: #333;
    background: wheat;
    border: 1px solid darkorange;
    width: 210px;
    padding: 3px;
    margin:5px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }

  .detalle {
    display: none;
    color: #333;
    background: linen;
    border: 1px solid darkorange;
    border-top: 0;
    width: 210px;
    padding: 3px;
    margin:5px;
    margin-top:0;
  }
  
  .descartar {
    float: left;
    background: #FCCC2E;
    color: #333;
    font-size: 0.9em;
    line-height: 1;
    border:1px solid #999;
    padding:2px 4px;
    margin-right: 5px;
    text-shadow:0px 0px 0px #FCCC2E;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }

  .dia {
    float:left;
    margin:10px;
    padding:10px;
  }

  #reserva {
    border: 1px dashed #333;
  }
</style>
<button id="grabar">Grabar menú</button>
<div class="main_cotainer">
<div class="dia" id="Lunes">
<h3>Lunes</h3>
  {foreach $lunes as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia">
<h3>Martes</h3>
  {foreach $martes as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia">
<h3>Miércoles</h3>
  {foreach $miercoles as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia">
<h3>Jueves</h3>
  {foreach $jueves as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia">
<h3>Viernes</h3>
  {foreach $viernes as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia">
<h3>Sábado</h3>
  {foreach $sabado as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia">
<h3>Domingo</h3>
  {foreach $domingo as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
			<div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>

<div class="dia" id="reserva">
  <h3>Reserva</h3>
  {foreach $reserva as $plato}
    <div class="box plato ui-sortable" id="{$plato->receta->id}">
      <div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre">{$plato->receta->nombre_es}</span>
      </div>
      <div class="detalle">
        <ul>
          <li>{$plato->receta->descripcion_es}</li>
          <li><strong>Calorías:</strong> {$plato->receta->kilocalorias}kcal</li>
          <li><strong>Carbohidratos:</strong> {$plato->receta->carbohidratos}gr</li>
          <li><strong>Grasas:</strong> {$plato->receta->grasas}gr</li>
          <li><strong>Proteínas:</strong> {$plato->receta->proteinas}gr</li>
        </ul>
      </div>
    </div>
  {/foreach}
</div>
</div> <!-- .main_container -->
<script>
  $(document).ready(function(){
    $(".aviso").fadeOut(5000);
    $(".error").fadeOut(5000);
    $(".resumen span.nombre").click(function(){
      $(this).parent().css("margin-bottom", "0");
      $(this).parent().next().slideToggle("slow");
    });
    $(".descartar").click(descartar);
    $("#grabar").click(grabarMenu);
  });
    
  function descartar(){
    $(this).parent().fadeOut(500);
    $(this).parent().next().fadeOut(500);
    //$(this).parent().parent().html("<img src='theme/minica/images/icons/large/grey/cloud_lightning.png'>");
    $(this).parent().parent().remove();
  };

  // Ahora mismo graba sin tener en cuenta los días, sólo los platos.
  // Espero pronto poder grabarlo todo
  function grabarMenu(){
    var menuazar = crearAlmacenLocal("menuazar"); 
    var menuazarAjax = "nombre_es=MenuJuanan";
    $(".plato").each(function(){
      var plato = $(this).attr("id");
      // Resto todo
      menuazar.push(plato); 
      menuazarAjax += "&platos[]=" + plato;
    });
    // Grabamos en local (por experimentar)
    localStorage.setItem("menuazar", JSON.stringify(menuazar));
    // Grabamos en remoto (esta es la buena)
    grabarRemoto(menuazarAjax);
  };

  function grabarRemoto(datos){
    var request = new XMLHttpRequest();
    var page = "index.php?page=menu_grabar";
    request.open("POST", page, true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(datos);
  };
  
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
