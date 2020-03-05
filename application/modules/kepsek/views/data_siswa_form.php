<?php echo jquery_slimscrool(); ?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<script type="text/javascript">
	$().ready(function(){
			 
		$('[name=nama_lengkap_anak]').change(function() {
			var id_biodata = $(this).val();
			if (id_biodata != '') {
				$.post (
					'<?php echo site_url('/master/biodata/ajax_biodata_options'); ?>'
					, {
						id_biodata : id_biodata
					}
					, function(data) {
						var urla="<?php echo base_url('/foto/foto_biodata/'); ?>";

						var biodata = data.split('#');
						$('[name=anak_id]').val(biodata[0]);
						$('[name=tgl_lahir_anak]').val(biodata[2]);
						$('[name=jk_anak]').val(biodata[3]);
						$('[name=goldarah_anak]').val(biodata[4]); 
						
						$('[name=foto_anaknya]').html('<img src="'+urla+biodata[7]+'" class="img-thumbnail" alt="'+biodata[7]+'" style="max-height: 300px; max-width: 250px">');
					}
				);
			}
		});
		$('[name=nama_lengkap_ayah]').change(function() {
		var id_biodata = $(this).val();
		if (id_biodata != '') {
			$.post (
				'<?php echo site_url("/master/biodata/ajax_biodata_options"); ?>'
				, {
					id_biodata : id_biodata
				}
				, function(data) {
					var biodata_ayah = data.split('#');
					$('[name=ayah_id]').val(biodata_ayah[0]);
					$('[name=telp_ayah]').val(biodata_ayah[5]);
					$('[name=alamat_ayah]').val(biodata_ayah[6])
				}
			);
		}
	});
		
	$('[name=nama_lengkap_ibu]').change(function() {
		var id_biodata = $(this).val();
		if (id_biodata != '') {
			$.post (
				'<?php echo site_url('/master/biodata/ajax_biodata_options'); ?>'
				, {
					id_biodata : id_biodata
				}
				, function(data) {
					var biodata_ibu = data.split('#');
					$('[name=ibu_id]').val(biodata_ibu[0]);
					$('[name=telp_ibu]').val(biodata_ibu[5]);
					$('[name=alamat_ibu]').val(biodata_ibu[6]);
				}
			);
		}
	});
	});
</script>

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
            	<h1>Formulir Pendaftaran Anak</h1>
            </div>
            <div class="col-sm-6">
            	<ol class="breadcrumb float-sm-right">
                	<li class="breadcrumb-item"><a href="#">Home</a></li>
                	<li class="breadcrumb-item active">Pendaftaran</li>
              	</ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- /.card-header -->
