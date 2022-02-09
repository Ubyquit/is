<?php
    session_start();
    $varsesion = $_SESSION["id"];
        
    //Apartado de la query
    require_once '../../conexion/conexion.php';
    $id = $_GET['id_reporte'];

                $consulta = "DELETE FROM reporte WHERE id_reporte = '$id'";
                $resultado = mysqli_query($mysqli, $consulta);


    header("Location: ../usuarios_reportes.php");
    ?>