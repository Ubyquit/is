<?php
session_start();
$varsesion = $_SESSION["id"];
$user_session = $_SESSION["nombre"];
$user_email = $_SESSION["email"];

if ($varsesion == null || $varsesion = '') {
    echo 'Usted no tiene acceso';
    die();
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>SIS</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">

</head>

<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0">
                <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>SIS</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <?php
                include 'include/navbar.php';
                ?>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">

                <!--Navbar principal-->

                <?php
                include 'include/navsearch.php';
                ?>

                <div class="container-fluid">
                    <h3 class="text-dark mb-4">Cuestionario</h3>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 font-weight-bold">Este cuestionario es importante, ya que con el podremos saber su situación de salud.</p>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6 text-nowrap">
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>

                            <?php

                            session_start();
                            $varsesion = $_SESSION["id"];
                            require_once '../conexion/conexion.php';
                            $consulta = "SELECT * FROM cuationario WHERE usuario_id_usuario = $varsesion";
                            $resultado = mysqli_query($mysqli, $consulta);
                            $fila = mysqli_fetch_array($resultado);
                            $estatusCuestionario = $fila["estatusCuestionario"];



                            if ($estatusCuestionario == 1) {

                                echo '<div class="alert alert-success" role="alert">
                                        Cuestionario realizado!
                                      </div>';
                            } else {
                                include 'miguia/micuestionario.php';
                            }
                            ?>

                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Integración Saludable 2021</span></div>
                </div>
            </footer>
            <div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
        </div>
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/chart.min.js"></script>
        <script src="../assets/js/bs-init.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
        <script src="../assets/js/theme.js"></script>
</body>

</html>