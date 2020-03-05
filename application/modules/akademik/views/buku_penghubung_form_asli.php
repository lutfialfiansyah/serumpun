      
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Buku Penghubung</h1>
            </div> 
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Buku Penghubung</li>
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
                <h3 class="card-title">Buku Penghubung</h3>
                <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="<?= $this->session->has_userdata('data_siswa') ? $this->session->data_siswa['nama_lengkap_anak'] : '';?>" readonly>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">No Induk</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="no_induk" value="<?= $this->session->has_userdata('data_siswa') ? $this->session->data_siswa['no_induk'] : '';?>"  readonly>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Buku Penghubung</label>
                    <div class="col-sm-9">
                      <input type="date" class="form-control"  name="tgl_buku_penghubung" value="<?php echo $buku_penghubung->tgl_buku_penghubung; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Hal</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="hal" value="<?php echo $buku_penghubung->hal; ?>">
                    </div>
                  </div>




                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Penilaian</label>
                    <div class="col-sm-3">
                      <select name="penilaian_id" required>
                        <option value="">--- Pilih Penilaian ---</option>
                        <?php echo modules::run('master/penilaian/options_penilaian', $buku_penghubung->penilaian_id); ?>
                      </select>
                    </div>
                  </div>  




                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Keterangan</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="keterangan" value="<?php echo $buku_penghubung->keterangan; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kemandirian</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="kemandirian" value="<?php echo $buku_penghubung->kemandirian; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Informasi Guru</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="informasi_guru" value="<?php echo $buku_penghubung->informasi_guru; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">informasi Ortu</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="informasi_ortu" value="<?php echo $buku_penghubung->informasi_ortu; ?>">
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
