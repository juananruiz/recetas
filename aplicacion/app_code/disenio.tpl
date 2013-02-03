<p>La mejor dieta es aquella que hacemos con alegría</p>

<h2>Título 2</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<h3>Título 3</h3>
<pre>
Esto es un supertexto preformateado
  Esto es un supertexto preformateado
    Esto es un supertexto preformateado
</pre>

<h4>Las listas de toda la vida</h4>
<ul>
  <li>Lista con bolitas</li>
  <li>Lista con bolitas</li>
  <li>Lista con bolitas</li>
  <li>Lista con bolitas</li>
</ul>

<ol>
  <li>Lista con numeritos</li>
  <li>Lista con numeritos</li>
  <li>Lista con numeritos</li>
  <li>Lista con numeritos</li>
  <li>Lista con numeritos</li>
  <li>Lista con numeritos</li>
</ol>


<div class="widget">
  <div class="widget-header">
    <h3><i class="icon-user"></i> Div class widget</h3>
  </div>
  <div class="widget-content tabbable tabs-left">
    <ul class="nav nav-tabs" id="pruebatab">
      <li><a href="#primero">Primero</a></li>
      <li><a href="#segundo">Segundo</a></li>
      <li><a href="#tercero">Tercero</a></li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane" id="primero">
        <p>La cabecera del widget va en un <code>div class="widget-head"</code></p>
      <div>
      <div class="tab-pane" id="segundo">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      </div>
      <div class="tab-pane" id="tercero">
        <p>Una dieta equilibrada es la mejor garantía de salud y bienestar</p>
      </div>
    </div><!-- /tab-content -->
  </div><!-- /widget-content -->
</div><!-- /widget -->


<script>
  $('#pruebatab a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });

  $(function () {
    $('#pruebatab a:first').tab('show');
  });
</script>
