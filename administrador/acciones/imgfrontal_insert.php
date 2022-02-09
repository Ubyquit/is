<?php
session_start();
$varsesion = $_SESSION["id"];

//Archivo de conexión
require_once '../../conexion/conexion.php';
//Imprimir variables recibidas
print_r($_POST);

$nom=$_REQUEST["txtnom"];
$imagen = $_FILES['fotoFrente']['name'];
$ruta=$_FILES["fotoFrente"]["tmp_name"];
$destino="imagenes/".$imagen;

copy($ruta,$destino);

$consulta = "INSERT INTO imagenes (usuario_id_usuario,fotoFrente)
    VALUES ('$varsesion','$destino')";
    $resultado = mysqli_query($mysqli,$consulta);

header("Location: imgespalda.php");

?>