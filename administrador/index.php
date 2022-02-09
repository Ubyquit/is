<?php
session_start();

$varsesion = $_SESSION["id"];
$user_session = $_SESSION["nombre"];
$user_email = $_SESSION["email"];
$status = $_SESSION["status"];


if ($varsesion == null || $varsesion = '') {
    echo 'Usted no tiene acceso';
    header('Location: ../index.html');
    die();
}
?>

<!DOCTYPE html>


<html>

<head>
    <meta charset="euc-jp">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Dashboard - Integración saludable</title>
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
                session_start();
                $varsesion = $_SESSION["id"];
                include 'include/navsearch.php';
                require_once '../conexion/conexion.php';
                /*Realizar una unión entre la tabla usuarios y la tabla roles y realizar saltos entre campos de ambas tablas para  
                                    visualizar todos los datos requeridos en el modulo de usuarios*/
               
                                    $consulta = "SELECT * FROM team WHERE id_equipo = $varsesion";
                $resultado = mysqli_query($mysqli, $consulta);
                $fila = mysqli_fetch_array($resultado);
                ?>

                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Bienvenido a tu dashboard <?php echo $fila["nombreEq"] ." ". $fila["apPaternoEq"] ; ?></h3>
                    </div>
                    <!--Esta sección me muestra datos generales de mis tareas-->
                    <div class="row">
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-primary py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Usuarios Inscritos</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span><?php include "include/usuarios.php" ?></span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-user fa-2x text-primary"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-success py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Guias generadas</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span><?php include "include/guias.php" ?></span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-calendar fa-2x text-success"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-info py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-info font-weight-bold text-xs mb-1"><span>Cuestionarios</span></div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="text-dark font-weight-bold h5 mb-0 mr-3"><span><?php include "include/cuestionarios.php" ?></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-tasks fa-2x text-info"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <!-- <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-warning py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-warning font-weight-bold text-xs mb-1"><span>Tareas asignadas</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span><?php include "include/tareas_asignadas.php" ?></span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-clipboard-list fa-2x text-warning"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    Esta sección me muestra datos generales de mis tareas-->
                    </div></div></div>
                    <footer class="bg-white sticky-footer">
                        <div class="container my-auto">
                            <div class="text-center my-auto copyright"><span>Copyright © Integración Saludable 2021</span></div>
                        </div>
                    </footer>
                </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
            </div>
            <script src="../assets/js/jquery.min.js"></script>
            <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
            <script src="../assets/js/chart.min.js"></script>
            <script src="../assets/js/bs-init.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
            <script src="../assets/js/theme.js"></script>
</body>

</html>