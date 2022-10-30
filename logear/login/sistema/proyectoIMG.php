<?php 
	session_start();
	if($_SESSION['rol'] != 2)
	{
		header("location: ./");
	}
	
	include "../conexion.php";
 ?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<?php include "includes/scripts.php"; ?>
	<title>your student fair </title>
</head>
<body>
	<br><br><br><br><br><br><br><br><br><br><br><br>
<form action="valida_foto.php" method="POST" enctype="multipart/form-data">
            <center><table border= "0">
            <tr bgcolor="skyblue">        
                <td><strong>Nombre:</strong></td><td> <input type="text" name="txtnom" value=""></td>
                
            <tr bgcolor="skyblue">
            <td bgcolor="skyblue"><strong>Foto:</strong></td>  <td><input type="file" name="foto" id="foto"></td>
            </tr>
            <tr>
            <td colspan="2" href="proyectoIMG.php" align="center" bgcolor="skyblue"><input type="submit" name="enviar" value="Enviar" ></td>
            </tr>
            <tr>
            <td colspan="2" align="center" bgcolor="skyblue"> <input type="reset" value="Limpiar"></td>
            </tr>
            <tr>
            <td colspan="2" align="center" bgcolor="skyblue"><a href="javascript:history.back()"> Volver Atrás</a></td>
            </tr>
            
                
                </table></center>
        </form>   

</body>
</html>