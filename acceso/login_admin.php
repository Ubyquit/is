<?php
require_once '../conexion/conexion.php';
print_r($_POST);
$email = $_POST['email'];
$password = $_POST['password'];
//se reciben las variables del archivo index
$consulta = "SELECT * FROM team WHERE correoEq = '$email'";
      $resultado = mysqli_query($mysqli, $consulta);
      $fila = mysqli_fetch_array($resultado);
      $respuesta = '';
      if(sizeof($fila) > 0){
          if($fila["passwordEq"] == $password){
              session_start();
              $_SESSION["id"] = $fila["id_equipo"];
              $_SESSION["nombre"] = $fila["nombreEquipo"];
              $_SESSION["email"] = $fila["correoEq"];
              $_SESSION["status"] = $fila["estatusEq"];
              $respuesta = 1;

          }else{
            $respuesta = "La contraseña no coincide";
          }
        }else{
            $respuesta = "Usuario no encontrado";  
      }
      
      if($respuesta==1){

        header('Location: ../administrador/index.php');

      }else{
        header('Location: ../index.html'); 
      }
?>







