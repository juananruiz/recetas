<div class="widget single_datatable">
  <div id="dt1" class="no_margin">
    <table class="table display datatable">
      <thead>
        <tr>
          <th>Alimento</th>
          <th>Calorías</th>
          <th>Carbohidratos</th>
          <th>Grasas</th>
          <th>Proteínas</th>
        </tr>
      </thead>
      <tbody>
        {foreach $alimentos as $alimento}
          <tr class="gradeX">
            <td>{$alimento->nombre_es_singular}</td>
            <td>{$alimento->kilocalorias}</td>
            <td>{$alimento->carbohidratos}</td>
            <td>{$alimento->grasas}</td>
            <td>{$alimento->proteinas}</td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div><!-- .dt1 -->
</div><!-- .widget single_datatable -->
<script src="theme/boot/js/jquery.dataTables.min.js"></script>
