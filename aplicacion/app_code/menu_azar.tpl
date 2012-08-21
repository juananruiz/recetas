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
<div class="main_cotainer">
<div class="dia">
<h3>Lunes</h3>
  {foreach $lunes as $plato}
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
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
    <div class="box plato ui-sortable">
      <div class="resumen">
        <span class="descartar">X</span>
        <a href="#" class="grabber"></a>
        <span class="nombre {$plato->etiqueta->nombre_es}">{$plato->receta->nombre_es}</span>
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
      $(this).parent().next().fadeToggle("slow");
    });
    $(".descartar").click(descartar);
    
    function descartar(){
      $(this).parent().fadeOut(500);
      $(this).parent().next().fadeOut(500);
    };
  });
</script>
