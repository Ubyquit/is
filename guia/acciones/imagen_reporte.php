<?php
session_start();
$varsesion = $_SESSION["id"];

//Archivo de conexión
require_once '../../conexion/conexion.php';
//Imprimir variables recibidas
print_r($_POST);

$pesoUsr = $_POST['pesoUsr'];
$nivelOdisea = $_POST['nivelOdisea'];
$tiempoOdisea = $_POST['tiempoOdisea'];
$comentariosUsr = $_POST['comentariosUsr'];
$fechaimg = date('Y-m-d');

$nom=$_REQUEST["txtnomFrente"];
$imagen = $_FILES['fotoFrente']['name'];
$ruta=$_FILES["fotoFrente"]["tmp_name"];
$destino="imagenes/".$varsesion."-".$fechaimg."-".$imagen;

$nom2=$_REQUEST["txtnomEspalda"];
$imagen2 = $_FILES['fotoEspalda']['name'];
$ruta2=$_FILES["fotoEspalda"]["tmp_name"];
$destino2="imagenes/".$varsesion."-".$fechaimg."-".$imagen2;

$nom3=$_REQUEST["txtnomPerfil"];
$imagen3 = $_FILES['fotoPerfil']['name'];
$ruta3=$_FILES["fotoPerfil"]["tmp_name"];
$destino3="imagenes/".$varsesion."-".$fechaimg."-".$imagen3;

copy($ruta,$destino);
copy($ruta2,$destino2);
copy($ruta3,$destino3);

$consulta = "INSERT INTO reporte (usuario_id_usuario,pesoUsr,nivelOdisea,tiempoOdisea,comentariosUsr,fotoFrontal,fotoEspaldas,fotoPerfil,fechaSemana)
    VALUES ('$varsesion','$pesoUsr','$nivelOdisea','$tiempoOdisea','$comentariosUsr','$destino','$destino2','$destino3',now())";
    $resultado = mysqli_query($mysqli,$consulta);

header("Location: ../reportesemanal.php");

?>