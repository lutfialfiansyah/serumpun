<?php echo jquery_select2(); ?>
<?php echo bootstrap_datepicker3(); ?>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<!--<script type="text/javascript" src="<?php #echo base_url('assets/jquery.min.js') ?>"></script>-->
<!--<script type="text/javascript" src="assets/jquery.min.js"></script>-->
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


<h3 class="page-header">Form Biodata</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open_multipart($action, array('class' => 'form-horizontal row-form')); ?>

	<?php if($this->uri->segment(3) == 'edit') { ?>
		<?php } else { ?>
			<div class="form-group">
				<label class="col-sm-2 control-label input-sm">NIK</label>
				<div class="col-sm-4">
					<input class="form-control input-sm" type="text" name="nik" placeholder="NIK" value="<?php echo $biodata->nik; ?>"  required />
				</div>
			</div>
		<?php } ?>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Nama Lengkap</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="nama_lengkap" placeholder="Nama Lengkap" value="<?php echo $biodata->nama_lengkap; ?>"  required />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Nama Panggilan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="nama_panggilan" placeholder="Nama Panggilan" value="<?php echo $biodata->nama_panggilan; ?>"  required />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Tanggal Lahir</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="date" name="tgl_lahir" value="<?php echo $biodata->tgl_lahir; ?>"  required />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Jenis Kelamin</label>
		<div class="col-sm-4">
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

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Golongan Darah</label>
		<div class="col-sm-4">
			<select name="goldarah_id" required>
				<option value="">--- Pilih Golongan Darah ---</option>
				<?php echo modules::run('master/goldarah/options_goldarah', $biodata->goldarah_id); ?>
			</select>
		</div>
	</div>
	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Agama</label>
		<div class="col-sm-4">
			<select name="agama_id" required>
				<option value="">--- Pilih Agama ---</option>
				<?php echo modules::run('master/agama/options_agama', $biodata->agama_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Telepon</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="telp" value="<?php echo $biodata->telp; ?>"/>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Email</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="email" name="email" placeholder="Email" value="<?php echo $biodata->email; ?>"/>
		</div>
	</div>

	<!-- Foto -->
	<?php if($this->uri->segment(3) == 'edit') { ?>
    <div class="form-group">
        <label class="col-sm-2 control-label input-sm">Foto</label>
		<div class="col-sm-3">
		<div class="image">
			<?php $biodata->foto != '' ? $img_photo = $biodata->foto : $img_photo = "foto_default.jpg"; ?>
			<img src="<?php echo base_url('foto/foto_biodata/thumbnails/'.$img_photo); ?>" class="img-responsive img-thumbnail" alt="Responsive image" />
		</div>
		</div>
	</div>
    <div class="form-group">
        <label class="col-sm-2 control-label input-sm">Ganti Foto</label>
		<div class="col-sm-3">
			<input class="form-control input-sm" type="file" name="userfile" />
		</div>
	</div>
	<?php } else { ?>
	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Foto</label>
		<div class="col-sm-3">
			<input class="form-control input-sm" type="file" name="userfile" />
		</div>
	</div> 
	<?php } ?>
	<!-- Foto -->
	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Provinsi</label>
		<div class="col-sm-4">
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

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Kabupaten/Kota</label>
		<div class="col-sm-4">
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

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Kecamatan</label>
		<div class="col-sm-4">
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

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Kelurahan</label>
		<div class="col-sm-4">
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

	<!-- Alamat -->
	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Alamat</label>
		<div class="col-sm-4">
			<textarea name="alamat" class="form-control" placeholder="Alamat" required><?php echo $biodata->alamat; ?></textarea>
		</div>
	</div>
	<!-- Alamat -->

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Pendidikan Terakhir</label>
		<div class="col-sm-4">
			<select name="pendidikan_id" required>
				<option value="">--- Pilih Pendidikan Terakhir ---</option>
				<?php echo modules::run('master/pendidikan/options_pendidikan', $biodata->pendidikan_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Pekerjaan</label>
		<div class="col-sm-4">
			<select name="pekerjaan_id" required>
				<option value="">--- Pilih Pekerjaan ---</option>
				<?php echo modules::run('master/pekerjaan/options_pekerjaan', $biodata->pekerjaan_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Pengguna Id</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pengguna_id" value="<?php echo $this->session->userdata('pengguna')->id; ?>"/>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
		</div>
	</div>
<?php echo form_close(); ?>



