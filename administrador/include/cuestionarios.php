<?php

if(!isset($_SESSION)) 
{ 
    session_start(); 
} 

    $varsesion = $_SESSION["id"];


//Apartado de la query
    require_once '../conexion/conexion.php';
        
            $consulta = "SELECT COUNT(estatusCuestionario)-1 AS cuestionarios FROM cuationario
            WHERE estatusCuestionario = 1";
            $resultado = mysqli_query($mysqli, $consulta);
            $fila = mysqli_fetch_array($resultado);
            echo $fila["cuestionarios"];
?>