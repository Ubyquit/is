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
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">

                <!--Navbar principal-->

                <div class="container-fluid">
                    <h3 class="text-dark mb-4"> Perfil de usuario</h3>
                    <div class="card shadow">
                        <div class="card-body">

                            <?php

                            require_once '../conexion/conexion.php';
                            /* muestra la información del usuario */
                            $idusuario = $_GET['id'];

                            $consulta = "SELECT * FROM usuario WHERE id_usr = $idusuario";
                            $resultado = mysqli_query($mysqli, $consulta);
                            $fila = mysqli_fetch_array($resultado);

                            $consulta2 = "SELECT * FROM imagenes WHERE usuario_id_usuario = $idusuario";
                            $resultado2 = mysqli_query($mysqli, $consulta2);
                            $fila2 = mysqli_fetch_array($resultado2);

                            $consulta3 = "SELECT * FROM IMC WHERE usuario_id_usuario = $idusuario";
                            $resultado3 = mysqli_query($mysqli, $consulta3);
                            $fila3 = mysqli_fetch_array($resultado3);

                            ?>

                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="card" align="center">
                                        <br>

                                        <a href="../guia/acciones/fotoprincipal.php">
                                            <img src="<?php
                                                        if ($fila["fotoPrincipal"] != Null || $fila["fotoPrincipal"] != 0) {
                                                            echo "../guia/acciones/" . $fila["fotoPrincipal"];
                                                        } else {
                                                            echo 'https://www.slotcharter.net/wp-content/uploads/2020/02/no-avatar.png';
                                                        }
                                                        ?>" class="img-thumbnail rounded-circle mx-auto d-block" width="30%" align="center"></a>
                                        <div class="card-body">
                                            <h5 class="card-title"><?php echo $fila["nomUsr"] . " " . $fila["apPaternoUsr"] . " " .
                                                                        $fila["apMaternoUsr"] ?></h5>
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
                                                    <dd><?php echo $fila["correoUsr"] ?></dd>
                                                    <dt>Teléfono</dt>
                                                    <dd><?php echo $fila["telUsr"] ?></dd></a>
                                                    <dt>Empresal</dt>
                                                    <dd><?php echo $fila["empresaUsr"] ?></dd>
                                                    <dt>Calorías</dt>
                                                    <dd><?php echo $fila["caloriasUsr"] ?></dd>
                                                    <dt>Red social</dt>
                                                    <dd><?php echo $fila["redSocialUsr"] ?></dd>
                                                    <dt>Residencia</dt>
                                                    <dd><?php echo $fila["residenciaUsr"] ?></dd>
                                                    <dt>Se enteró por</dt>
                                                    <dd><?php echo $fila["captacionUsr"] ?></dd>
                                                    <dt>Objetivo</dt>
                                                    <dd><?php if ($fila["objetivoUsr"] != Null && $fila["objetivoUsr"] == 'aumento') {
                                                            echo "Aumento de peso";
                                                        } else if ($fila["objetivoUsr"] != Null && $fila["objetivoUsr"] == 'perdida') {
                                                            echo "Perdida de grasa";
                                                        } else {
                                                            echo "Aun sin definir";
                                                        }
                                                        ?></dd>
                                                    <dt>Sexo</dt>
                                                    <dd><?php if ($fila["sexoUsr"] != Null && $fila["sexoUsr"] == 'H') {
                                                            echo "Hombre";
                                                        } else if ($fila["sexoUsr"] != Null && $fila["sexoUsr"] == 'M') {
                                                            echo "Mujer";
                                                        } else {
                                                            echo "Aun sin definir";
                                                        }
                                                        ?></dd>

                                                    <dt>Peso del usuario</dt>
                                                    <dd><?php echo $fila3["pesoUsr"] ?></dd>

                                                    <dt>Altura del usuario</dt>
                                                    <dd><?php echo $fila3["alturaUsr"] ?></dd>

                                                    <dt>IMC</dt>
                                                    <dd><?php echo $fila3["imcUsr"] ?></dd>

                                                    <dt>Tiempo de entrenamiento</dt>
                                                    <dd><?php echo $fila3["Entrenamiento"] ?></dd>

                                                    <dt align="right"><a href="acciones/cuestionario_usr.php?id=<?php echo $fila["id_usr"] ?>">Ver cuestionario</a></dt>
                                                    <dt align="right"><a href="acciones/edicion_usr.php?id=<?php echo $fila["id_usr"] ?>">Editar perfil</a></dt>
                                                    <dt align="right"><a href="acciones/resetusr_contrasena.php?id=<?php echo $fila["id_usr"] ?>">Restablecer contraseña</a></dt>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Ver cuestionario
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                        <div class="card-body">
                                            <?php include 'acciones/cuestionario_usr.php'; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div id="accordionFoto">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Fotos iniciales
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <div>
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">#</th>
                                                            <th scope="col">Frente</th>
                                                            <th scope="col">Perfil</th>
                                                            <th scope="col">Espaldas</th>
                                                            <th scope="col">Eliminar</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody align="center">
                                                        <tr>
                                                            <th scope="row">1</th>
                                                            <td><a href="../guia/acciones/<?php echo $fila2["fotoFrente"] ?>" download><img width="75%" src="../guia/acciones/<?php echo $fila2["fotoFrente"] ?>"></a></td>
                                                            <td><a href="../guia/acciones/<?php echo $fila2["fotoPerfil"] ?>" download><img download width="75%" src="../guia/acciones/<?php echo $fila2["fotoPerfil"] ?>"></a></td>
                                                            <td><a href="../guia/acciones/<?php echo $fila2["fotoEspalda"] ?>" download><img download width="75%" src="../guia/acciones/<?php echo $fila2["fotoEspalda"] ?>"></a></td>
                                                            <!--Eliminar fotos iniciales -->
                                                            <td><a href="acciones/eliminar_fotoinicial.php?id_fotoinicial=<?php echo $fila2["id_img"] ?>" class="btn btn-default btn-rounded"><i class="fa fa-trash" style="color:red" aria-hidden="true"></i></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div id="accordionFotoReporte">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" data-target="#collapseOneFotoReporte" aria-expanded="true" aria-controls="collapseOne">
                                                Reportes semanales
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseOneFotoReporte" aria-labelledby="headingOne" data-parent="#accordionFotoReporte">
                                        <div class="card-body">
                                            <?php include 'acciones/reporte_semanal.php'; ?>
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