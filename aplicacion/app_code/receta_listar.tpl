  <a class="comando" href="index.php?page=receta_crear"><img src="theme/minica/images/icons/small/grey/note_book.png" alt=""><span>Agregar receta</span></a>

  <ul class="nav nav-tabs" id="tabrecetas">
    <li class="active"><a href="#carne">Carnes</a></li>
    <li><a href="#aves">Aves</a></li>
    <li><a href="#verdura">Verduras</a></li>
    <li><a href="#arroz">Arroz, cereales, pasta</a></li>
    <li><a href="#legumbres">Legumbres</a></li>
    <li><a href="#ensalada">Ensaladas</a></li>
  </ul>

  <div class="tab-content">
    <div class="tab-pane active" id="carne">
    {if $recetas}
      <table class="table table-striped table-condensed"> 
        <thead>
          <tr>
            <th>Nombre</th>
          </tr>
        </thead>
        <tbody>
          {foreach $recetas as $receta}
            <tr class="gradeX">
              <td><a href="index.php?page=receta_mostrar&id_receta={$receta->id}">{$receta->nombre_es}</a></td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    {else}
      <div class="alert alert_blue">
        <img height="24" width="24" src="theme/danpin/images/icons/small/white/alert_2.png">
        No existen recetas que cumplan los criterios de búsqueda. Prueba con menos opciones.
      </div>
    {/if}
    </div>
    <div class="tab-pane" id="aves">
      <p>La gallina cocorocó. La gallina dijo eureka!</p>
    </div>
  </div>
    
<script>
  $('#tabrecetas a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });

  $(function () {
    $('#myTab a:last').tab('show');
  });
</script>
