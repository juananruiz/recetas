<div class="span4 offset3">
  <div class="widget">
    <div class="widget-header">
      <h3>Inicio de sesión</h3>
    </div>
    <div class="widget-content">
      <form class="form" method="post" action="index.php?page=usuario_login" id="formlogin" >
        <input type="hidden" name="acceso" value="1" />
        <label for="login">Usuario</label> 
        <input type="text" name="login" id="login" class="span3" />
        
        <label for="clave">Clave</label>
        <input type="password" name="clave" id="clave" class="span3" />

        <div class="form-actions">
          <input type="submit" class="btn-primary btn-large" value="Iniciar sesión" />
          <p><a href="#">He olvidado mi contraseña</a></p>
        </div>
      </form>
    </div>
  </div>
</div>
