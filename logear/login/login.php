<?php 
	
$alert = '';
session_start();
if(!empty($_SESSION['active']))
{
	header('location: sistema/');
}else{

	if(!empty($_POST))
	{
		if(empty($_POST['usuario']) || empty($_POST['clave']))
		{
			$alert = 'Ingrese su usuario y su calve';
		}else{

			require_once "conexion.php";
            

			$user = mysqli_real_escape_string($conection,$_POST['usuario']);
			$pass = md5(mysqli_real_escape_string($conection,$_POST['clave']));

			$query = mysqli_query($conection,"SELECT * FROM usuario WHERE usuario= '$user' AND clave = '$pass'");
			mysqli_close($conection);
			$result = mysqli_num_rows($query);

			if($result > 0)
			{
				$data = mysqli_fetch_array($query);
				$_SESSION['active'] = true;
				$_SESSION['idUser'] = $data['idusuario'];
				$_SESSION['nombre'] = $data['nombre'];
				$_SESSION['email']  = $data['email'];
				$_SESSION['user']   = $data['usuario'];
				$_SESSION['rol']    = $data['rol'];

				header('location: sistema/');
			}else{
				$alert = 'El usuario o la clave son incorrectos';
				session_destroy();
			}


		}

	}
}
 ?>
<!DOCTYPE html>
<html lang="es">
<head>  
	<meta charset="UTF-8">
	<title>Login | Your Student Fai</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="../../css/creative.css">
</head>
<body>
      <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="../../index.html"> <img src="../../img/logo.png" width="80"> Your Student Fair</a>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
        <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="http://localhost/Your_Studet_Fair/logear/login/login.php">Iniciar sesión</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
	<section id="container">
		<form action="" method="post">
			
			<h3>Iniciar Sesión</h3>
			<img src="img/login.png" alt="Login" width="150">

			<input type="text" name="usuario" placeholder="Usuario">
			<input type="password" name="clave" placeholder="Contraseña">
			<div class="alert"><?php echo isset($alert) ? $alert : ''; ?></div>
			<input type="submit" value="INGRESAR">

		</form>

	</section>
</body>
</html>