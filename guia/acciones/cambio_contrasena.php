<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Guia- SIS</title>
    <link rel="stylesheet" href="../../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../../assets/fonts/fontawesome-all.min.css">
</head>

<body class="bg-gradient-primary">
    <div class="container">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Cambiar contraseña</h4>
                            </div>
                            <!-- Formulario para cambiar contraseña -->
                            <form class="user" action="contrasena_update.php" method="post">

                                <div class="form-group">
                                    <label for="actual">Contraseña actual</label>
                                    <input id="actual" name="actual" type="password" aria-describedby="actualHelpBlock" class="form-control" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="nueva">Nueva contraseña</label>
                                    <input id="nueva" name="nueva" type="password" aria-describedby="nuevaHelpBlock" class="form-control" required="required">
                                </div>
                                <div class="form-group">
                                    <label for="confirmar">Confirmar contraseña</label>
                                    <input id="confirmar" name="confirmar" type="password" aria-describedby="confirmarHelpBlock" class="form-control" required="required">
                                </div>
                                <div class="form-group">
                                    <button name="submit" type="submit" class="btn btn-primary">Enviar</button>
                                    <button type="button" class="btn btn-outline-primary" onclick="window.location.href='../perfil.php'">Cancelar</button>
                                </div>

                            </form>

                            <!-- FIN Formulario para general guía -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>