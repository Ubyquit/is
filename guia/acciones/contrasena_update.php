<?php
    session_start();
    $varsesion = $_SESSION["id"];
        
    //Apartado de la query
    require_once '../../conexion/conexion.php';

    $actual = $_POST['actual'];
    $nueva= $_POST['nueva'];
    $confirmar = $_POST['confirmar'];

    //se reciben las variables del archivo index
            $consulta = "SELECT passwordUsr FROM usuario WHERE id_usr = '$varsesion'";
            $resultado = mysqli_query($mysqli, $consulta);
            $fila = mysqli_fetch_array($resultado);
            $respuesta = '';
            if(sizeof($fila) > 0){
                if($fila["passwordUsr"] == $actual){
                    if($nueva == $confirmar){

                        $consulta2 = "UPDATE usuario SET passwordUsr = '$confirmar' WHERE id_usr = '$varsesion'";
                        $resultado2 = mysqli_query($mysqli, $consulta2);

                        header('Location: cambiocontrasena.php'); 

                    }else{
                        header('Location: errorcontrasena.php'); 
                    } 
                }else{
                    header('Location: errorcontrasena.php'); 
                }
            }else{
              $respuesta = "La contraseña no se ha cambiado";  
            }
?>