<!-- form start -->

	<div class="content">
      <div class="container-fluid">
      	<div class="card card-info">
       		<div class="card-header">
                <h3 class="card-title">Pendaftaran</h3>
            	<a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
            </div>
            <?php if ($this->session->flashdata('status_pendaftaran') == 'failed'): ?>
				<div class="alert alert-danger alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>		
					<span>Pendaftaran gagal, anak Anda telah terdaftar</span>
				</div>
			<?php $this->session->set_flashdata('status_pendaftaran', ''); endif; ?>
	        <div class="row">
		        <div class="col-lg-6">
		            <div class="card m-3 p-3">
		              	<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

		              	<?php if($pendaftaran->id_pendaftaran) { 
							echo '
							    <div class="form-group" style="display: none">
							        <label class="col-sm-4 control-label input-sm">ID Pendaftaran</label>
									<div class="col-sm-8">
									  <input class="form-control input-sm" type="text" name="id_pendaftaran" placeholder="ID Pendaftaran" value="'.$pendaftaran->id_pendaftaran.'" readonly/>
									</div>
								</div>
							';
						 	} 
						?>
					    <div class="form-group">
					        <label class="col-sm-4 control-label input-sm">Nama Lengkap Anak</label>
							<div class="col-sm-8">
								<select name="nama_lengkap_anak" class="select2 form-control">
									<?php 
										if($pendaftaran->id_pendaftaran) {
											echo '<option value="'.$pendaftaran->anak_id.'" selected>'.$pendaftaran->nama_lengkap_anak.'</option>';
										} 
										else {
											$pengguna_id = $this->session->userdata('pengguna')->id;
											 echo '<option value="">--- Pilih Nama Lengkap Anak ---</option>'.modules::run('master/biodata/options_biodata_byPengguna',$pengguna_id);
										}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">NIK</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="anak_id"  value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->nik_anak; ?>" readonly required/>
							</div>
						</div>   
						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Tanggal Lahir Anak</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="tgl_lahir_anak"  value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->tgl_lahir_anak; ?>" readonly required />
							</div>
						</div>    
						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Jenis Kelamin Anak</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="jk_anak"  value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->jk_anak; ?>" readonly required/> 
							</div>
						</div>    
						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Golongan Darah Anak</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="goldarah_anak"  value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->goldarah_anak; ?>" readonly  required/>
							</div>
						</div>    
					    <div class="form-group">
					        <label class="col-sm-4 control-label input-sm">Anak ke</label>
							<div class="col-sm-8">
							  <input class="form-control input-sm" type="text" name="anak_ke" placeholder="Anak ke" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->anak_ke; ?>" required readonly/>
							</div>
						</div>
					    <div class="form-group">
					        <label class="col-sm-4 control-label input-sm">Jumlah saudara</label>
							<div class="col-sm-8">
							  <input class="form-control input-sm" type="text" name="jum_saudara" placeholder="Jumlah Saudara" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->jum_saudara; ?>" readonly required />
							</div>
						</div>

					    <div class="form-group">
					        <label class="col-sm-4 control-label input-sm">Status orang tua</label>
							<div class="col-sm-8">
								<?php if ($pendaftaran->status_ortuwali == 'Kandung' || $pendaftaran->status_ortuwali == '') { ?>
									<label>
										<input type="radio" name="status_ortuwali" value="Kandung" checked> Kandung
									</label>
									<label>
										<input type="radio" name="status_ortuwali" value="Wali"> Wali
									</label>
								<?php } else { ?>
									<label>
										<input type="radio" name="status_ortuwali" value="Kandung"> Kandung
									</label>
									<label>
										<input type="radio" name="status_ortuwali" value="Wali" checked> Wali
									</label>
								<?php } ?>
							</div>
						</div>
		            </div>
		            <!-- /.card -->

		            <div class="card m-3 p-3">
						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Foto Anak</label>
							<div class="col-sm-8" name="foto_anaknya">   
				              	<?php 
									if($pendaftaran->id_pendaftaran){
										echo 
										'<img src="'.base_url('foto/foto_biodata/').$pendaftaran->foto_anak.'" 
											class="img-thumbnail" alt="..." name="foto_anak" style="max-height: 300px; max-width: 250px;">';
									}
									else{
										echo 
										'<img src="'.base_url('foto/foto_biodata/foto_default.jpg').'" 
											class="img-thumbnail" alt="..." name="foto_anak" style="max-height: 300px; max-width: 250px;">'; 	
									}
								?>
							</div>
						</div> 
		            </div>
		            <!-- /.card -->
		        </div>
		        
		        <!-- /.col-md-6 -->
		        <div class="col-lg-6">
		            <div class="card m-3 p-3">
					    <div class="form-group">
					        <label class="col-sm-4 control-label input-sm">Nama Lengkap Ayah</label>
							<div class="col-sm-8">
								<select name="nama_lengkap_ayah" class="select2 form-control">
									<?php 
										if($pendaftaran->id_pendaftaran) {
											echo '<option value="'.$pendaftaran->ayah_id.'" selected>'.$pendaftaran->nama_lengkap_ayah.'</option>';
										} 
										else {

											 echo '<option value="">--- Pilih Nama Lengkap Ayah ---</option>'.modules::run('master/biodata/options_biodata_byPengguna',$pengguna_id);
										}
									?>
								</select>
							</div>
						</div> <br><br>

						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">NIK Ayah</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="ayah_id" placeholder="NIK Ayah" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->nik_ayah; ?>"  readonly required/>
							</div>
						</div><br><br>

						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Kontak Ayah</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="telp_ayah" placeholder="Kontak Ayah" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->kontak_ayah; ?>" readonly required/>
							</div>
						</div><br><br>

						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Alamat Ayah</label>
							<div class="col-sm-8">
								<textarea name="alamat_ayah" class="form-control" rows="3" placeholder="Alamat Ayah" readonly required>
									<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->provinsi_ayah.' '.$pendaftaran->kabkot_ayah.' '.$pendaftaran->kecamatan_ayah.' '.$pendaftaran->kelurahan_ayah.' '.$pendaftaran->alamat_ayah; ?>
								</textarea>
							</div>
						</div><br><br>
		            </div>
		            <!-- /.card -->

		            <div class="card m-3 p-3">
		            	<div class="form-group">
					        <label class="col-sm-4 control-label input-sm">Nama Lengkap Ibu</label>
							<div class="col-sm-8">
								<select name="nama_lengkap_ibu" class="select2 form-control">
									<?php 
										if($pendaftaran->id_pendaftaran) {
											echo '<option value="'.$pendaftaran->ibu_id.'" selected>'.$pendaftaran->nama_lengkap_ibu.'</option>';
										} 
										else {
											 echo '<option value="">--- Pilih Nama Lengkap Ibu ---</option>'.modules::run('master/biodata/options_biodata_byPengguna',$pengguna_id);
										}
									?>
								</select>
							</div>
						</div><br><br>

						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">NIK Ibu</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="ibu_id" placeholder="NIK Ibu" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->nik_ibu ?>" readonly  required/>
							</div>
						</div><br><br>

						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Kontak Ibu</label>
							<div class="col-sm-8">
								<input class="form-control input-sm" type="text" name="telp_ibu" placeholder="Kontak Ibu" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->kontak_ibu ?>" readonly required/>
							</div>
						</div><br><br>

						<div class="form-group">
							<label class="col-sm-4 control-label input-sm">Alamat Ibu</label>
							<div class="col-sm-8">
								<textarea name="alamat_ibu" class="form-control" rows="3" placeholder="Alamat Ibu" readonly required>
									<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->provinsi_ibu.' '.$pendaftaran->kabkot_ibu.' '.$pendaftaran->kecamatan_ibu.' '.$pendaftaran->kelurahan_ibu.' '.$pendaftaran->alamat_ibu; ?>
								</textarea>
							</div>
						</div><br><br>
		            </div>
	          	</div>

	          	<div class="col-lg-12">
		            <div class="card m-3 p-3">
		            	<div class="form-group" >
							<label class="col-sm-4 control-label input-sm">Status Pendaftaran</label>
							<div class="col-sm-8">
								<select name="status_anak"  class="select2 form-control">
									<option value="">--- Pilih Status Pendaftaran Anak ---</option>
									<option value="Proses Daftar">Proses Daftar</option>
									<option value="Diterima">Diterima</option>
									<option value="Tidak Diterima">Tidak Diterima</option>
									<!-- <?php 
										#if($pendaftaran->id_pendaftaran) {
											# '<option value="'.$pendaftaran->status_anak.'" selected>'.$pendaftaran->status_anak.'</option>';} 
										#else {
											 #echo '<option value="">--- Pilih Status Pendaftaran Anak ---</option>'.modules::run('kepsek/data_siswa/options_pendaftaran');}
									?> -->
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-6">
								<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
								<button type="reset" class="btn btn btn-primary btn-sm button-red" > Reset </button>
							</div>
						</div>
					</div>
	            </div>
	        </div>
	        <!-- /.row -->
	      </div>
	      <!-- /.container-fluid -->
	    </div>
	    <!-- /.content -->

<?php echo form_close(); ?>

		</div>
<!-- /.card -->

<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

  });
</script>