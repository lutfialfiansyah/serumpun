
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Kurikulum</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Kurikulumx</li>
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
                  <h3 class="card-title">Data Kurikulum </h3>
                  <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->

              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kompetensi Inti</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="kompetensi_inti" placeholder="kompetensi_inti" value="<?php if(isset($kurikulum->kompetensi_inti)) echo $kurikulum->kompetensi_inti; ?>"  required />
                    </div>
                  </div>


                   <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kompetensi Dasar</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="kompetensi_dasar" placeholder="kompetensi_dasar" value="<?php if(isset($kurikulum->kompetensi_dasar)) echo $kurikulum->kompetensi_dasar; ?>"  required />
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
