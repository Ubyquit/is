<?php

if(!isset($_SESSION)) 
{ 
    session_start(); 
} 

    $varsesion = $_SESSION["id"];


//Apartado de la query
    require_once '../conexion/conexion.php';
        
            $consulta = "SELECT COUNT(caloriasUsr)-1 AS guias FROM usuario
            WHERE caloriasUsr != NULL or caloriasUsr != 0";
            $resultado = mysqli_query($mysqli, $consulta);
            $fila = mysqli_fetch_array($resultado);
            echo $fila["guias"];
?>