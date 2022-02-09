<div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-success py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <?php
                                                if ($fila["caloriasUsr"] == 0 || $fila["caloriasUsr"] == NULL) {
                                                    echo '<div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Generar guía</span></div>
                                                
                                                          <div class="col-auto"><a href="acciones/generacion_guia.php"><i class="fas fa-tasks fa-2x text-success"></i></a></div>
                                                          <hr>
                                                          <div class="alert alert-danger" role="alert">
                                                           ¡Tienes campos sin llenar!
                                                          </div>';
                                                } else {
                                                    echo '<div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Ir a mi guía</span></div>
                                                
                                                          <div class="col-auto"><a href="miguia.php"><i class="fas fa-check fa-2x text-success"></i></a></div>
                                                          <hr>
                                                          <div class="alert alert-success" role="alert">
                                                           ¡Ahora podrás ir a tu guía nutricional!
                                                          </div>';
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>