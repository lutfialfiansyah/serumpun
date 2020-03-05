
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6"> 
              <h1>Pilih Tenaga Ahli</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Pilih Tenaga Ahli</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid --> 
      </section>

            <section class="content">
              <div class="container-fluid">

            <!-- Horizontal Form -->
          <div class="card card-info" style="overflow: auto; white-space: nowrap;">
               <div class="card-header"> 
                  <h3 class="card-title">Pilih Tenaga Ahli </h3>
                  <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php if ($this->session->flashdata('status') != '') : ?>
                <div class="alert alert-success alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>    
                  <span><?php echo $this->session->flashdata('status') ?></span>
                </div>
              <?php endif; ?>

              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">ID Pendaftaran</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="pendaftaran_id" placeholder="ID Pendaftaran" value="<?php if($this->session->has_userdata('daftar'))  echo $this->session->daftar['id_pendaftaran']; elseif (isset($pendaftaran->pendaftaran_id)) echo $pendaftaran->pendaftaran_id; ?>" required readonly/>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_anak" placeholder="Nama Anak" value="<?php if(isset($pendaftaran->nama_anak)) echo $pendaftaran->nama_anak; elseif ($this->session->has_userdata('daftar'))  echo $this->session->daftar['nama_lengkap_anak'] ?>" required readonly/>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tenaga Ahli</label>
                    <div class="col-sm-3">
                      <select name="tenaga_ahli1" class="col-sm-12" required>
                        <option value="">--- Pilih Tenaga Ahli ---</option>
                        <?php echo modules::run('master/sdm/options_sdm_by_grup','55', $pendaftaran->sdm_id); ?>
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
