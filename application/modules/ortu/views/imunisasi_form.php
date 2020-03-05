
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
                    <a class="nav-link"  href="<?php echo site_url('/ortu/postnatal/'); ?>" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Postnatal</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active"  href="<?php echo site_url('/ortu/imunisasi/'); ?>" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">Imunisasi</a>
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
<html>
      <head>  
           <title>Dynamically Add or Remove input fields in PHP with JQuery</title>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
      </head>
<body>
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Imunisasi</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Imunisasi</li>
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
                <h3 class="card-title">Imunisasi</h3>
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

                  <div class="form-group row" hidden="true">
                    <label class="col-sm-3 col-form-label">Id Pendaftaran</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="pendaftaran_id" value="<?= $this->session->has_userdata('daftar') ? $this->session->daftar['id_pendaftaran'] : '';?>"  readonly>
                    </div>
                  </div>

                  <!-- <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Jenis Imunisasi</label>
                    <div class="col-sm-9">
                      <select name="imuni_id" required>
                        <option value="">--- Jenis Imunisasi ---</option>
                        <?php echo modules::run('master/imuni/options_imuni', $imunisasi->imuni_id); ?>
                      </select>
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Usia Saat Imunisasi</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control"  name="usia_untuk_imuni" value="<?php echo $imunisasi->usia_untuk_imuni; ?>">
                    </div>
                    <label class="col-sm-3 col-form-label">(Bulan)</label>
                  </div>    -->

        <!--           <div id="insert-form"></div>
                    <div class="form-group row">
                        <div class="col-sm-2">&nbsp;&nbsp;&nbsp;
                            <button type="button" id="btn-tambah-form"><i class="fas fa-md fa-arrow-circle-right">&nbsp; Tambah Barang </i></button>
                        </div>
                        <div class="col-sm-10">
                            <input type="submit" name="tbl" class="d-none d-sm-inline-block btn btn-primary btn-block shadow-sm btn-sm active " role="button" aria-pressed="true" value="Ajukan">
                        </div>
                    </div> -->          

                    <table class="table table-bordered" id="dynamic_field">  
                      <tr>  
                          <td>
                            <label class="col-sm-3 col-form-label">Imunisasi</label>
                            <div class="col-sm-9">
                              <select name="imuni_id[]" required>
                                <option value="">--- Jenis Imunisasi ---</option>
                                <?php echo modules::run('master/imuni/options_imuni', $imunisasi->imuni_id); ?>
                              </select>
                            </div>
                          </td>
                          <td>
                            <label class="col-sm-3 col-form-label">Usia (Bulan)</label>
                            <div class="col-sm-9">
                               <input type="text" name="usia_untuk_imuni[]" placeholder="Enter your Name" class="form-control name_list" />
                            </div>
                          </td>  
                          

                          <td>
                            <button type="button" name="add" id="add" class="btn btn-success">Add More </button>
                          </td>  
                        </tr>  

                    </table> 

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


 <script>  
 $(document).ready(function(){  
      var i=1;  
      $('#add').click(function(){  
           i++;  
          //  $('#dynamic_field').append('<tr id="row'+i+'"><td><input type="text" name="name[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><input type="text" name="name[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
           $('#dynamic_field').append('<tr id="row'+i+'"><td><select name="imuni_id[]" required><option value="">--- Jenis Imunisasi ---</option><?php echo modules::run('master/imuni/options_imuni', $imunisasi->imuni_id); ?></select></td><td><input type="text" name="usia_untuk_imuni[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
           
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  
      $('#submit').click(function(){            
           $.ajax({  
                url:"name.php",  
                method:"POST",  
                data:$('#add_name').serialize(),  
                success:function(data)  
                {  
                     alert(data);  
                     $('#add_name')[0].reset();  
                }  
           });  
      });  
 });  
 </script>
