      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Sumber Daya Manusia</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Sumber Daya Manusia</li>
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
                <h3 class="card-title">Formulir Sumber Daya Manusia</h3>
                <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap" placeholder="Nama Lengkap" value="<?php if($sdm->nama_lengkap != '') { echo $sdm->nama_lengkap; } elseif($pengguna->nama !='') {echo $pengguna->nama;} ?>"  required <?php if($sdm->nama_lengkap != '') echo ''; else echo 'readonly'; ?>>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Alamat</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="alamat" placeholder="Alamat" value="<?php echo $sdm->alamat; ?>"  required>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Lahir</label>
                    <div class="col-sm-3">
                      <input type="date" class="form-control" name="tgl_lahir" value="<?php echo $sdm->tgl_lahir; ?>"  required>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Jenis Kelamin</label>
                    <div class="col-sm-9">
                      <?php if ($sdm->jk == 'Y' || $sdm->jk == '') { ?>
                        <label>
                          <input type="radio" name="jk" value="Laki-laki" checked> Laki-laki
                        </label>
                        <label>
                          <input type="radio" name="jk" value="Perempuan"> Perempuan
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="jk" value="Laki-laki"> Laki-laki
                        </label>
                        <label>
                          <input type="radio" name="jk" value="Perempuan" checked> Perempuan
                        </label>
                      <?php } ?>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Agama</label>
                    <div class="col-sm-3">
                      <select name="agama_id" required>
                        <option value="">--- Pilih Agama ---</option>
                        <?php echo modules::run('master/agama/options_agama', $sdm->agama_id); ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pendidikan Terakhir</label>
                    <div class="col-sm-3">
                      <select name="pendidikan_id" required>
                        <option value="">--- Pilih Pendidikan Terakhir ---</option>
                        <?php echo modules::run('master/pendidikan/options_pendidikan', $sdm->pendidikan_id); ?>
                      </select>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pengalaman Kerja</label>
                    <div class="col-sm-3">
                      <textarea name="pengalaman_kerja" class="form-control" placeholder="Pengalaman Kerja" required><?php echo $sdm->pengalaman_kerja; ?></textarea>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Telp</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="telp" value="<?php echo $sdm->telp; ?>"  required>
                    </div>
                  </div> 

                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">ID Pengguna</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="id_pengguna" value="<?php if(isset($sdm->id_pengguna)) {if($sdm->id_pengguna != '') {echo $sdm->id_pengguna;}} elseif(isset($pengguna->id)) {if($pengguna->id != '') { echo $pengguna->id;}} ?>"  required readonly>
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
