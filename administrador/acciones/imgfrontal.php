<?php 
  include('../../conexion/conexion.php');
  $query = "select * from imagenes";
  $resultado = mysqli_query($conn,$query);
?>
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
                    <!-- Formulario para general guía imagen frontal -->
                    <form class="user" action="imgfrontal_insert.php" method="POST" enctype="multipart/form-data">
                        <div class="card text-center">
                          <div class="card-header">
                            Subir foto de frente
                          </div>
                          <div class="form-group" align="center">
                              <div>
                              <img class="img-fluid" width="50%" src="../../assets/img/avatar/HMFrontal.png">
                              </div>
                              <div class="input-group col-8">
                                <div class="custom-file">
                                  <input type="hidden" value="fotoFrente" name="txtnom">
                                  <input type="file" class="custom-file-input" name="fotoFrente" lang="es" required>
                                  <label class="custom-file-label" for="customFilePerfil">Buscar imagen</label>
                                </div>
                              </div>
                          </div>
                        </div>
                    </div>
                          <input type="submit" value="Enviar" class="btn btn-primary" name="enviar">
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