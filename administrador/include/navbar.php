<ul class="nav navbar-nav text-light" id="accordionSidebar">
    <li class="nav-item" role="presentation"><a class="nav-link" href="index.php"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
    <?php
    if (!isset($_SESSION)) {
        session_start();
    }
    echo  '<li class="nav-item" role="presentation"><a class="nav-link" href="usuarios.php"><i class="fas fa-users"></i><span>Usuarios generales</span></a></li>';
    echo  '<!-- Nav Item - Pages Collapse Menu Programa -->
                          <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              <i class="fas fa-fw fa fa-tasks"></i>
                              <span>Usuarios por categorias</span>
                            </a>
                            <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                            <a class="collapse-item" href="usuarios_fotos.php">Usuarios con fotos</a>
                            <a class="collapse-item" href="usuarios_guias.php">Usuarios con guia</a>
                            <a class="collapse-item" href="usuarios_cuestionario.php">Usuarios con cuestionario</a>
                            <a class="collapse-item" href="usuarios_reportes.php">Usuarios con reportes</a>
                            <a class="collapse-item" href="usuarios_inactivos.php">Usuarios inactivos</a>

                          </li>';

    ?>
</ul>