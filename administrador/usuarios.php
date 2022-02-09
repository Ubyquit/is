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

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>SIS - Usuarios</title>
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
                                    <form action="" method="post" class="form-inline my-2 my-lg-0">
                                        <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
                                        <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Buscar</button>
                                    </form>
                                </div>
                                <div class="col-md-6">
                                    <!-- Bot��n crear usuario-->
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
                                            <th>Estatus</th>
                                            <th>Permiso</th>
                                            <th>Ver</th>
                                            <th>Whastapp</th>
                                            <!-- <th>Eliminar</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        if (!isset($_SESSION)) {
                                            session_start();
                                        }
                                        $varsesion = $_SESSION["id"];
                                        $searchValue = $_POST['search'];
                                        require_once '../conexion/conexion.php';
                                        /*Realizar una uni��n entre la tabla usuarios y la tabla roles y realizar saltos entre campos de ambas tablas para  
                                          visualizar todos los datos requeridos en el modulo de usuarios*/
                                        $consulta = "SELECT * FROM usuario 
                                        WHERE nomUsr
                                        LIKE '%$searchValue%' OR correoUsr LIKE '%$searchValue%' OR apPaternoUsr LIKE '%$searchValue%' OR apMaternoUsr LIKE '%$searchValue%'";
                                        $resultado = mysqli_query($mysqli, $consulta);
                                        while ($fila = mysqli_fetch_array($resultado)) {
                                        ?>
                                            <tr>
                                                <!--Imagen predeterminada para usuarios, icono avatar https://robohash.org/-->
                                                <td><?php echo $fila["nomUsr"]." ". $fila["apPaternoUsr"]." ". $fila["apMaternoUsr"]; ?></td>
                                                <td><?php echo $fila["correoUsr"]; ?></td>
                                                <td><?php

                                                    if ($fila["estatusUsr"] == 1) {
                                                        echo "Activo";
                                                    } elseif ($fila["estatusUsr"] == 2) {
                                                        echo "Renovaci&oacuten";
                                                    } elseif ($fila["estatusUsr"] == 3) {
                                                        echo "No renovado";
                                                    } else {
                                                        echo "Inactivo";
                                                    }
                                                    ?></td>
                                                <td><a href="permiso.php?id=<?php echo $fila["id_usr"] ?>" class="btn btn-default btn-rounded">
                                                        <?php
                                                        // Visualizador de cando dependiento al rol de usuario
                                                        if ($fila["estatusUsr"] == 1 || $fila["estatusUsr"] == 2) {
                                                            echo  '<i class="fa fa-unlock-alt" style="color:green" aria-hidden="true"></i>';
                                                        } else {
                                                            echo  '<i class="fa fa-lock" style="color:gray" aria-hidden="true"></i>';
                                                        } ?></a></td>
                                                <!--Editar usuario-->
                                                <td><a target="_blank" href="perfil_usuario.php?id=<?php echo $fila["id_usr"] ?>" class="btn btn-default btn-rounded"><i class="fa fa-eye" style="color:green" aria-hidden="true"></i></td>
                                                <!--Eliminar usuario
                                        <td><a href="acciones/eliminar_usr.php?id=<?php echo $fila["id_usr"] ?>" class="btn btn-default btn-rounded"><i class="fa fa-trash" style="color:red" aria-hidden="true"></i></td>-->
                                                <!--Linea de whastapp-->
                                                <td><a target="_blank" href="https://api.whatsapp.com/send?phone=+52<?php echo $fila["telUsr"] ?>&text=Hola%20<?php echo $fila["nomUsr"] ?>,%20aqu%C3%AD%20tienes%20tu%20usuario:%20<?php echo $fila["correoUsr"] ?>%20y%20contrase%C3%B1a:%20<?php echo $fila["passwordUsr"] ?>%20para%20entrar%20a%20la%20plataforma%20de%20integraci%C3%B3n%20saludable%20%20https://integracionsaludable.com/is/" class="btn btn-default btn-rounded"><i class="fa fa-paper-plane" style="color:green" aria-hidden="true"></i></td>
                                            </tr>
                                        <?php }  ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td><strong>Usuario</strong></td>
                                            <td><strong>Correo</strong></td>
                                            <td><strong>Estatus</strong></td>
                                            <td><strong>Permiso</strong></td>
                                            <td><strong>Ver</strong></td>
                                            <td><strong>Whastapp</strong></td>
                                            <!-- <td><strong>Eliminar</strong></td> -->
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
                    <div class="text-center my-auto copyright"><span>Copyright �0�8 Integraci��n Saludable 2021</span></div>
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