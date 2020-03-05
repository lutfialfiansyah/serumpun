
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Observasi Tenaga Ahli</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Observasi Tenaga Ahli</li>
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
                <h3 class="card-title">Observasi Tenaga Ahli</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php echo form_open_multipart($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">Id Pendaftaran</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="pendaftaran_id" value="<?php if(isset($observasi_tenaga_ahli->pendaftaran_id)) echo $observasi_tenaga_ahli->pendaftaran_id; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">SDM</label>
                    <div class="col-sm-3">
                      <select name="sdm_id" required readonly>
                        <?php 
                          if ($grup->id_pengguna_grup == '55') {
                            echo '<option value="'.$grup->id_sdm.'">'.$grup->nama_lengkap.'</option>';
                          }
                          else {
                            echo modules::run('master/sdm/options_sdm', $observasi_tenaga_ahli->sdm_id);
                          } 
                        ?>
                      </select>
                    </div>
                  </div>  


                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap Anak</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="<?php if(isset($observasi_tenaga_ahli->nama_lengkap_anak)) echo $observasi_tenaga_ahli->nama_lengkap_anak; ?>" readonly>
                    </div>
                   </div>


                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Usia Anak</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" name="usia_anak" value="<?php if(isset($observasi_tenaga_ahli->usia_anak)) echo $observasi_tenaga_ahli->usia_anak; ?>" readonly>
                    </div>
                   </div>

                   
                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Observasi</label>
                      <div class="col-sm-6">
                        <input class="form-control input-sm" type="date" name="tgl_observasi" placeholder="Tanggal" value="<?php echo date("d-m-Y"); ?>"  />
                      </div>
                   </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Laporan Observasi</label>
                      <div class="col-sm-6">
                        <input class="form-control input-sm" type="date" name="tgl_laporan_observasi" placeholder="Tanggal" value="<?php echo date("d-m-Y"); ?>"  />
                      </div>
                   </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Judul Laporan Observasi</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" name="judul_laporan_observasi" value="<?php echo $observasi_tenaga_ahli->judul_laporan_observasi; ?>">
                    </div>
                   </div>

                   <div class="form-group">
                    <label class="col-sm-3 col-form-label">File Observasi (PDF)</label>
                    <div class="col-sm-6">
                      <input class="form-control input-sm" type="file" name="userfile" />
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
