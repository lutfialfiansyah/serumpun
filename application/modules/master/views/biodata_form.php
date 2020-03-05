<?php echo jquery_select2(); ?>
<?php echo bootstrap_datepicker3(); ?>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() { 

  $.ajaxSetup({ 
    type:"POST", 
    url: "<?php echo base_url().'master/biodata/ambil_data'; ?>",
    cache: false
  });


  $("#provinsi").change(function(){
    var value=$(this).val();
    if(value>0){      
      $.ajax({
        data:{modul:'kabupaten',id:value},
        success: function(respond){
          $("#kabupaten-kota").html(respond);
        }
      })
    }
  });

  $("#kabupaten-kota").change(function(){
    var value=$(this).val();
    if(value>0){
      $.ajax({
        data:{modul:'kecamatan',id:value},
        success: function(respond){
          $("#kecamatan").html(respond);
        }
        
      })
    }
  })

  $("#kecamatan").change(function(){
    var value=$(this).val();
    if(value>0){
      $.ajax({
        data:{modul:'kelurahan',id:value},
        success: function(respond){
          $("#kelurahan-desa").html(respond);
        }
      })
    } 
  })

  $(".input-group.date").datepicker({ 
    autoclose: true, 
    todayHighlight: true 
  });
  

  $('[name=goldarah_id]').select2({width: '100%'}); 
  $('[name=agama_id]').select2({width: '100%'}); 
  $('[name=kabkot_id]').select2({width: '100%'}); 
  $('[name=pendidikan_id]').select2({width: '100%'}); 
  $('[name=pekerjaan_id]').select2({width: '100%'});

}); 
</script>

      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Biodata</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Biodata</li>
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
                <h3 class="card-title">Data Biodata</h3>
                <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
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
              <!-- /.card-header -->
              <!-- form start -->
              <?php echo form_open_multipart($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">
                  <div class="form-group row" <?php if ($this->uri->segment(3) == 'edit') { echo 'hidden="true"'; } ?>>
                    <label class="col-sm-3 col-form-label">NIK</label>
                    <div class="col-sm-3">
                       <input type="text" class="form-control" name="nik" placeholder="NIK" value="<?php echo $biodata->nik; ?>"  required <?php if ($this->uri->segment(3) == 'edit') { echo 'readonly'; } ?>>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap" placeholder="Nama Lengkap" value="<?php echo $biodata->nama_lengkap; ?>"  required >
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Panggilan</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_panggilan" placeholder="Nama Panggilan" value="<?php echo $biodata->nama_panggilan; ?>"  required >
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Lahir</label>
                    <div class="col-sm-3">
                      <input type="date" class="form-control input-sm" name="tgl_lahir" value="<?php echo $biodata->tgl_lahir; ?>"  required >
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Jenis Kelamin</label>
                    <div class="col-sm-9">
                      <?php if ($biodata->jk == 'Y' || $biodata->jk == '') { ?>
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
                    <label class="col-sm-3 col-form-label">Golongan Darah</label>
                    <div class="col-sm-3">
                      <select name="goldarah_id" required>
                        <option value="">--- Pilih Golongan Darah ---</option>
                        <?php echo modules::run('master/goldarah/options_goldarah', $biodata->goldarah_id); ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Agama</label>
                    <div class="col-sm-3">
                      <select name="agama_id" required>
                        <option value="">--- Pilih Agama ---</option>
                        <?php echo modules::run('master/agama/options_agama', $biodata->agama_id); ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Telepon</label>
                    <div class="col-sm-3">
                      <input class="form-control input-sm" type="number" name="telp" value="<?php echo $biodata->telp; ?>"/>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">E-mail</label>
                    <div class="col-sm-3">
                      <input class="form-control input-sm" type="email" name="email" placeholder="Email" value="<?php echo $biodata->email; ?>"/>
                    </div>
                  </div>  

                  <?php if($this->uri->segment(3) == 'edit') { ?>
                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Foto</label>
                    <div class="col-sm-3">
                      <div class="image">
                        <?php $biodata->foto != '' ? $img_photo = $biodata->foto : $img_photo = "foto_default.jpg"; ?>
                        <img src="<?php echo base_url('foto/foto_biodata/thumbnails/'.$img_photo); ?>" class="img-responsive img-thumbnail" alt="Responsive image" />
                      </div>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Ganti Foto</label>
                    <div class="col-sm-3">
                      <input class="form-control input-sm" type="file" name="userfile" />
                    </div>
                  </div>  
                  
                  <?php } else { ?>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Foto</label>
                    <div class="col-sm-3">
                      <input class="form-control input" type="file" name="userfile" />
                    </div>
                  </div>  
                <?php } ?>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Provinsi</label>
                    <div class="col-sm-3">
                      <select name="provinsi" id="provinsi" required>
                        <option value="0">--- Pilih Provinsi ---</option>
                        <?php 
                          foreach ($provinsi as $prov) {
                            if (isset($biodata->id_provinsi)) {
                              if ($prov[id_provinsi] == $biodata->id_provinsi) {
                                echo "<option value='$prov[id_provinsi]' selected>$prov[provinsi]</option>";
                              }
                              else {
                                echo "<option value='$prov[id_provinsi]'>$prov[provinsi]</option>";
                              }
                            }
                            else {
                              echo "<option value='$prov[id_provinsi]'>$prov[provinsi]</option>";
                            }
                            
                          }           
                        ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kabupaten/Kota</label>
                    <div class="col-sm-3">
                      <select name="kabupaten-kota" id="kabupaten-kota" required>
                        <option value="0">--- Pilih Kabupaten/Kota ---</option>
                        <?php 
                          if ($biodata->id_provinsi) {
                            echo "<option value='$biodata->id_kabkot' selected>$biodata->kabkot</option>";
                          }
                        ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kecamatan</label>
                    <div class="col-sm-3">
                      <select name="kecamatan" id="kecamatan" required>
                        <option value="0">--- Pilih Kecamatan ---</option>
                        <?php 
                          if ($biodata->id_provinsi) {
                            echo "<option value='$biodata->id_kecamatan' selected>$biodata->kecamatan</option>";
                          }
                        ?>
                      </select>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kelurahan</label>
                    <div class="col-sm-3">
                      <select name="kelurahan_id" id="kelurahan-desa" required>
                        <option value="0">--- Pilih Kelurahan ---</option>
                          <?php 
                            if ($biodata->id_provinsi) {
                              echo "<option value='$biodata->id_kelurahan' selected>$biodata->kelurahan</option>";
                            }
                          ?>
                      </select>
                    </div>
                  </div>   

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Alamat</label>
                    <div class="col-sm-3">
                      <textarea name="alamat" class="form-control" placeholder="Alamat" required><?php echo $biodata->alamat; ?></textarea>
                    </div>
                  </div>  

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pendidikan Terakhir</label>
                    <div class="col-sm-3">
                      <select name="pendidikan_id" required>
                        <option value="">--- Pilih Pendidikan Terakhir ---</option>
                        <?php echo modules::run('master/pendidikan/options_pendidikan', $biodata->pendidikan_id); ?>
                      </select>
                    </div>
                  </div> 
                  
                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Pekerjaan</label>
                    <div class="col-sm-3">
                      <select name="pekerjaan_id" required>
                        <option value="">--- Pilih Pekerjaan ---</option>
                        <?php echo modules::run('master/pekerjaan/options_pekerjaan', $biodata->pekerjaan_id); ?>
                      </select>
                    </div>
                  </div> 
                  
                  <div class="form-group row" hidden>
                    <label class="col-sm-3 col-form-label">Pengguna ID</label>
                    <div class="col-sm-3">
                      <input class="form-control input-sm" type="text" name="pengguna_id" value="<?php echo $this->session->userdata('pengguna')->id; ?>" readonly/>
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
