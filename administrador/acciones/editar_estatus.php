<?php
    session_start();
    $varsesion = $_SESSION["id"];
        
    //Apartado de la query
    require_once '../../conexion/conexion.php';
    $id = $_POST['id'];
    $efirstname = $_POST['editar_estatus'];

            $consulta = "UPDATE estatus SET nombre_estatus = '$efirstname' WHERE id_estatus = '$id'";
            $resultado = mysqli_query($mysqli, $consulta);
       

    header("Location: ../lista_estatus.php");
?>