<?php
    $usuario = "youriqum_IS";
    $password = "IS.Linuxroottoor2021";
    $database = "youriqum_IS";
    $server = "localhost";
    $mysqli = mysqli_connect($server, $usuario, $password, $database);
     if(mysqli_connect_errno($mysqli)){
        echo "no me pude conectar ".mysqli_connect_error();
     }else{
        //echo "Yey! si me pude conectar";
     }
?>