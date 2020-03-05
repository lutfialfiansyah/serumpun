
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Siswa</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Siswa</li>
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
                  <h3 class="card-title">Data Siswa </h3>
                  <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
            <?php if ($this->session->flashdata('status') != '') : ?>
              <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>    
                <span><?php echo $this->session->flashdata('status') ?></span>
              </div>
            <?php endif; ?>
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row" style="display: none;">
                    <label class="col-sm-3 col-form-label">ID Pendaftaran</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="pendaftaran_id" placeholder="ID Pendaftaran"  value="<?php if(isset($Siswa->pendaftaran_id)) echo $Siswa->pendaftaran_id; elseif ($this->session->has_userdata('daftar'))  echo $this->session->daftar['id_pendaftaran'] ?>"  required readonly />
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="anak_id" placeholder="NIK Anak" value="<?php if(isset($Siswa->nama_lengkap)) echo $Siswa->nama_lengkap; elseif ($this->session->has_userdata('daftar'))  echo $this->session->daftar['nama_lengkap_anak'] ?>"  required readonly/>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">NIK Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="anak_id" placeholder="NIK Anak" value="<?php if(isset($Siswa->anak_id)) echo $Siswa->nik_anak; elseif ($this->session->has_userdata('daftar'))  echo $this->session->daftar['nik_anak'] ?>"  required readonly/>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">No Induk Siswa</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="no_induk" placeholder="No Induk Siswa" value="<?php if(isset($Siswa->no_induk)) echo $Siswa->no_induk; ?>"  required />
                    </div>
                  </div>

                  <div class="form-group row" style="display: none;">
                    <label class="col-sm-3 col-form-label">Referrer Url</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="referrer_url"value="<?php if(isset($url)) echo $url; ?>"  required readonly/>
                    </div>
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
