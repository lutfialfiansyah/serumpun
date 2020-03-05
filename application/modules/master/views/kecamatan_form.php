      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Kecamatan</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Kecamatan</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>


            <section class="content">
              <div class="container-fluid">

            <!-- Horizontal Form -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Data Kecamatan</h3>
                <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">ID Kecamatan</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="id_kecamatan" placeholder="Id Kecamatan" value="<?php echo $kecamatan->id_kecamatan; ?>"  required >
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kecamatan</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="kecamatan" placeholder="Kecamatan" value="<?php echo $kecamatan->kecamatan; ?>"  required>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kecamatan</label>
                    <div class="col-sm-3">
                      <select name="kabkot_id" required>
                        <option value="">--- Pilih kabkot ---</option>
                        <?php echo modules::run('master/kabkot/options_kabkot', $kecamatan->kabkot_id); ?>
                      </select>
                    </div>
                  </div>            

                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Simpan</button>
                </div>

              <?php echo form_close(); ?>

            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
