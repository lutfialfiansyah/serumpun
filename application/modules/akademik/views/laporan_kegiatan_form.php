      
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Laporan Kegiatan</h1>
            </div> 
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Laporan Kegiatan</li>
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
                <h3 class="card-title">Laporan Kegiatan</h3>
                <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

                <div class="card-body">

                  <div class="form-group row" style="display: none;">
                    <label class="col-sm-3 col-form-label">No Induk</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="no_induk" value="<?= $this->session->has_userdata('data_siswa') ? $this->session->data_siswa['no_induk'] : '';?>"  readonly>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="<?= $this->session->has_userdata('data_siswa') ? $this->session->data_siswa['nama_lengkap_anak'] : '';?>" readonly>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Kegiatan</label>
                    <div class="col-sm-9">
                      <input type="date" class="form-control"  name="tgl_kegiatan" value="<?php echo $laporan_kegiatan->tgl_kegiatan; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kegiatan</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="kegiatan" value="<?php echo $laporan_kegiatan->kegiatan; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Deskripsi</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="deskripsi" value="<?php echo $laporan_kegiatan->deskripsi; ?>">
                    </div>
                  </div>


                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kategori</label>
                    <div class="col-sm-9">
                      <?php if ($laporan_kegiatan->kategori == 'Jumat' || $laporan_kegiatan->kategori == '') { ?>
                        <label>
                          <input type="radio" name="kategori" value="Jumat" checked> Jumat
                        </label>
                        <label>
                          <input type="radio" name="kategori" value="Agenda"> Agenda
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="kategori" value="Jumat"> Jumat
                        </label>
                        <label>
                          <input type="radio" name="kategori" value="Agenda" checked> Agenda
                        </label>
                      <?php } ?>
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
