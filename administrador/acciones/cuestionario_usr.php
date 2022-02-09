<?php

$consulta4 = "SELECT * FROM cuationario WHERE usuario_id_usuario = $idusuario";
$resultado4 = mysqli_query($mysqli, $consulta4);
$fila4 = mysqli_fetch_array($resultado4);
?>


<div class="form-group">
    <label for="q1">1- ¿Padeces alguna enfermedad?</label>
    <dd><?php echo $fila4["q1"] ?></dd>
</div>
<div class="form-group">
    <label for="q1c">¿Cuál?</label>
    <dd><?php echo $fila4["q1c"] ?></dd>
</div>
<div class="form-group">
    <label for="q2">2- ¿Patologías heredofamiliares (hipertensión, diabetes, cáncer) por parte de tus padres o abuelos?</label>
    <dd><?php echo $fila4["q2"] ?></dd>
</div>
<div class="form-group">
    <label for="q3">3- ¿Has tenido alguna cirugía o fractura?</label>
    <dd><?php echo $fila4["q3"] ?></dd>
</div>
<div class="form-group">
    <label for="q3c">¿De ser así, recibiste alguna indicación medica respecto al ejercicio físico?</label>
    <dd><?php echo $fila4["q3c"] ?></dd>
</div>
<div class="form-group">
    <label for="q4">4- ¿Padeces durante o después de la actividad física algunos de estos sintomas?</label>
    <dd><?php echo $fila4["q4"] ?></dd>
</div>
<div class="form-group">
    <label for="q5">5- ¿Sientes algun dolor y/o incomodidad ósea o articular que se agrave con el ejercicio?</label>
    <dd><?php echo $fila4["q5"] ?></dd>
</div>
<div class="form-group">
    <label for="q6">6- ¿Cuantas comidas realizas al día?</label>
    <dd><?php echo $fila4["q6"] ?></dd>
</div>
<div class="form-group">
    <label for="q7">7- ¿Haz realizado un programa de alimentación antes?</label>
    <dd><?php echo $fila4["q7"] ?></dd>
</div>
<div class="form-group">
    <label for="q8">8- ¿Cuántos litros de agua tomas al día?</label>
    <dd><?php echo $fila4["q8"] ?></dd>
</div>
<div class="form-group">
    <label for="q9">9- ¿Practicas alguna actividad física?</label>
    <dd><?php echo $fila4["q9"] ?></dd>
</div>
<div class="form-group">
    <label for="q9c">¿Cuál?</label>
    <dd><?php echo $fila4["q9c"] ?></dd>
</div>