<div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-info py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <?php
                                                if ($fila3["usuario_id_usuario"] == 0 || $fila3["usuario_id_usuario"] == NULL) {
                                                    echo '<div class="text-uppercase text-info font-weight-bold text-xs mb-1"><span>Subir imagenes</span></div>
                                                
                                                          <div class="col-auto"><a href="acciones/importante.html"><i class="fas fa-camera fa-2x text-info"></i></a></div>
                                                          <hr>
                                                          <div class="alert alert-danger" role="alert">
                                                           ¡Tienes campos sin llenar!
                                                          </div>';
                                                } else {
                                                    echo '<div class="text-uppercase text-info font-weight-bold text-xs mb-1"><span>Fotos cargadas</span></div>
                                                
                                                          <div class="col-auto"><i class="fas fa-check fa-2x text-info"></i></div>
                                                          <hr>
                                                          <div class="alert alert-success" role="alert">
                                                           ¡Ahora podrás generar tu guía nutricional!
                                                          </div>';
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>