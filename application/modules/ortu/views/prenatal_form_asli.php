<h3 class="page-header">Form Pengisian Prenatal</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
	
	<div class="form-group" hidden >
		<label class="col-sm-2 control-label input-sm">Id Pendaftaran</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?= isset($pendaftaran) ? $pendaftaran : '';?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Kehamilan Diinginkan</label>
		<div class="col-sm-4">
			<?php if ($prenatal->kehamilan == 'Ya' || $prenatal->kehamilan == '') { ?>
				<label>
					<input type="radio" name="kehamilan" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="kehamilan" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="kehamilan" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="kehamilan" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Pemeriksa Kehamilan Teratur</label>
		<div class="col-sm-4">
			<?php if ($prenatal->periksa_kehamilan == 'Ya' || $prenatal->periksa_kehamilan == '') { ?>
				<label>
					<input type="radio" name="periksa_kehamilan" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="periksa_kehamilan" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="periksa_kehamilan" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="periksa_kehamilan" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Pemeriksa Kehamilan</label>
		<div class="col-sm-4">
			<select class="form-control" name="pemeriksa_id" required>
              <option value="">--- Pemeriksa ---</option>
				<?php echo modules::run('master/pemeriksa/options_pemeriksa', $prenatal->pemeriksa_id); ?>
            </select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Kebiasaan Orang Tua</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="kebortu_id" value="<?php echo $prenatal->kebortu_id; ?>"/>
		</div>
		<label class="col-sm-3 input-sm">(Merokok/Alkohol/Obat/Jamu/Lain-lain)</label>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Penyakit Ibu</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="penyakit_ibu" value="<?php echo $prenatal->penyakit_ibu; ?>"/>
		</div>
		<label class="col-sm-3 input-sm">(Hipertensi/Diabetes/Anemia/Lain-lain)</label>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Penyakit Ayah</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="penyakit_ayah" value="<?php echo $prenatal->penyakit_ayah; ?>"/>
		</div>
		<label class="col-sm-3 input-sm">(Hipertensi/Diabetes/Anemia/Lain-lain)</label>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Penggunaan KB</label>
		<div class="col-sm-4">
			<select name="kb_id" required>
				<option value="">--- Penggunaan KB ---</option>
				<?php echo modules::run('master/kb/options_kb', $prenatal->kb_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Psikologis Ibu</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="psikologis_ibu" value="<?php echo $prenatal->psikologis_ibu; ?>"/>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Perinatal </button>
		</div>
	</div>
<?php echo form_close(); ?>