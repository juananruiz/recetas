<div class="box grid_16 single_datatable">
  <div class="button_bar clearfix">
    <a class="comando" href="index.php?page=receta_crear"><img src="theme/minica/images/icons/small/grey/note_book.png" alt=""><span>Agregar receta</span></a>
  </div>

  {if $recetas}
  <div id="dt1" class="no_margin">
    <table class="display datatable"> 
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      {foreach $recetas as $receta}
        <tr class="gradeX">
          <td>{$receta->nombre_es}</td>
          <td><a href="index.php?page=receta_mostrar&id_receta={$receta->id}">Mostrar</a></td>
        </tr>
      {/foreach}
    </tbody>
    </table>
  </div>
  {else}
    <div class="alert alert_blue">
      <img height="24" width="24" src="theme/danpin/images/icons/small/white/alert_2.png">
      No existen recetas que cumplan los criterios de búsqueda. Prueba con menos opciones.
    </div>
  {/if}
</div>

