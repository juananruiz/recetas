<div class="tab-content">
  <table class="table table-striped table-bordered table-condensed"> 
    <tbody>
      {foreach $recetas as $receta}
        <tr>
          <td>
            <a class="receta" xxxhref="index.php?page=receta_mostrar&id_receta={$receta->id}" 
              id_receta="{$receta->id}">{$receta->nombre_es}</a>
            <i class="icon-arrow-right pull-right"></i>
          </td>
        </tr>
      {/foreach}
    </tbody>
  </table>
</div><!-- /tab-content -->
