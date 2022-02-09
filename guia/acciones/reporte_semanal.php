<?php 
$consulta4 = "SELECT *
FROM 
reporte 
LEFT JOIN 
team on reporte.team_id_team = team.id_equipo
WHERE id_reporte = $idreporte";

$resultado4 = mysqli_query($mysqli, $consulta4);
$contador = 1;
while($fila4 = mysqli_fetch_array($resultado4)){
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
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><?php echo $fila4["fechaSemana"] ?></th>
                <td><?php echo $fila4["pesoUsr"] ?></td>
                <td><?php echo $fila4["nivelOdisea"] ?></td>
                <td><?php echo $fila4["tiempoOdisea"] ?></td>
                <td><?php echo $fila4["comentariosUsr"] ?></td>
            </tr>
        </tbody>
    </table>
</div>
<div class="table-responsive-lg">
    <table class="table table-sm">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Respuesta del entrenador</th>
                <th scope="col">Nombre del entrenador</th>
                <th scope="col">Fecha</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><?php echo $fila4["respuestaTeam"] ?></td>
                <td><?php echo $fila4["nombreEq"]?></td>
                <td><?php echo $fila4["fechaRespuestaTeam"] ?></td>
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
<?php  $contador++; } ?>