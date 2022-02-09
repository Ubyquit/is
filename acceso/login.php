<?php
require_once '../conexion/conexion.php';
print_r($_POST);
$email = $_POST['email'];
$password = $_POST['password'];
//se reciben las variables del archivo index
      $consulta = "SELECT * FROM usuario WHERE correoUsr = '$email' AND estatusUsr != 0 AND estatusUSR != 3";
      $resultado = mysqli_query($mysqli, $consulta);
      $fila = mysqli_fetch_array($resultado);
      $respuesta = '';
      if(sizeof($fila) > 0){
          if($fila["passwordUsr"] == $password){
              session_start();
              $_SESSION["id"] = $fila["id_usr"];
              $_SESSION["nombre"] = $fila["nomUsr"];
              $_SESSION["email"] = $fila["correoUsr"];
              $_SESSION["status"] = $fila["estatusUsr"];
              $respuesta = 1;
          }else{
            $respuesta = "La contraseña no coincide";
          }
        }else{
            $respuesta = "Usuario no encontrado";  
      }
      
      if($respuesta == 1){

        header('Location: ../guia/index.php');

      }else{
        header('Location: ../index.html'); 
      }
?>







