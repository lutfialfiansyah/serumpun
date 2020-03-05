<!-- ./row -->
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-sm-12 col-lg-12 float-center">
            <div class="card card-warning card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
  
                  <li class="nav-item">
                    <a class="nav-link" href="<?php echo site_url('/ortu/prenatal/'); ?>" role="tab" aria-controls="custom-tabs-one-home" aria-selected="false">Prenatal</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active"  href="<?php echo site_url('/ortu/perinatal/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="true">Perinatal</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/postnatal/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Postnatal</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/imunisasi/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Imunisasi</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/psikomotorik/'); ?>" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Psikomotorik</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"   href="<?php echo site_url('/ortu/kesehatan_keluarga/'); ?>" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Kesehatan Keluarga</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/diagnosa/'); ?>" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Diagnosa Yang Pernah Diterima</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"   href="<?php echo site_url('/ortu/tata_laksana_setelah_diagnosa/'); ?>" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Tata Laksana Sejak Didiagnosa</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/gambaran_anak/'); ?>" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Gambaran Anak / Penjelasan Lainnya</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"   href="<?php echo site_url('/ortu/kegiatan_tidak_rutin_anak/'); ?>" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Jadwal Kegiatan Tidak Rutin Anak</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/kegiatan_rutin_anak/'); ?>" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Jadwal Kegiatan Rutin Anak</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"   href="<?php echo site_url('/ortu/harapan_ortu/'); ?>" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Harapan Kemampuan Yang Perlu Dikembangkan</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/rekam_medis/'); ?>" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Upload Data Rekam Medis</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"   href="<?php echo site_url('/ortu/kartu_keluarga/'); ?>" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Upload Data Kartu Keluarga</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"   href="<?php echo site_url('/cetak_pdf/cetak_pdf/'); ?>" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Unduh PDF</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- ./row -->


































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

                <?php if ($this->session->flashdata('status') != '') : ?>
                  <div class="alert alert-success alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>    
                    <span><?php echo $this->session->flashdata('status'); ?></span>
                  </div>
                <?php endif; ?>
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="<?= $this->session->has_userdata('daftar') ? $this->session->daftar['nama_lengkap_anak'] : '';?>" readonly>
                    </div>
                  </div>


                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">Id Pendaftaran</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="pendaftaran_id" value="<?= $this->session->has_userdata('daftar') ? $this->session->daftar['id_pendaftaran'] : '';?>"  readonly>
                    </div>
                  </div>


				 <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Usia Persalinan (Bulan)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="usia_persalinan" value="<?php echo $perinatal->usia_persalinan; ?>">
                    </div>
                  </div> 

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Jenis Persalinan</label>
                    <div class="col-sm-9">
                      <select name="persalinan_id" required>
                        <option value="">--- Jenis Persalinan ---</option>
                        <?php echo modules::run('master/persalinan/options_persalinan', $perinatal->persalinan_id); ?>
                      </select>
                    </div>
                  </div>    

 					<div class="form-group row">
                    <label class="col-sm-3 col-form-label">Penggunaan Induksi</label>
                    <div class="col-sm-9">
                      <?php if ($perinatal->induksi == 'Ya' || $perinatal->induksi == '') { ?>
                        <label>
                          <input type="radio" name="induksi" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="induksi" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="induksi" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="induksi" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Penolong Persalinan</label>
                    <div class="col-sm-9">
                      <select name="penolong_id" required>
                        <option value="">--- Penolong Persalinan ---</option>
                        <?php echo modules::run('master/penolong/options_penolong', $perinatal->penolong_id); ?>
                      </select>
                    </div>
                  </div> 

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Komplikasi Persalinan</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="komplikasi_id" value="<?php echo $perinatal->komplikasi_id; ?>">
                    </div>
                  </div>             

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kondisi Bayi Saat Lahir</label>
                    <div class="col-sm-9">
                      <select name="konbayi_id" required>
                        <option value="">--- Kondisi Bayi ---</option>
                        <?php echo modules::run('master/konbayi/options_konbayi', $perinatal->konbayi_id); ?>
                      </select>
                    </div>
                  </div> 
               
                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kelainan Saat Dilahirkan</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="kelainan_id" value="<?php echo $perinatal->kelainan_id; ?>">
                    </div>
                  </div> 
			
              
                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Mendapatkan Terapi</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="terapi_id" value="<?php echo $perinatal->terapi_id; ?>">
                    </div>
                  </div> 

              
                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Berat Badan Bayi Saat Lahir (Kg)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="bb_lahir" value="<?php echo $perinatal->bb_lahir; ?>">
                    </div>
                  </div> 


                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Panjang Badan Bayi Saat Lahir (Cm)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="pb_lahir" value="<?php echo $perinatal->pb_lahir; ?>">
                    </div>
                  </div> 


                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Lingkar Kepala Bayi Saat Lahir (Cm)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="lk_lahir" value="<?php echo $perinatal->lk_lahir; ?>">
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
