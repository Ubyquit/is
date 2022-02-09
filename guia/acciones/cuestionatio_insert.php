<?php
session_start();
    $varsesion = $_SESSION["id"];
    
    //Archivo de conexión
    require_once '../../conexion/conexion.php';
    //Imprimir variables recibidas
    print_r($_POST);

    $q1 = $_POST['q1'];
    $q1c = $_POST['q1c'];
    $q2 = $_POST['q2'];
    $q3 = $_POST['q3'];
    $q3c = $_POST['q3c'];
    $q4 = $_POST['q4'];
    $q5 = $_POST['q5'];
    $q6 = $_POST['q6'];
    $q7 = $_POST['q7'];
    $q8 = $_POST['q8'];
    $q9 = $_POST['q9'];
    $q9c = $_POST['q9c'];
    $estatusCuestionario = $_POST['estatusCuestionario'];

    $consulta = "INSERT INTO cuationario (usuario_id_usuario, q1, q1c, q2, q3, q3c, q4, q5, q6, q7, q8, q9, q9c, estatusCuestionario)
    VALUES ('$varsesion', '$q1', '$q1c', '$q2', '$q3', '$q3c', '$q4', '$q5', '$q6', '$q7', '$q8', '$q9', '$q9c', '$estatusCuestionario')";
    $resultado = mysqli_query($mysqli,$consulta);

    header("Location: ../index.php");
?>