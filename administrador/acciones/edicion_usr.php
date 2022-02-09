<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Registro - SIS</title>
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
                                <h4 class="text-dark mb-4">Editar cuenta!</h4>
                            </div>
                            <?php 
                                session_start();
                                $varsesion = $_SESSION["id"];
                                require_once '../../conexion/conexion.php';
                                /*Recibir la variable de id de la pagina de usuario para realizar 
                                la edición de los datos de usuario*/
                                $id = $_GET['id'];

                                    $consulta = "SELECT * FROM usuario WHERE id_usr = '$id'";
                                    $resultado = mysqli_query($mysqli, $consulta);
                                    $fila = mysqli_fetch_array($resultado);
                                    ?>
                            
                    <form class="user" action="editar_usr.php" method="post">
                        <div class="form-group row">
                          <label for="text" class="col-4 col-form-label">Nombre</label> 
                          <div class="col-8">
                            <input id="text"type="text" class="form-control" name="user" value="<?php echo $fila["nomUsr"] ?>">
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label for="text" class="col-4 col-form-label">Apellido paterno</label> 
                          <div class="col-8">
                            <input id="text"type="text" class="form-control" name="apPaternoUsr" value="<?php echo $fila["apPaternoUsr"] ?>">
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label for="text" class="col-4 col-form-label">Apellido materno</label> 
                          <div class="col-8">
                            <input id="text"type="text" class="form-control" name="apMaternoUsr" value="<?php echo $fila["apMaternoUsr"] ?>">
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label for="text" class="col-4 col-form-label">Empresa</label> 
                          <div class="col-8">
                            <input id="text"type="text" class="form-control" name="empresaUsr" value="<?php echo $fila["empresaUsr"] ?>">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="text" class="col-4 col-form-label">Guia establecida</label> 
                          <div class="col-8">
                            <input id="text"type="text" class="form-control" name="caloriasUsr" value="<?php echo $fila["caloriasUsr"] ?>">
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label for="text1" class="col-4 col-form-label">Fecha de nacimiento</label> 
                          <div class="col-sm">
                                <select class="form-control" id="day" name="fechaD">
                                <option selected value="<?php echo $fila["fechaD"] ?>"> <?php echo $fila["fechaD"] ?> </option>
                                  <?php 
                                  
                                 for($dia = 1 ; $dia<=31; $dia++){
                                    echo "<option>$dia</option>";
                                 }
                                 ?>
                                </select>
                          </div>
                          <div class="col-sm">
                             <select class="form-control" id="mes" name="fechaM">
                                 <option selected value="<?php echo $fila["fechaM"] ?>"> <?php echo $fila["fechaM"] ?> </option>
                                  <?php 
                                 for($mes = 1 ; $mes<=12; $mes++){
                                    echo "<option>$mes</option>";
                                 }
                                 ?>
                                </select>
                          </div>
                          <div class="col-sm">
                             <select class="form-control" id="anio" name="fechaA">
                                 <option selected value="<?php echo $fila["fechaA"] ?>"> <?php echo $fila["fechaA"] ?> </option>
                                 <?php 
                                 for($anio = 2021 ; $anio>=1940; $anio--){
                                    echo "<option>$anio</option>";
                                 }
                                 ?>
                                </select>
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label class="col-4">Sexo</label> 
                          <div class="col-8">
                            <div class="custom-control custom-radio custom-control-inline">
                              <input <?=$fila["sexoUsr"]=="H" ? "checked" : ""?> name="sexoUsr" id="sexo_0" type="radio" class="custom-control-input" value="H"> 
                              <label for="sexo_0" class="custom-control-label">Hombre</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                              <input <?=$fila["sexoUsr"]=="M" ? "checked" : ""?> name="sexoUsr" id="sexo_1" type="radio" class="custom-control-input" value="M"> 
                              <label for="sexo_1" class="custom-control-label">Mujer</label>
                            </div>
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label for="text2" class="col-4 col-form-label">Teléfono</label> 
                          <div class="col-8">
                            <input id="text2" name="telUsr" type="tel"" placeholder="Ejemplo: 998328777" value="<?php echo $fila["telUsr"] ?>" class="form-control">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="text3" class="col-4 col-form-label">Correo electrónico</label> 
                          <div class="col-8">
                            <input id="text3" name="email" value="<?php echo $fila["correoUsr"] ?>" type="text" class="form-control">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="text17" class="col-4 col-form-label">Red social</label> 
                          <div class="col-8">
                            <input id="text17" name="redSocialUsr" value="<?php echo $fila["redSocialUsr"] ?>" type="text" class="form-control">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="text7" class="col-4 col-form-label">Residencia</label> 
                          <div class="col-8">
                            <input id="text7" name="residenciaUsr" value="<?php echo $fila["residenciaUsr"] ?>" type="text" class="form-control">
                          </div>
                        </div>
                        
                        <div class="form-group row">
                          <label class="col-4">¿Cómo te enteraste de IS?</label> 
                          <div class="col-8">
                            <div class="custom-control custom-radio custom-control-inline">
                              <input <?=$fila["captacionUsr"]=="Redes Sociales" ? "checked" : ""?> name="captacionUsr" id="radio_0" type="radio" class="custom-control-input" value="Redes Sociales"> 
                              <label for="radio_0" class="custom-control-label">Redes Sociales</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                              <input <?=$fila["captacionUsr"]=="Anuncios" ? "checked" : ""?> name="captacionUsr" id="radio_1" type="radio" class="custom-control-input" value="Anuncios"> 
                              <label for="radio_1" class="custom-control-label">Anuncios</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                              <input <?=$fila["captacionUsr"]=="Recomendación" ? "checked" : ""?> name="captacionUsr" id="radio_2" type="radio" class="custom-control-input" value="Recomendación"> 
                              <label for="radio_2" class="custom-control-label">Recomendación</label>
                            </div>
                          </div>
                        </div>
                        
                        <input name="id_usr" value="<?php echo $fila["id_usr"]?>" type="hidden">
                        
                        <div class="form-group row">
                          <div class="offset-4 col-8">
                              
                            <button name="submit" type="submit" class="btn btn-primary btn-block text-white btn-user">Guardar</button>
                            
                            <a href="../usuarios.php" class="btn btn-primary btn-block text-white btn-user">Cancelar</a>
                                <hr>
                          </div>
                          
                        </div>
                      </form>
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