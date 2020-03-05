<?php echo jquery_slimscrool(); ?>
<?php echo jquery_select2(); ?>
<script type="text/javascript">
	$().ready(function(){
 
		$('[name=nama_lengkap_anak]').select2({width: '100%'}); 
		$('[name=nama_lengkap_ayah]').select2({width: '100%'}); 
		$('[name=nama_lengkap_ibu]').select2({width: '100%'}); 
			 
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
						$('[name=nama_lengkap_anak]').val(biodata[1])
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
					$('[name=nama_lengkap_ayah]').val(biodata_ayah[1])
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
					$('[name=nama_lengkap_ibu]').val(biodata_ibu[1])
					$('[name=telp_ibu]').val(biodata_ibu[5]);
					$('[name=alamat_ibu]').val(biodata_ibu[6]);
				}
			);
		}
	});
	});
</script>

<h3 class="page-header">Form Pendaftaran</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<div class="col-sm-5">
	<div class="card" name="foto_anaknya">

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

<div class="col-sm-7">

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
			<select name="nama_lengkap_anak">
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
		  <input class="form-control input-sm" type="text" name="jum_saudara" placeholder="Jumlah Saudara" value="<?php if($pendaftaran->id_pendaftaran) echo $pendaftaran->jum_saudara; ?>" required  readonly/>
		</div>
	</div>
	<div class="form-group" <?php echo ($pendaftaran->id_pendaftaran) ? '' : 'style="display: none;"' ?>>
		<label class="col-sm-4 control-label input-sm">Status Pendaftaran</label>
		<div class="col-sm-8">
			<select name="status_anak" id="status_anak" class="col-sm-12" required>
				<option value="Proses Daftar" 
					<?php  echo ($pendaftaran->status_anak == 'Proses Daftar') ? 'selected' : '' ;?> 
				>Proses Daftar</option>
				<option value="Diterima" 
					<?php  echo ($pendaftaran->status_anak == 'Diterima') ? 'selected' : '' ;?> 
				>Diterima</option>
				<option value="Tidak Diterima" 
					<?php  echo ($pendaftaran->status_anak == 'diterima') ? 'selected' : '' ;?> 
				>Ditolak</option>
			</select>
		</div>
	</div>
</div>

<div class="clearfix"></div>
<div class="border-tr"></div>

<div class="col-sm-6">
	<div class="form-group">
        <label class="col-sm-4 control-label input-sm">Nama Lengkap Ayah</label>
		<div class="col-sm-8">
			<select name="nama_lengkap_ayah">
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

<div class="col-sm-6">
	<div class="form-group">
        <label class="col-sm-4 control-label input-sm">Nama Lengkap Ibu</label>
		<div class="col-sm-8">
			<select name="nama_lengkap_ibu">
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

<div class="clearfix"></div>
<div class="border-tr"></div>   


    <div class="form-group">
        <label class="col-sm-2 control-label input-sm">Status orang tua</label>
		<div class="col-sm-4">
			<?php if ($pendaftaran->status_ortuwali == 'Kandung' || $pendaftaran->status_ortuwali == '') { ?>
				<label>
					<input type="radio" name="status_ortuwali" value="Kandung" checked disabled> Kandung
				</label>
				<label>
					<input type="radio" name="status_ortuwali" value="Wali" disabled> Wali
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="status_ortuwali" value="Kandung" disabled> Kandung
				</label>
				<label>
					<input type="radio" name="status_ortuwali" value="Wali" checked disabled> Wali
				</label>
			<?php } ?>
		</div>
	</div>
</div>
<?php #echo base_url('document/rakam_medis/'.$pendaftaran->rekam_medis.'.pdf'); ?>
<!--
	<div class="border-tr"></div> 
		<embed src="" type="application/pdf" width="100%" height="600px"></embed>
	<div class="col-sm-12"> 
-->

</div>

<div class="col-sm-12">
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
		</div>
	</div>
</div>
<?php echo form_close(); ?>