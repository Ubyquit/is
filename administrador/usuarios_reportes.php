<?php
    session_start();
    $varsesion = $_SESSION["id"];
    $user_session = $_SESSION["nombre"];
    $user_email = $_SESSION["email"] ;

    if($varsesion == null || $varsesion = ''){
    echo 'Usted no tiene acceso';
    die();
    }
    ?>


<!DOCTYPE html>
<html>

<head><meta charset="euc-jp">
    
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
                <h3 class="text-dark mb-4"> Usuarios</h3>
                <div class="card shadow">
                    <div class="card-header py-3">
                        <p class="text-primary m-0 font-weight-bold">Lista de usarios</p>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 text-nowrap">
                            </div>
                            <div class="col-md-6">
                                <!-- Botón crear usuario-->
                                <div class="text-md-right">
                                    <a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="register.html"><i class="fas fa-user-plus fa-sm text-white-50"></i>&nbsp;Crear usuario</a>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                            <table class="table my-0" id="dataTable">
                                <thead>
                                    <tr>
                                        <th>Usuarios</th>
                                        <th>Correo</th>
                                        <th>Ver</th>
                                        <th>Fecha del reporte</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                if(!isset($_SESSION)) 
                                { 
                                    session_start(); 
                                } 
                                $varsesion = $_SESSION["id"];
                                require_once '../conexion/conexion.php';
                                /*Realizar una unión entre la tabla usuarios y la tabla roles y realizar saltos entre campos de ambas tablas para  
                                    visualizar todos los datos requeridos en el modulo de usuarios*/
                                    $consulta = "SELECT DISTINCT id_usr,nomUsr,apPaternoUsr, correoUsr, estatusUsr, id_reporte, fechaSemana FROM usuario INNER JOIN reporte ON reporte.usuario_id_usuario = usuario.id_usr ORDER BY id_reporte DESC";
                                    $resultado = mysqli_query($mysqli, $consulta);
                                    while($fila = mysqli_fetch_array($resultado)){
                                    ?>
                                    <tr>
                                        <!--Imagen predeterminada para usuarios, icono avatar https://robohash.org/-->
                                        <td><img class="rounded-circle mr-2" width="30" height="30" src="https://robohash.org/<?php echo $fila["correoUsr"]; ?>?set=set4"><?php echo $fila["nomUsr"]." ".$fila["apPaternoUsr"]; ?></td>
                                        <td><?php echo $fila["correoUsr"]; ?></td>
                                        <!--Editar usuario-->
<td><a target="_blank" href="perfil_usuario.php?id=<?php echo $fila["id_usr"]?>" class="btn btn-default btn-rounded"><i class="fa fa-eye" style="color:green" aria-hidden="true"></i></td>                                        <td><?php echo $fila["fechaSemana"]; ?></td>
                                    </tr>
                                    <?php }  ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td><strong>Usuario</strong></td>
                                        <td><strong>Correo</strong></td>
                                        <td><strong>Ver</strong></td>
                                        <td><strong>Fecha del reporte</strong></td>
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
    </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/chart.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="../assets/js/theme.js"></script>
</body>

</html>