<section class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light" id="section-home">
    <div class="map_container">

    <div id="map"></div>
      <div id="wrapper" style="display:none">
        <div id="location" class="mb-4"></div>
        <div id="scale" class="mb-4"></div>
      </div>
    </div>

    
    <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <h2 class="heading mb-3">Modificar Hidrante</h2>
            <div class="sub-heading">
              <p class="mb-4">Ingrese los datos del hidrante que desea crear</p>
            </div>
          </div>
          <div class="col-md-1">
          </div>
          <div class="col-md-5 relative align-self-center">
            <!--<form action="#" class="bg-white rounded pb_form_v1">-->
            <?php echo form_open('hidrantes/create', 'class="bg-white rounded pb_form_v1"'); ?>
              <div class="validation_errors"><?php echo validation_errors(); ?></div>
              <label>Nombre</label>
              <div class="form-group">
                <input type="text" class="form-control pb_height-50 reverse" placeholder="Nombre" name="nombre">
              </div>
              <label>Calle</label>
              <div class="form-group">
                <input type="text" class="form-control pb_height-50 reverse" placeholder="Calle" name="calle">
              </div>
              <label>Avenida</label>
              <div class="form-group">
                <input type="text" class="form-control pb_height-50 reverse" placeholder="Avenida" name="avenida">
              </div>
              <label>Caudal</label>
              <div class="form-group">
                <input type="text" class="form-control pb_height-50 reverse" placeholder="Caudal" name="caudal">
              </div>              
              <div class="form-group">
                <input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue" value="Enviar">
              </div>
            </form>

          </div>
        </div>
      </div>

    </section>
    <!-- END section -->
