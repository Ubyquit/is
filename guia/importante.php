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
                    <h3 class="text-dark mb-4">Información importante</h3>
                    <div class="card shadow">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6 text-nowrap">
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>


                            <!-- ANUNCION IMPORTANTE -->

                            <div class="alert alert-primary" role="alert">
                                <h4 class="alert-heading">Fotografías para evidencias</h4>
                                <p>Al momento de tu inscripción y al momento de enviar tus reportes semanales, deberás enviarnos 3 fotografías, las cuales nos ayudarán a ti y al equipo de entrenadores a monitorear tus avances y guiarte de forma correcta en todo tu proceso, estas fotografías deberán seguir las siguientes indicaciones en TODOS TUS CORREOS, ya que, en el caso de haberte inscrito al Reto, deberás enviar un mínimo de 5 reportes semanales para ser acreedor a finalista para los premios en efectivo.</p>
                            </div>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">1. Tres fotografías. Una frontal, una de perfil y una de espalda, con los brazos completamente extendidos hacia los lados.</li>
                                <li class="list-group-item">2. Los hombres deberán tomarse las fotografías sin playera, en short y tenis deportivos. Las mujeres deberán tomarse las fotografías en top, en short o leggin y tenis deportivos.</li>
                                <li class="list-group-item">3. El fondo deberá ser una pared completamente blanca o en su defecto, una pared de un solo color. Sin personas, muebles u objetos de fondo.</li>
                                <li class="list-group-item">4. Las fotografías deberán ser tomadas con un móvil o cámara con buena resolución.</li>
                                <li class="list-group-item">5. Las fotografías deberán ser tomadas en un lugar con buena iluminación, te recomendamos tomar tus fotografías siempre en el mismo horario.</li>
                                <li class="list-group-item">6. Las fotografías deberán abarcar el cuerpo completo incluido el rostro, para una mejor edición. Nosotros recortaremos tu rostro y ajustaremos las medidas de la imagen.</li>
                                <li class="list-group-item">7. La altura del móvil o cámara deberá mantenerse a 1m del suelo al momento de tomar la fotografía, esto para mantener siempre la misma perspectiva y orientación de la imagen.</li>
                                <li class="list-group-item">8. Las fotografías de tus reportes semanales deberán seguir las mismas indicaciones para ser válidas.</li>
                            </ul>

                            <div class="alert alert-info" role="alert">El equipo de Integración saludable agradece tu colaboración para poder brindarte siempre el mejor servicio.</div>
                            <br>

                        </div>

                        <!-- ANUNCION IMPORTANTE -->

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