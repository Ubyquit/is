<?php
session_start();
$varsesion = $_SESSION["id"];

//Archivo de conexión
require_once '../../conexion/conexion.php';
//Imprimir variables recibidas
print_r($_POST);

$nom=$_REQUEST["txtnom"];
$imagen = $_FILES['fotoEspalda']['name'];
$ruta=$_FILES["fotoEspalda"]["tmp_name"];
$destino="imagenes/".$imagen;

copy($ruta,$destino);

$consulta = "UPDATE imagenes SET fotoEspalda = '$destino' WHERE usuario_id_usuario = $varsesion";

$resultado = mysqli_query($mysqli,$consulta);

header("Location: imgperfil.php");

?>