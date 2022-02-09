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
    $id_usr = $_POST['id_usr'];
    $nombre = $_POST['user'];
    $apPaternoUsr = $_POST['apPaternoUsr'];
    $apMaternoUsr = $_POST['apMaternoUsr'];
    $empresaUsr = $_POST['empresaUsr'];
    $caloriasUsr = $_POST['caloriasUsr'];
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
            sexoUsr = '$sexoUsr', telUsr = '$telUsr', correoUsr = '$correo', empresaUsr = '$empresaUsr',
            caloriasUsr = '$caloriasUsr',residenciaUsr = '$residenciaUsr', 
            captacionUsr = '$captacionUsr', fechaD = '$fechaD', fechaM = '$fechaM', fechaA = '$fechaA', 
            redSocialUsr = '$redSocialUsr' WHERE id_usr = $id_usr";
            
            $resultado = mysqli_query($mysqli, $consulta);

     header("Location: ../usuarios.php");
    ?>