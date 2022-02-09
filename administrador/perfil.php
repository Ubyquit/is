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
                <h3 class="text-dark mb-4"> Mi perfil</h3>
                <div class="card shadow">
                    <div class="card-body">
                        
                                <?php 
                                if(!isset($_SESSION)) 
                                { 
                                    session_start(); 
                                } 

                                
                                $varsesion = $_SESSION["id"];
                                require_once '../conexion/conexion.php';
                                /* muestra la información del usuario */
                                    $consulta = "SELECT * FROM team WHERE id_equipo = '$varsesion'";
                                    $resultado = mysqli_query($mysqli, $consulta);
                                    $fila = mysqli_fetch_array($resultado);
                                ?>

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card" align="center" >
                            <br>
                            <a href="acciones/fotoprincipal.php">
                            <img src="<?php 
                                if($fila["fotoPrincipal"] != Null || $fila["fotoPrincipal"] != 0){
                                    echo "acciones/" . $fila["fotoPrincipal"];
                                }else{
                                    echo 'https://www.slotcharter.net/wp-content/uploads/2020/02/no-avatar.png';
                                }
                            ?>" class="img-thumbnail rounded-circle mx-auto d-block" width="30%" align="center"></a>
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $fila["nombreEq"] . " " . $fila["apPaternoEq"] . " " .
                                $fila["apMaternoEq"]?></h5>
                            </div>
                            </div>
                        </div>

                        <div class="col-sm-8">
                            <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Detalles de usuario</h5>
                                <div class="bd-example">
                                <dl>
                                    <dt>Dirección Email</dt>
                                    <dd><?php echo $fila["correoEq"]?></dd>
                                    <dt>Teléfono</dt>
                                    <dd><?php echo $fila["telEq"]?></dd></a>
                                    <dt>Red social</dt>
                                    <dd><?php echo $fila["redSocialEq"]?></dd>
                                    <dt>Acerca del entrenador</dt>
                                    <dd><?php echo $fila["acercaEq"]?></dd>
                                    
                                   <!--<dt align="right"><a href="acciones/edicion_usr.php?id=<?php echo $fila["id_usr"]?>">Editar perfil</a></dt>
                                   <dt align="right"><a href="acciones/cambio_contrasena.php">Editar contraseña</a></dt>-->
                                   
                                   

                                </dl>
                                </div>                            
                            </div>
                        </div>
                    </div>
                    
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