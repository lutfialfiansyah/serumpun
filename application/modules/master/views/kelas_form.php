      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Perinatal</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Perinatal</li>
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
                <h3 class="card-title">Perinatal (Ketika Melahirkan)</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Kelas</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_kelas" value="<?php echo $kelas->nama_kelas; ?>"  required >
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tahun Ajaran (XXXX/XXXX)</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="tahun_ajaran" value="<?php echo $kelas->tahun_ajaran; ?>"  required >
                    </div>
                  </div> 

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Semester</label>
                    <div class="col-sm-9">
                      <?php if ($kelas->semester == 'Semester 1' || $kelas->semester == '') { ?>
                        <label>
                          <input type="radio" name="semester" value="Semester 1" checked> Semester 1
                        </label>
                        <label>
                          <input type="radio" name="semester" value="Semester 2"> Semester 2
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="semester" value="Semester 1"> Semester 1
                        </label>
                        <label>
                          <input type="radio" name="semester" value="Semester 2" checked> Semester 2
                        </label>
                      <?php } ?>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tipe Kelas</label>
                    <div class="col-sm-9">
                      <?php if ($kelas->tipe_kelas == 'Reguler' || $kelas->tipe_kelas == '') { ?>
                        <label>
                          <input type="radio" name="tipe_kelas" value="Reguler" checked> Reguler
                        </label>
                        <label>
                          <input type="radio" name="tipe_kelas" value="Semi Reguler"> Semi Reguler
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="tipe_kelas" value="Reguler"> Reguler
                        </label>
                        <label>
                          <input type="radio" name="tipe_kelas" value="Semi Reguler" checked> Semi Reguler
                        </label>
                      <?php } ?>
                    </div>
                  </div>





                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Koordinator</label>
                    <div class="col-sm-3">
                      <select name="koordinator" required>
                        <option value="">--- Pilih Koordinator ---</option>
                        <?php echo modules::run('master/sdm/options_sdm', $kelas->koordinator); ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pembimbing 1</label>
                    <div class="col-sm-3">
                      <select name="pembimbing1" required>
                        <option value="">--- Pilih Pembimbing ---</option>
                        <?php echo modules::run('master/sdm/options_sdm', $kelas->pembimbing1); ?>
                      </select>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pembimbing 2</label>
                    <div class="col-sm-3">
                      <select name="pembimbing2" required>
                        <option value="">--- Pilih Pembimbing ---</option>
                        <?php echo modules::run('master/sdm/options_sdm', $kelas->pembimbing2); ?>
                      </select>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pembimbing 3</label>
                    <div class="col-sm-3">
                      <select name="pembimbing3" required>
                        <option value="">--- Pilih Pembimbing ---</option>
                        <?php echo modules::run('master/sdm/options_sdm', $kelas->pembimbing3); ?>
                      </select>
                    </div>
                  </div>



  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-6">
      <button type="submit" class="btn btn btn-primary btn-sm button-blue" > Submit </button>
    </div>
  </div>
<?php echo form_close(); ?>

            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
