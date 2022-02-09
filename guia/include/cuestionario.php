<div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-primary py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <?php
                                                if ($fila2["estatusCuestionario"] == 0 || $fila2["estatusCuestionario"] == NULL) {
                                                    echo '<div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Hacer cuestionario</span></div>
                                                 
                                                              <div class="col-auto"><a href="cuestionario.php"><i class="fas fa-clipboard-list fa-2x text-primary"></i></a></div>
                                                              <hr>
                                                          <div class="alert alert-danger" role="alert">
                                                           ¡Tienes campos sin llenar!
                                                          </div>';
                                                } else {
                                                    echo '<div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Cuestionario realizado</span></div>
                                                
                                                              <div class="col-auto"><i class="fas  fa-check fa-2x text-primary"></i></div>
                                                              <hr>
                                                          <div class="alert alert-success" role="alert">
                                                           ¡Ahora podrás continuar con la carga de fotos!
                                                          </div>';
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>