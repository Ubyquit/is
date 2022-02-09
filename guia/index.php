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
                $consulta = "SELECT * FROM usuario WHERE id_usr = $varsesion";
                $resultado = mysqli_query($mysqli, $consulta);
                $fila = mysqli_fetch_array($resultado);

                $consulta2 = "SELECT * FROM cuationario WHERE usuario_id_usuario = $varsesion";
                $resultado2 = mysqli_query($mysqli, $consulta2);
                $fila2 = mysqli_fetch_array($resultado2);

                $consulta3 = "SELECT * FROM imagenes WHERE usuario_id_usuario = $varsesion";
                $resultado3 = mysqli_query($mysqli, $consulta3);
                $fila3 = mysqli_fetch_array($resultado3);

                ?>

                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Bienvenido a Integración Saludable <?php echo $fila["nomUsr"]; ?></h3>
                    </div>
                    <div class="alert alert-primary" role="alert">
                        A continuación podrás realizar tu registro, para la generación de tu guía nutricional. Es necesario que llenes todas y cada una de las casillas para la generación de tu guía.
                    </div>
                    <!--Esta sección me muestra datos generales de mis recursos-->
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-secondary py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <?php
                                                if (
                                                    $fila["fotoPrincipal"] == NULL || $fila["redSocialUsr"] == NULL ||
                                                    $fila["residenciaUsr"] == NULL || $fila["sexoUsr"] == NULL ||
                                                    $fila["fechaD"] == NULL || $fila["fechaM"] == NULL || $fila["fechaA"] == NULL
                                                ) {
                                                    echo '<div class="text-uppercase text-secondary font-weight-bold text-xs mb-1"><span>Llenar perfil</span></div>
                                             
                                                          <div class="col-auto"><a href="perfil.php"><i class="fas fa-user fa-2x text-secondary"></i></a></div>
                                                          <hr>
                                                          <div class="alert alert-danger" role="alert">
                                                           ¡Tienes campos sin llenar!
                                                          </div>';
                                                } else {
                                                    echo '<div class="text-uppercase text-secondary font-weight-bold text-xs mb-1"><span>Perfil completo</span></div>
                                            
                                                          <div class="col-auto"><i class="fas  fa-check fa-2x text-secondary"></i></div>
                                                          <hr>
                                                          <div class="alert alert-success" role="alert">
                                                           ¡Ahora podrás continuar con tu cuestionario!
                                                          </div>';
                                                } ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php
                            if (
                                $fila["fotoPrincipal"] == NULL || $fila["redSocialUsr"] == NULL ||
                                $fila["residenciaUsr"] == NULL || $fila["sexoUsr"] == NULL ||
                                $fila["fechaD"] == NULL || $fila["fechaM"] == NULL || $fila["fechaA"] == NULL
                            ) {
                            } else {
                                include 'include/cuestionario.php';
                                if ($fila2["estatusCuestionario"] == 0 || $fila2["estatusCuestionario"] == NULL) {
                                } else {
                                    include 'include/imagenes.php';
                                    if ($fila3["usuario_id_usuario"] == 0 || $fila3["usuario_id_usuario"] == NULL) {
                                    } else {
                                        include 'include/guia.php';
                                    }
                                }
                            } ?>
                        </div>
                    </div>
                </div>
            </div>
            <!--Esta sección me muestra datos generales de mis recursos-->
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Integración Saludable 2021</span></div>
                </div>
            </footer>
        </div>
        <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/chart.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="../assets/js/theme.js"></script>
</body>

</html>