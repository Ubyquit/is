<nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" role="menu" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto navbar-search w-100">
                                        <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">
                                <!--Imagen predeterminada para usuarios, icono avatar https://robohash.org/-->
                                <span class="d-none d-lg-inline mr-2 text-gray-600 small"><?php 
                                if(!isset($_SESSION)) 
                                { 
                                    session_start(); 
                                }  
                                
                                $varsesion = $_SESSION["id"];
                                require_once '../conexion/conexion.php';
                                /* muestra la informacin del usuario */
                                    $consulta = "SELECT * FROM team WHERE id_equipo = '$varsesion'";
                                    $resultado = mysqli_query($mysqli, $consulta);
                                    $fila = mysqli_fetch_array($resultado);
                                ?>
                                </span><img class="border rounded-circle img-profile" src="<?php echo "../acciones/" . $fila["fotoAvatar"] ?>"></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu">
                                        <!--Logout-->
                                        <a class="dropdown-item" href="../administrador/perfil.php"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Perfil</a>

                                        <div class="dropdown-divider">

                                        </div>
                                            <a class="dropdown-item" role="presentation" href="../acceso/logout.php"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>
                                         </div>
                                    </div>
                    </li>
                    </ul>
            </div>
            </nav>