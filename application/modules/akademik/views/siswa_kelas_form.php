
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Siswa Kelas</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Siswa Kelas</li>
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
                <h3 class="card-title">Siswa Kelas</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kelas</label>
                    <div class="col-sm-3">
                      <select name="kelas_id" required>
                        <option value="">--- Pilih Kelas ---</option>                        
                        <?php echo modules::run('master/kelas/options_kelas', $siswa_kelas->kelas_id); ?>
                      </select>
                    </div>
                  </div> 

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Siswa</label>
                    <div class="col-sm-3">
                      <select name="no_induk" required>
                        <?php
                          if($this->session->has_userdata('daftar')) {
                            echo '<option value="'.$this->session->daftar['no_induk'].'" selected>'.$this->session->daftar['nama_lengkap_anak'].'</option>';
                          } 
                          else {
                            echo modules::run('akademik/siswa/options_siswa',$siswa_kelas->no_induk);
                          }

                        ?>
                      </select> 
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
