<?php
    session_start();
    $varsesion = $_SESSION["id"];
    if($varsesion == null || $varsesion = ''){
        echo 'Usted no tiene acceso';
        die();
        }
        
        print_r($_POST);
    //Apartado de la query
    require_once '../../conexion/conexion.php';
    $id = $_POST['id'];
    $nombre = $_POST['user'];
    $apPaternoUsr = $_POST['apPaternoUsr'];
    $apMaternoUsr = $_POST['apMaternoUsr'];
    $fechaD = $_POST['fechaD'];
    $fechaM = $_POST['fechaM'];
    $fechaA = $_POST['fechaA'];
    $sexoUsr = $_POST['sexoUsr'];
    $telUsr = $_POST['telUsr'];
    $correo = $_POST['email'];
    $redSocialUsr = $_POST['redSocialUsr'];
    $residenciaUsr = $_POST['residenciaUsr'];
    $captacionUsr = $_POST['captacionUsr'];

            $consulta = "UPDATE usuario SET nomUsr = '$nombre',
            apPaternoUsr = '$apPaternoUsr', apMaternoUsr = '$apMaternoUsr', 
            sexoUsr = '$sexoUsr', telUsr = '$telUsr', correoUsr = '$correo',
            residenciaUsr = '$residenciaUsr', 
            captacionUsr = '$captacionUsr', fechaD = '$fechaD', fechaM = '$fechaM', fechaA = '$fechaA', 
            redSocialUsr = '$redSocialUsr' WHERE id_usr = $id";
            
            $resultado = mysqli_query($mysqli, $consulta);

     header("Location: ../perfil.php");
    ?>