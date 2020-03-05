  <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Laporan Anak</h1> 
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Data Siswa</a></li>
                <li class="breadcrumb-item active">Laporan Anak</li>
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
                <h3 class="card-title">Laporan Anak</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
                <div class="card-body">
                  <div class="row">
                    <div class="float-left col-sm-5">

                      <div class="form-group row">
                        <label class="col-sm-8 col-form-label">Laporan Harian</label>
                        <div class="col-sm-4">
                          <a href="<?php echo site_url('/akademik/laporan_harian'); ?>" class="btn btn-primary">Lihat Detail</a>
                        </div>
                      </div>
                      <hr>

                      <div class="form-group row">
                        <label class="col-sm-8 col-form-label">Laporan Kegiatan</label>
                        <div class="col-sm-4">
                          <a href="<?php echo site_url('/akademik/laporan_kegiatan'); ?>" class="btn btn-primary">Lihat Detail</a>
                        </div>
                      </div>
                      <hr>

                      <div class="form-group row">
                        <label class="col-sm-8 col-form-label">Buku Penghubung</label>
                        <div class="col-sm-4">
                          <a href="<?php echo site_url('/akademik/buku_penghubung'); ?>" class="btn btn-primary">Lihat Detail</a>
                        </div>
                      </div>
                      <hr>

                    </div>
                    <div class="float-left col-sm-2">
                      
                    </div>
                    <div class="float-left col-sm-5">

                      <div class="form-group row">
                        <label class="col-sm-8 col-form-label">Rapor Semester</label>
                        <div class="col-sm-4">
                          <a href="<?php echo site_url('/akademik/rapor_semester'); ?>" class="btn btn-primary">Lihat Detail</a>
                        </div>
                      </div>
                      <hr>

                      <div class="form-group row">
                        <label class="col-sm-8 col-form-label">Perkembangan Fisik</label>
                        <div class="col-sm-4">
                          <a href="<?php echo site_url('/akademik/perubahan_fisik'); ?>" class="btn btn-primary">Lihat Detail</a>
                        </div>
                      </div>
                      <hr>

                    </div>
                  </div>
                </div>

            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
