<?php
session_start();
    $varsesion = $_SESSION["id"];
    
    //Archivo de conexión
    require_once '../../conexion/conexion.php';
    //Imprimir variables recibidas
    print_r($_POST);

    $pesoUsr = $_POST['pesoUsr']; // tabla IMC - Forumula

    $alturaUsr = $_POST['alturaUsr']; // tabla IMC 

    $imcUsr = $pesoUsr/($alturaUsr * $alturaUsr);

    $entrenamientoUsr = $_POST['entrenamientoUsr']; //Formula

    $objetivoUsr = $_POST['objetivoUsr']; // tabla usuario Formula

   if($objetivoUsr == "aumento"){

        $caloriasUsr =  ($pesoUsr * 22) * $entrenamientoUsr + 300;

   }else{

        $caloriasUsr =  ($pesoUsr * 22) * $entrenamientoUsr - 500;
   }

   $consulta2 = "UPDATE usuario SET caloriasUsr = '$caloriasUsr', objetivoUsr = '$objetivoUsr' WHERE id_usr = $varsesion";
   $resultado2 = mysqli_query($mysqli, $consulta2);

    $consulta = "INSERT INTO IMC (usuario_id_usuario, pesoUsr, alturaUsr,imcUsr,mes_mes)
    VALUES ('$varsesion', '$pesoUsr', '$alturaUsr', '$imcUsr', now())";
    $resultado = mysqli_query($mysqli,$consulta);
    
    header("Location: imgfrontal.php");

?>