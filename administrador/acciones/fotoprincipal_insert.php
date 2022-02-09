<?php
session_start();
$varsesion = $_SESSION["id"];

//Archivo de conexión
require_once '../../conexion/conexion.php';
//Imprimir variables recibidas
print_r($_POST);

$nom=$_REQUEST["txtnom"];
$imagen = $_FILES['fotoPrincipal']['name'];
$ruta=$_FILES["fotoPrincipal"]["tmp_name"];
$destino="imagenes/".$imagen;

copy($ruta,$destino);

$consulta = "UPDATE usuario SET fotoPrincipal = '$destino' WHERE id_usr = $varsesion";

$resultado = mysqli_query($mysqli,$consulta);

header("Location: ../perfil.php");

?>