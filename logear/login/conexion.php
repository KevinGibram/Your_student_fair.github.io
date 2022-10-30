<?php 
	
	$host = 'localhost';
	$user = 'root';
	$password = '';
	$db = 'your_student_fair p';

	$conection = @mysqli_connect($host,$user,$password,$db);

   //Cerrar la conexion-buena practica...

    //mysqli_close($conection);


	if(!$conection){
		echo "Error en la conexión";
	}

?>