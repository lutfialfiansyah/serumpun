
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Pengguna</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Pengguna</li>
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
                	<h3 class="card-title">Data Pengguna</h3>
               		<a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
             	</div>
              <!-- /.card-header -->
              <!-- form start -->

              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">
       

				<div class="form-group row">
                    <label class="col-sm-3 col-form-label">Username</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="username" placeholder="Username" value="<?php echo $pengguna->username; ?>" required />
                    </div>
                 </div>


				<?php if($this->uri->segment(3) == 'add'):?>
					<div class="form-group row">
	                    <label class="col-sm-3 col-form-label">Password</label>
	                    <div class="col-sm-3">
	                      <input type="text" class="form-control" type="password" name="password" placeholder="password"  required />
	                    </div>
                	 </div>
				<?php endif; ?>

				<div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama" placeholder="Nama" value="<?php echo $pengguna->nama; ?>" required />
                    </div>
                 </div>

				<?php if($this->uri->segment(3) == 'edit') { ?>
			    <div class="form-group row">
			        <label class="col-sm-3 col-form-label">Foto</label>
					<div class="col-sm-3">
					<div class="image">
						<?php $pengguna->foto != '' ? $img_photo = $pengguna->foto : $img_photo = "foto_default.jpg"; ?>
						<img src="<?php echo base_url('foto/foto_pengguna/thumbnails/'.$img_photo); ?>" class="img-responsive img-thumbnail" alt="Responsive image" />
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
					<label class="col-sm-3 control-label input-sm">Foto</label>
					<div class="col-sm-3">
						<input class="form-control input-sm" type="file" name="userfile" />
					</div>
				</div>
				<?php } ?>


			    <div class="form-group row">
			        <label class="col-sm-3 control-label input-sm">Grup Pengguna</label>
					<div class="col-sm-3">
						<select name="id_pengguna_grup" required>
							<option value="0">--- Pilih Grup Pengguna ---</option>
							<?php echo modules::run('back_office/pengguna_grup/options_pengguna_grup', $pengguna->id_pengguna_grup); ?>
						</select>
					</div>
				</div>

			    <div class="form-group row">
			        <label class="col-sm-3 control-label input-sm">Blokir</label>
					<div class="col-sm-3">
						<?php if ($pengguna->blokir == 'Y' || $pengguna->blokir == '') { ?>
							<label>
								<input type="radio" name="blokir" value="Y" checked> Y
							</label>
							<label>
								<input type="radio" name="blokir" value="N"> N
							</label>
						<?php } else { ?>
							<label>
								<input type="radio" name="blokir" value="Y"> Y
							</label>
							<label>
								<input type="radio" name="blokir" value="N" checked> N
							</label>
						<?php } ?>
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
