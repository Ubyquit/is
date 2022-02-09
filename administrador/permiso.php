<?php
    session_start();

    $varsesion = $_SESSION["id"];
    if($varsesion == null || $varsesion = ''){
        echo 'Usted no tiene acceso';
        die();
        }
        
    //Apartado de la query
    require_once '../conexion/conexion.php';
    $id = $_GET['id'];

        
            $consulta_usuario = "SELECT * FROM usuario WHERE id_usr = '$id'";
            $resultado = mysqli_query($mysqli, $consulta_usuario);
            $fila = mysqli_fetch_array($resultado);

            if($fila["estatusUsr"] == 0){

                session_start();
                $varsesion = $_SESSION["id"];

                $consulta = "UPDATE usuario SET estatusUsr = 1 WHERE id_usr = '$id'";
                
            }
                else{
                    
                session_start();
                $varsesion = $_SESSION["id"];

                $consulta = "UPDATE usuario SET estatusUsr = 0 WHERE id_usr = '$id'";
            }

           mysqli_query($mysqli,$consulta);

           header("Location: usuarios.php");
    ?>
    