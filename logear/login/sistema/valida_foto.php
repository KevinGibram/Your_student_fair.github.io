<?php
require_once 'conexion.php';
$nom=$_REQUEST["txtnom"];
$foto=$_FILES["foto"]["name"];
$ruta=$_FILES["foto"]["tmp_name"];
$destino="fotos/".$foto;
copy($ruta,$destino);
mysql_query("insert into foto (nombre,foto) values('$nom','$destino')");
//header("Location: index.php");
?>
