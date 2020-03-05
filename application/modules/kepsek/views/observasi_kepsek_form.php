
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6"> 
              <h1>Tambah PPI</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Tambah PPI</li>
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
                  <h3 class="card-title">Tambah PPI </h3>
                  <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header --> 
              <!-- form start -->
              <?php if ($this->session->flashdata('status_red') != '') : ?>
                <div class="alert alert-danger alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>    
                  <span><?php echo $this->session->flashdata('status_red') ?></span>
                </div>
              <?php endif; ?>
              <?php if ($this->session->flashdata('status_green') != '') : ?>
                <div class="alert alert-success alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>    
                  <span><?php echo $this->session->flashdata('status_green') ?></span>
                </div>
              <?php endif; ?>

              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">No. Induk Siswa</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="no_induk" value="<?php if(isset($observasi_kepsek->no_induk)) echo $observasi_kepsek->no_induk; 
                      elseif ($this->session->has_userdata('daftar'))  echo $this->session->daftar['no_induk']; ?>" required readonly/>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_anak" placeholder="Nama Anak" value="<?php if(isset($observasi_kepsek->nama_anak)) echo $observasi_kepsek->nama_anak; elseif ($this->session->has_userdata('daftar'))  echo $this->session->daftar['nama_lengkap_anak'] ?>" required readonly/>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kompetensi Inti</label>
                    <div class="col-sm-3">
                      <select name="kompetensi_inti" class="col-sm-12" required>
                        <option value="">--- Pilih Kompetensi Inti ---</option>
                        <?php echo modules::run('master/kurikulum/options_kompetensi_inti', $observasi_kepsek->kompetensi_inti); ?>
                      </select>
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kompetensi Dasar</label>
                    <div class="col-sm-9">
                      <select name="kompetensi_dasar" class="col-sm-12" required>
                        <option value="">--- Pilih Kompetensi Dasar ---</option>
                        <?php echo modules::run('master/kurikulum/options_kompetensi_dasar', $observasi_kepsek->kompetensi_dasar); ?>
                      </select>
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kemampuan saat observasi</label>
                    <div class="col-sm-9 row-sm-2">
                      <input type="text" class="form-control" name="kemampuan_saat_observasi" rows="2" placeholder="Kemampuan saat observasi" value="<?php if(isset($observasi_kepsek->kemampuan_saat_observasi)) echo $observasi_kepsek->kemampuan_saat_observasi; ?>"  required />
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Program</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" name="program" placeholder="Program" value="<?php if(isset($observasi_kepsek->program)) echo $observasi_kepsek->program; ?>"  required />
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tujuan</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" name="tujuan" placeholder="Tujuan program" value="<?php if(isset($observasi_kepsek->tujuan)) echo $observasi_kepsek->tujuan; ?>"  required />
                    </div>
                  </div>

                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Keterangan</label>
                    <div class="col-sm-9">
                      <select name="ket" class="col-sm-12" required>
                        <option value="">--- Pilih Kompetensi Dasar ---</option>
                        <option value="Materi baru">Masih baru</option>
                        <option value="Masih berlanjut">Masih berlanjut</option>
                        <option value="Selesai">Selesai</option>
                      </select>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">KKM</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" name="kkm" placeholder="KKM" value="<?php if(isset($observasi_kepsek->kkm)) echo $observasi_kepsek->kkm; ?>"  required />
                    </div>
                  </div>

                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Simpan</button><!-- 
                  <a href="<?php #echo site_url('/kepsek/penerimaan_siswa/edit/'.$this->session->daftar['id_pendaftaran'] ); ?>" class="btn btn-success">Selesai</a> -->


                  <?php 
                    if(isset($observasi_kepsek->pendaftaran_id)) 
                      $id_pendaftaran = $observasi_kepsek->pendaftaran_id; 
                    elseif ($this->session->has_userdata('daftar'))  
                      $no_induk =  $this->session->daftar['no_induk'] ;
                  ?>

                  <a href="<?php echo site_url('/kepsek/observasi_kepsek/cek_observasi/'.$no_induk); ?>" class="btn btn-success">Selesai</a>
                </div>

              <?php echo form_close(); ?>


            </div>
            <div class="card card-info" style="overflow: auto; white-space: nowrap;">
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th width="2%" >No</th>
                  <th width="30%" >Nama Anak</th>
                  <th width="30%" >Kurikulum Inti</th>
                  <th width="30%" >kurikulum Dasar</th>
                  <th width="30%" >Kemampuan saat Observasi</th>
                  <th width="30%" >Program</th>
                  <th width="30%" >Tujuan</th>
                  <th width="30%" >Keterangan</th>
                  <th width="30%" >KKM</th>
                  <th width="20%" >Aksi</th>
                </tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1; 
                    foreach($grid as $record) :
                  ?>
                      <tr>
                        <td ><?php echo $no; ?></td>        
                        <td ><?php echo $record->nama_anak; ?></td>
                        <td ><?php echo $record->kompetensi_inti; ?></td>
                        <td ><?php echo $record->kompetensi_dasar; ?></td>
                        <td ><?php echo $record->kemampuan_saat_observasi; ?></td>
                        <td ><?php echo $record->program; ?></td>
                        <td ><?php echo $record->tujuan; ?></td>
                        <td ><?php echo $record->ket; ?></td>
                        <td ><?php echo $record->kkm; ?></td>
                        <td >
                          <a href="<?php echo site_url('/kepsek/observasi_kepsek/edit/'.$record->id_observasi_kepsek); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/kepsek/observasi_kepsek/delete/'.$record->id_observasi_kepsek); ?>" class="btn-sm btn-danger">Hapus Data</a>
                        </td>
                      </tr>
                  <?php  
                      $no++;
                    endforeach;
                  ?>
                </tbody>
                <tfoot>
                <tr>
                  <th width="2%" >No</th>
                  <th width="30%" >Nama Anak</th>
                  <th width="30%" >Kurikulum Inti</th>
                  <th width="30%" >kurikulum Dasar</th>
                  <th width="30%" >Kemampuan saat Observasi</th>
                  <th width="30%" >Program</th>
                  <th width="30%" >Tujuan</th>
                  <th width="30%" >Keterangan</th>
                  <th width="30%" >KKM</th>
                  <th width="20%" >Aksi</th>
                </tr>
                </tfoot>                
              </table>
                </div>
            </div>
          </div>
        </section>
            <!-- /.card -->



</body>
</html>
