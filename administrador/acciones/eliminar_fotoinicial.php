<?php
    session_start();
    $varsesion = $_SESSION["id"];
        
    //Apartado de la query
    require_once '../../conexion/conexion.php';
    $id = $_GET['id_fotoinicial'];

                $consulta = "DELETE FROM imagenes WHERE id_img = '$id'";
                $resultado = mysqli_query($mysqli, $consulta);


    header("Location: ../usuarios.php");
    ?>