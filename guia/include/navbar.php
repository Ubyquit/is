
          <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.php"><i class="fas fa-tachometer-alt"></i><span>Registro</span></a></li>
                    <?php
                     if(!isset($_SESSION)) 
                     { 
                         session_start(); 
                     } 
                       // echo  '<li class="nav-item" role="presentation"><a class="nav-link" href="cuestionario.php"><i class="fas fa-file-alt"></i><span>Cuestionario</span></a></li>';
                        
                        
                        echo  '<!-- Nav Item - Pages Collapse Menu Programa -->
                          <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              <i class="fas fa-fw fa fa-tasks"></i>
                              <span>Programa</span>
                            </a>
                            <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                            <a class="collapse-item" href="miguia.php">Ver mi guía nutricional</a>
                            <a class="collapse-item" href="reportesemanal.php">Reporte semanal</a>
                            <a class="collapse-item" href="acciones/importantereporte.html">Crear reporte</a>
                          </li>';?>
          </ul>