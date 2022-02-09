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
    <meta charset="euc-jp">

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
                    <h3 class="text-dark mb-4">Mis reportes semanales</h3>
                    <div class="alert alert-warning" role="alert">
                        ¡Ojo! Los reportes semanales se enviarán a partir de tu primera semana concluida.

                    </div>
                    <div id="accordion">
                        <div class="card">
                            <div class="card-header" id="headingInst">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseInst" aria-expanded="true" aria-controls="collapseOne">
                                        Instrucciones.
                                    </button>
                                </h5>
                            </div>

                            <div id="collapseInst" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body">
                                    <ul>
                                        <li>El reporte semanal deberá ser enviando cada fin de semana como tiempo limite domingo 11:59 P.M.</li>
                                        <spam><b>Deberá incluir:</b></spam>
                                        <li>Tu peso actualizado</li>
                                        <li>Nivel de odisea</li>
                                        <li>Tiempo de odisea</li>
                                        <li>Comentarios o dudas</li>
                                        <li>Tus tres fotos correspondientes de dicha semana</li>
                                    </ul>
                                    <p><b>* Todas tus fotografías deberán seguir exactamente las mismas indicaciones solicitadas en tus fotos de registro (misma posición, vestimenta, lugar e iluminación), para que sean válidas al finalizar el reto y seleccionar a los ganadores.</b></p>
                                    <p><b>* Las odiseas son pruebas físicas, que nos ayudarán a medir tus progresos físicos y cardiovasculares, las realizarás únicamente los fines de semana para el envío de tus reportes, si ya ingresaste al grupo privado de Facebook, encontrarás las instrucciones de odisea <a href="https://www.facebook.com/groups/IntegracionSaludable/permalink/697945747507958" target="_blank">aquí.</a></b></p>

                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 font-weight-bold">Lista de reportes</p>
                        </div>
                        <div class="card-body">
                            <div class="row">
                            </div>
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Semana</th>
                                            <th>Fecha Actualización</th>
                                            <th>Ver</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $contador = 1;
                                        if (!isset($_SESSION)) {
                                            session_start();
                                        }
                                        $varsesion = $_SESSION["id"];
                                        require_once '../conexion/conexion.php';
                                        /*Realizar una unión entre la tabla usuarios y la tabla roles y realizar saltos entre campos de ambas tablas para  
                                    visualizar todos los datos requeridos en el modulo de usuarios*/
                                        $consulta = "SELECT * FROM reporte WHERE usuario_id_usuario = $varsesion
                                    ORDER BY fechaSemana ASC LIMIT 5";
                                        $resultado = mysqli_query($mysqli, $consulta);
                                        while ($fila = mysqli_fetch_array($resultado)) {
                                        ?>
                                            <tr>
                                                <!--Imagen predeterminada para usuarios, icono avatar https://robohash.org/-->
                                                <td><?php echo $contador; ?></td>
                                                <td><?php echo $fila["fechaSemana"]; ?></td>
                                                <!--Ver imagenes-->
                                                <td><a href="ver_reporte.php?id=<?php echo $fila["id_reporte"] ?>" class="btn btn-default btn-rounded"><i class="fa fa-eye" style="color:green" aria-hidden="true"></i></td>
                                            </tr>
                                        <?php
                                            $contador++;
                                        }  ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td><strong>Semana</strong></td>
                                            <td><strong>Fecha Actualización</strong></td>
                                            <td><strong>Ver</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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