<style>
  .plato {
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
    float: right;
    background: #FCCC2E;
    color: #333;
    font-size: 0.9em;
    line-height: 1;
    border:1px solid #999;
    padding:2px;
    text-shadow:0px 0px 0px #FCCC2E;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }
</style>

<h3>Lunes</h3>
<div class="lunes">
  {foreach $lunes as $plato}
    <div class="plato"><a href="#" class="descartar">X</a><span class="nombre">{$plato->receta->nombre_es}</span></div>
    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<h3>Martes</h3>
<div class="martes">
  {foreach $martes as $plato}
    <div class="plato"><a href="#" class="descartar">X</a><span class="nombre">{$plato->receta->nombre_es}</span></div>

    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<h3>Miércoles</h3>
<div class="miercoles">
  {foreach $miercoles as $plato}
    <div class="plato"><a href="#" class="descartar">X</a><span class="nombre">{$plato->receta->nombre_es}</span></div>

    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<h3>Jueves</h3>
<div class="jueves">
  {foreach $jueves as $plato}
    <div class="plato"><span>{$plato->receta->nombre_es}</span></div>
    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<h3>Viernes</h3>
<div class="viernes">
  {foreach $viernes as $plato}
    <div class="plato"><span>{$plato->receta->nombre_es}</span></div>
    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<h3>Sábado</h3>
<div class="sabado">
  {foreach $sabado as $plato}
    <div class="plato"><span>{$plato->receta->nombre_es}</span></div>
    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<h3>Domingo</h3>
<div class="domingo">
  {foreach $domingo as $plato}
    <div class="plato"><span>{$plato->receta->nombre_es}</span></div>
    <div class="detalle">{$plato->receta->descripcion_es}</div>
  {/foreach}
</div>

<script>
  $(document).ready(function(){
    $(".aviso").fadeOut(5000);
    $(".error").fadeOut(5000);
    $(".plato span.nombre").click(function(){
      $(this).closest(".detalle").fadeToggle("slow");
      alert($(this).closest().html());
      $(this).css("margin-bottom", "0");
    });
    $(".descartar").click(function(){
      $(this).parent().fadeOut(500);
      $(this).closest(".detalle").fadeOut(500);
    });
  });
</script>
