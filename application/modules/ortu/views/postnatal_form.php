<!-- ./row -->
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-sm-12 col-lg-12 float-center">
            <div class="card card-warning card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
 
                  <li class="nav-item">
                    <a class="nav-link"  href="<?php echo site_url('/ortu/prenatal/'); ?>" role="tab" aria-controls="custom-tabs-one-home" aria-selected="false">Prenatal</a>
                  </li>
                  <li class="nav-item"> 
                    <a class="nav-link"  href="<?php echo site_url('/ortu/perinatal/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Perinatal</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active"  href="<?php echo site_url('/ortu/postnatal/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="true">Postnatal</a>
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
              <h1>Formulir Postnatal</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Postnatal</li>
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
                <h3 class="card-title">Postnatal (Setelah Melahirkan)</h3>
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
                    <label class="col-sm-3 col-form-label">Bayi Kuning</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->bayi_kuning == 'Ya' || $postnatal->bayi_kuning == '') { ?>
                        <label>
                          <input type="radio" name="bayi_kuning" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="bayi_kuning" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="bayi_kuning" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="bayi_kuning" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>


                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Sering Biru</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->sering_biru == 'Ya' || $postnatal->sering_biru == '') { ?>
                        <label>
                          <input type="radio" name="sering_biru" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="sering_biru" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="sering_biru" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="sering_biru" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

                    <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kejang</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->kejang == 'Ya' || $postnatal->kejang == '') { ?>
                        <label>
                          <input type="radio" name="kejang" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="kejang" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="kejang" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="kejang" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>


                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Lama Kejang</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="lama_kejang" value="<?php echo $postnatal->lama_kejang; ?>">
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kejang Seluruh Tubuh</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->kejang_seluruhtubuh == 'Ya' || $postnatal->kejang_seluruhtubuh == '') { ?>
                        <label>
                          <input type="radio" name="kejang_seluruhtubuh" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="kejang_seluruhtubuh" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="kejang_seluruhtubuh" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="kejang_seluruhtubuh" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

                    <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Seberapa Sering Kejang</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="sering_kejang" value="<?php echo $postnatal->sering_kejang; ?>">
                    </div>
                  </div> 

                    <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Keadaan Setelah Kejang</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="setelah_kejang" value="<?php echo $postnatal->setelah_kejang; ?>">
                    </div>
                  </div> 


                    <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Riwayat Sakit Berat</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="sakit_berat" value="<?php echo $postnatal->sakit_berat; ?>">
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Asupan Hingga 6 Bulan</label>
                    <div class="col-sm-9">
                      <select name="asupan_id" required>
                        <option value="">--- Jenis Asupan ---</option>
                        <?php echo modules::run('master/asupan/options_asupan', $postnatal->asupan_id); ?>
                      </select>
                    </div>
                  </div>  


                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Reflek Hisap</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->reflek_hisap == 'Ya' || $postnatal->reflek_hisap == '') { ?>
                        <label>
                          <input type="radio" name="reflek_hisap" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="reflek_hisap" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="reflek_hisap" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="reflek_hisap" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pola Makan Bubur (Usia)</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control"  name="makan_bubur" value="<?php echo $postnatal->makan_bubur; ?>">
                    </div>
                    <label class="col-sm-3 col-form-label"> (Bulan) </label>
                  </div>

              <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pola Makan Nasi Tim (Usia)</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control"  name="makan_nasitim" value="<?php echo $postnatal->makan_nasitim; ?>">
                    </div>
                    <label class="col-sm-3 col-form-label"> (Bulan) </label>
                  </div>

             <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pola Makan Nasi Biasa (Usia)</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control"  name="makan_nasibiasa" value="<?php echo $postnatal->makan_nasibiasa; ?>">
                    </div>
                    <label class="col-sm-3 col-form-label"> (Bulan) </label>
                  </div>

  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Sulitan Mengunyah/Menelan</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->kes_mengunyah == 'Ya' || $postnatal->kes_mengunyah == '') { ?>
                        <label>
                          <input type="radio" name="kes_mengunyah" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="kes_mengunyah" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="kes_mengunyah" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="kes_mengunyah" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>


  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Anak Memilih Makanan</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->memilih_makanan == 'Ya' || $postnatal->memilih_makanan == '') { ?>
                        <label>
                          <input type="radio" name="memilih_makanan" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="memilih_makanan" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="memilih_makanan" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="memilih_makanan" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>
                  
                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Memilih Makanan Dengan Cara Masak Tertentu  (Buah)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="masak_buah" value="<?php echo $postnatal->masak_buah; ?>">
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Memilih Makanan Dengan Cara Masak Tertentu  (Sayur)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="masak_sayur" value="<?php echo $postnatal->masak_sayur; ?>">
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Memilih Makanan Dengan Cara Masak Tertentu  (Daging/Ikan)</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="masak_dagingikan" value="<?php echo $postnatal->masak_dagingikan; ?>">
                    </div>
                  </div>

                    <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Masalah Buang Air Kecil</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->masalah_bak == 'Ya' || $postnatal->masalah_bak == '') { ?>
                        <label>
                          <input type="radio" name="masalah_bak" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="masalah_bak" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="masalah_bak" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="masalah_bak" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

               <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Masalah Buang Air Besar</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->masalah_bab == 'Ya' || $postnatal->masalah_bab == '') { ?>
                        <label>
                          <input type="radio" name="masalah_bab" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="masalah_bab" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="masalah_bab" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="masalah_bab" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>

<div class="form-group row">
                    <label class="col-sm-3 col-form-label">Masalah Sulit Tidur</label>
                    <div class="col-sm-9">
                      <?php if ($postnatal->masalah_tidur == 'Ya' || $postnatal->masalah_tidur == '') { ?>
                        <label>
                          <input type="radio" name="masalah_tidur" value="Ya" checked> Ya
                        </label>
                        <label>
                          <input type="radio" name="masalah_tidur" value="Tidak"> Tidak
                        </label>
                      <?php } else { ?>
                        <label>
                          <input type="radio" name="masalah_tidur" value="Ya"> Ya
                        </label>
                        <label>
                          <input type="radio" name="masalah_tidur" value="Tidak" checked> Tidak
                        </label>
                      <?php } ?>
                    </div>
                  </div>



	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Submit</button>
		</div>
	</div>
<?php echo form_close(); ?>

            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
