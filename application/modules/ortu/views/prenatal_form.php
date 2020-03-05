
      <!-- ./row -->
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-sm-12 col-lg-12 float-center">
            <div class="card card-warning card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">

                  <li class="nav-item">
                    <a class="nav-link active"  href="<?php echo site_url('/ortu/prenatal/'); ?>" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">Prenatal</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/perinatal/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Perinatal</a>
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

<!--------------------------------------------------------------------------------------------->


      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Prenatal</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Prenatal</li>
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
                <h3 class="card-title">Prenatal (Sebelum Kehamilan)</h3>
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
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="<?= $this->session->has_userdata('daftar') ? $this->session->daftar['nama_lengkap_anak'] : '';?>"  readonly>
                    </div>
                  </div>


                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">Id Pendaftaran</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="pendaftaran_id" value="<?= $this->session->has_userdata('daftar') ? $this->session->daftar['id_pendaftaran'] : '';?>"  readonly>
                    </div>
                  </div>


                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kehamilan Diinginkan</label>
                    <div class="col-sm-9">
                      <?php if ($prenatal->kehamilan == 'Ya' || $prenatal->kehamilan == '') { ?>
                        <label>
                          <input type="radio" name="kehamilan" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="kehamilan" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="kehamilan" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="kehamilan" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pemeriksa Kehamilan Teratur</label>
                    <div class="col-sm-9">
                      <?php if ($prenatal->periksa_kehamilan == 'Ya' || $prenatal->periksa_kehamilan == '') { ?>
                        <label>
                          <input type="radio" name="periksa_kehamilan" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="periksa_kehamilan" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="periksa_kehamilan" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="periksa_kehamilan" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>




                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pemeriksa Kehamilan</label>
                    <div class="col-sm-9">
                      <select name="pemeriksa_id" required>
                        <option value="">--- Pemeriksa ---</option>
                        <?php echo modules::run('master/pemeriksa/options_pemeriksa', $prenatal->pemeriksa_id); ?>
                      </select>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kebiasaan Orang Tua</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control"name="kebortu_id" value="<?= $this->session->has_userdata('daftar') ? $prenatal->kebortu_id : '';?>"/>
                    </div>
                    <label class="col-sm-3 col-form-label">(Merokok/Alkohol/Obat/Jamu/Lain-lain)</label>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Penyakit Ibu</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" name="penyakit_ibu" value="<?php echo $prenatal->penyakit_ibu; ?>">
                    </div>
                    <label class="col-sm-3 col-form-label">(Hipertensi/Diabetes/Anemia/Lain-lain)</label>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Penyakit Ayah</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" name="penyakit_ayah" value="<?php echo $prenatal->penyakit_ayah; ?>">
                    </div>
                    <label class="col-sm-3 col-form-label">(Hipertensi/Diabetes/Anemia/Lain-lain)</label>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Penggunaan KB</label>
                    <div class="col-sm-9">
                      <select name="kb_id" required>
                        <option value="">--- Penggunaan KB ---</option>
                        <?php echo modules::run('master/kb/options_kb', $prenatal->kb_id); ?>
                      </select>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Psikologis Ibu</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="psikologis_ibu" value="<?php echo $prenatal->psikologis_ibu; ?>">
                    </div>
                  </div>             

                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>

              <?php echo form_close(); ?>

            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
