<?php
    session_start();
    $varsesion = $_SESSION["id"];
        
    //Apartado de la query
    require_once '../../conexion/conexion.php';
    print_r($_POST);

    $respuestaTeam = $_POST['respuesta'];
    $id_reporte = $_POST['id_reporte'];

                $consulta = "UPDATE reporte SET respuestaTeam = '$respuestaTeam',team_id_team = '$varsesion', fechaRespuestaTeam = NOW() WHERE id_reporte = '$id_reporte'";
                $resultado = mysqli_query($mysqli, $consulta);


    header("Location: ../usuarios_reportes.php");
    ?>