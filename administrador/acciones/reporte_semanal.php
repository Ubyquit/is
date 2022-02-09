<?php
$consulta4 = "SELECT * FROM reporte WHERE usuario_id_usuario = $idusuario";
$resultado4 = mysqli_query($mysqli, $consulta4);
$contador = 1;
while ($fila4 = mysqli_fetch_array($resultado4)) {
?>

    <div class="table-responsive-lg">
        <table class="table table-sm">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Semana</th>
                    <th scope="col">Peso</th>
                    <th scope="col">Nivel de odisea</th>
                    <th scope="col">Tiempo odisea</th>
                    <th scope="col">Comentarios</th>
                    <th scope="col">Respuesta</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"><?php echo $contador; ?></th>
                    <td><?php echo $fila4["pesoUsr"] ?></td>
                    <td><?php echo $fila4["nivelOdisea"] ?></td>
                    <td><?php echo $fila4["tiempoOdisea"] ?></td>
                    <td><?php echo $fila4["comentariosUsr"] ?></td>
                    <td><?php echo $fila4["respuestaTeam"] ?></td>

                    <!--Eliminar reporte semanal -->
                    <td><a href="acciones/eliminar_reporte.php?id_reporte=<?php echo $fila4["id_reporte"] ?>" class="btn btn-default btn-rounded"><i class="fa fa-trash" style="color:red" aria-hidden="true"></i></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive-lg">
        <table class="table table-sm">
            <tbody>
                <tr>
                    <!--Respuesta -->
                    <td>
                        <form action="acciones/responder_reporte.php" method="post">
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Responder comentario</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" name="respuesta" rows="3"></textarea>
                            </div>
                            <INPUT type="text" name="id_reporte" value="<?php echo $fila4["id_reporte"]?>" hidden>
                            <INPUT class="btn btn-primary mb-2" type="submit" value="Enviar">
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive-lg">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">Frente</th>
                    <th scope="col">Perfil</th>
                    <th scope="col">Espaldas</th>
                </tr>
            </thead>
            <tbody align="center">
                <tr>
                    <td><a href="../guia/acciones/<?php echo $fila4["fotoFrontal"] ?>" download><img width="75%" src="../guia/acciones/<?php echo $fila4["fotoFrontal"] ?>"></a></td>
                    <td><a href="../guia/acciones/<?php echo $fila4["fotoPerfil"] ?>" download><img download width="75%" src="../guia/acciones/<?php echo $fila4["fotoPerfil"] ?>"></a></td>
                    <td><a href="../guia/acciones/<?php echo $fila4["fotoEspaldas"] ?>" download><img download width="75%" src="../guia/acciones/<?php echo $fila4["fotoEspaldas"] ?>"></a></td>
                </tr>
            </tbody>
        </table>
    </div>
    <hr>
<?php $contador++;
} ?>