      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Perubahan Fisik Siswa</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Perubahan Fisik Siswa</li>
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
                <h3 class="card-title">Perubahan Fisik Siswa</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

                <div class="card-body"> 

                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">Id Siswa</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="siswa_id" value="<?= $this->session->has_userdata('data_siswa') ? $this->session->data_siswa['no_induk'] : '';?>"  readonly>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="<?= $this->session->has_userdata('data_siswa') ? $this->session->data_siswa['nama_lengkap_anak'] : '';?>" readonly>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Pengukuran</label>
                    <div class="col-sm-9">
                      <input type="date" class="form-control"  name="tgl_pengukuran" value="<?php echo $perubahan_fisik->tgl_pengukuran; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Berat Badan (Kg)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="berat_perbulan" value="<?php echo $perubahan_fisik->berat_perbulan; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tinggi Badan (Cm)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="tinggi_perbulan" value="<?php echo $perubahan_fisik->tinggi_perbulan; ?>">
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-6">
                      <button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
                    </div>
                 </div>

              <?php echo form_close(); ?> 

            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
