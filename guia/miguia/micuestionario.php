<form class="user" action="acciones/cuestionatio_insert.php" method="post">
                        <div class="form-group">
                            <label for="q1">1- ¿Padeces alguna enfermedad?</label> 
                            <div>
                            <select id="q1" name="q1" class="custom-select">
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q1c">¿Cuál?</label> 
                            <input id="q1c" name="q1c" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="q2">2- ¿Patologías heredofamiliares (hipertensión, diabetes, cáncer) por parte de tus padres o abuelos?</label> 
                            <div>
                            <select id="q2" name="q2" class="custom-select">
                                <option value="Nada">Ninguna</option>
                                <option value="Hipertensión">Hipertensión</option>
                                <option value="Diabetes">Diabetes</option>
                                <option value="Cáncer">Cáncer</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q3">3- ¿Has tenido alguna cirugía o fractura?</label> 
                            <div>
                            <select id="q3" name="q3" class="custom-select">
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q3c">¿De ser así, recibiste alguna indicación medica respecto al ejercicio físico?</label> 
                            <input id="q3c" name="q3c" type="textarea" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="q4">4- ¿Padeces durante o después de la actividad física algunos de estos sintomas?</label> 
                            <div>
                            <select id="q4" name="q4" class="custom-select">
                                <option value="Nada">Ninguna</option>
                                <option value="Pierdes el equilibrio">Pierdes el equilibrio</option>
                                <option value="Sufres mareos">Sufres mareos</option>
                                <option value="Desmayos antes">Desmayos antes</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q5">5- ¿Sientes algun dolor y/o incomodidad ósea o articular que se agrave con el ejercicio?</label> 
                            <input id="q5" name="q5" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="q6">6- ¿Cuantas comidas realizas al día?</label> 
                            <div>
                            <select id="q6" name="q6" class="custom-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q7">7- ¿Haz realizado un programa de alimentación antes?</label> 
                            <div>
                            <select id="q7" name="q7" class="custom-select">
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q8">8- ¿Cuántos litros de agua tomas al día?</label> 
                            <input id="q8" name="q8" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="q9">9- ¿Practicas alguna actividad física?</label> 
                            <div>
                            <select id="q9" name="q9" class="custom-select">
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q9c">¿Cuál?</label> 
                            <input id="q9c" name="q9c" type="text" class="form-control">
                        </div> 
                        <div class="form-group">
                            <label>Acepto los  <a target="_blank" href="https://integracionsaludable.com/terminos-y-condiciones/">términos y condiciones</a> y el <a target="_blank" href="https://integracionsaludable.com/aviso-de-privacidad/">aviso de privacidad</a></label> 
                            <div>
                            <div class="custom-control custom-checkbox custom-control-inline">
                                <input name="estatusCuestionario" id="checkbox_0" type="checkbox" required="required" class="custom-control-input" value="1"> 
                                <label for="checkbox_0" class="custom-control-label">Acepto</label>
                            </div>
                            </div>
                        </div> 
                        
                        <div class="form-group">
                            <button name="submit" type="submit" class="btn btn-primary">Enviar</button>
                        </div>
                        </form>