
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Manajemen Menu</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Manajemen Menu</li>
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
                	<h3 class="card-title">Data Manajemen Menu</h3>
               		<a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
             	</div>
              <!-- /.card-header -->
              <!-- form start -->

              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

				    <div class="form-group row">
				        <label class="col-sm-3 control-label input-sm">Nama</label>
						<div class="col-sm-3">
						  <input class="form-control input-sm" type="text" name="nama" placeholder="Nama" value="<?php echo $manajemen_menu->nama; ?>" required />
						</div>
					</div>
				    <div class="form-group row">
				        <label class="col-sm-3 control-label input-sm">URI</label>
						<div class="col-sm-3">
						  <input class="form-control input-sm" type="text" name="uri" placeholder="URI" value="<?php echo $manajemen_menu->uri; ?>" required />
						</div>
					</div>
				    <div class="form-group row">
				        <label class="col-sm-3 control-label input-sm">ID Menu</label>
						<div class="col-sm-3">
							<select name="id_menu_induk" required>
								<option value="0">--- Kosongkan ---</option>
								<?php echo modules::run('back_office/manajemen_menu/options_manajemen_menu', $manajemen_menu->id_menu_induk); ?>
							</select>
						</div>
					</div>
				    <div class="form-group row">
				        <label class="col-sm-3 control-label input-sm">Aktif</label>
						<div class="col-sm-3">
							<?php if ($manajemen_menu->aktif == 'Y' || $manajemen_menu->aktif == '') { ?>
								<label>
									<input type="radio" name="aktif" value="Y" checked> Y
								</label>
								<label>
									<input type="radio" name="aktif" value="N"> N
								</label>
							<?php } else { ?>
								<label>
									<input type="radio" name="aktif" value="Y"> Y
								</label>
								<label>
									<input type="radio" name="aktif" value="N" checked> N
								</label>
							<?php } ?>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-6">
							<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
							<button type="reset" class="btn btn btn-primary btn-sm button-red" > Reset </button>
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
