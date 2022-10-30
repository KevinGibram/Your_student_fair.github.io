<?php 
	session_start();
 ?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<?php include "includes/scripts.php"; ?>
	<title>Your Studet Fair</title>
</head>
<body>
	<?php include "includes/header.php"; ?>
	<section id="container">
		<h1>Historial</h1>

	</section>
        <br><br>
    <center>
        <?php
        require_once 'conexion.php';
        $sql=  mysql_query("select * from foto");
        while($res=  mysql_fetch_array($sql)){
            echo $res["nombre"]."<br>";
            echo '<img src="'.$res["foto"].'" width="600"><br><br><br>';
        }
        ?>
        </center>
	<?php include "includes/footer.php"; ?>
</body>
</html>