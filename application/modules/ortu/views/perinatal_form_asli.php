<h3 class="page-header">Form Pengisian Perinatal</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

	<div class="form-group" hidden >
		<label class="col-sm-2 control-label input-sm">Id Pendaftaran</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?php echo isset($pendaftaran_id) ? $pendaftaran_id : '';?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Usia Persalinan (Bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="usia_persalinan" value="<?php echo $perinatal->usia_persalinan; ?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Jenis Persalinan</label>
		<div class="col-sm-4">
			<select name="persalinan_id" required>
				<option value="">--- Jenis Persalinan ---</option>
				<?php echo modules::run('master/persalinan/options_persalinan', $perinatal->persalinan_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Penggunaan Induksi</label>
		<div class="col-sm-4">
			<?php if ($perinatal->induksi == 'Ya' || $perinatal->induksi == '') { ?>
				<label>
					<input type="radio" name="induksi" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="induksi" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="induksi" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="induksi" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Penolong Persalinan</label>
		<div class="col-sm-4">
			<select name="penolong_id" required>
				<option value="">--- Penolong Persalinan ---</option>
				<?php echo modules::run('master/penolong/options_penolong', $perinatal->penolong_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Komplikasi Persalinan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="komplikasi_id" value="<?php echo $perinatal->komplikasi_id; ?>"/>
		</div>
		<label class="col-sm-3 input-sm">(Pendarahan/Kejang/Hipertensi/Lain-lain)</label>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Kondisi Bayi Saat Lahir</label>
		<div class="col-sm-4">
			<select name="konbayi_id" required>
				<option value="">--- Kondisi Bayi ---</option>
				<?php echo modules::run('master/konbayi/options_konbayi', $perinatal->konbayi_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Kelainan Saat Dilahirkan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="kelainan_id" value="<?php echo $perinatal->kelainan_id; ?>"/>
		</div>
		<label class="col-sm-3 input-sm">(Kuning/Kebiruan/Kejang/Lain-lain)</label>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Mendapatkan Terapi</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="terapi_id" value="<?php echo $perinatal->terapi_id; ?>"/>
		</div>
		<label class="col-sm-3 input-sm">(Obat/Sinar/Transfusi/Lain-lain)</label>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Berat Badan Bayi Saat Lahir (Kg)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="bb_lahir" value="<?php echo $perinatal->bb_lahir; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Panjang Badan Bayi Saat Lahir (Cm)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pb_lahir" value="<?php echo $perinatal->pb_lahir; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Lingkar Kepala Bayi Saat Lahir (Cm)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="lk_lahir" value="<?php echo $perinatal->lk_lahir; ?>" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Postnatal </button>
		</div>
	</div>
<?php echo form_close(); ?>