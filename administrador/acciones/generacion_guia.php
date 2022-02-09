<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"/>
    
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
                                <h4 class="text-dark mb-4">Generación de guía</h4>
                            </div>
                    <!-- Formulario para general guía -->
                    <form class="user" action="guia_insert.php" method="post">
                        <div class="form-group">
                            <label for="pesoUsr">Ingresa tu peso</label> 
                            <input id="pesoUsr" step="any" name="pesoUsr" type="number" aria-describedby="pesoUsrHelpBlock" class="form-control" required="required"> 
                            <span id="pesoUsrHelpBlock" class="form-text text-muted">Tu peso deberá estar en kilogramos ejemplo: 75.2</span>
                        </div>
                        <div class="form-group">
                            <label for="alturaUsr">Ingresa tu altura</label> 
                            <input id="alturaUsr" step="any" name="alturaUsr" type="number" aria-describedby="alturaUsrHelpBlock" class="form-control" required="required"> 
                            <span id="alturaUsrHelpBlock" class="form-text text-muted">Tu altura deberá estar en metros ejemplo: 1.75</span>
                        </div>
                        <div class="form-group">
                            <label for="entrenamientoUsr">¿Cuantos días a la semana vas a entrenar?</label> 
                            <div>
                            <select id="entrenamientoUsr" name="entrenamientoUsr" class="custom-select" required="required">
                                <option value="1.2">Poco o nada</option>
                                <option value="1.4">Ligero 1 - 3 días</option>
                                <option value="1.6">Moderado 3 - 5 días</option>
                                <option value="1.8">Fuerte 6 - 7 días</option>
                                <option value="2">Muy fuerte 2 sesiones al día</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="objetivoUsr">¿Qué es lo que estás buscando?</label> 
                            <div>
                            <select id="objetivoUsr" name="objetivoUsr" class="custom-select">
                                <option value="aumento">Aumento de peso</option>
                                <option value="perdida">Perdida de grasa</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                          <button name="submit" type="submit" class="btn btn-primary">Enviar</button>
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