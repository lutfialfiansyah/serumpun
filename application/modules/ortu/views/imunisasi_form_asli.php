<h3 class="page-header">Form Pengisian Imunisasi</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
	
	<div class="form-group" hidden>
		<label class="col-sm-2 control-label input-sm">Id Pendaftaran</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?= isset($pendaftaran_id) ? $pendaftaran_id : '';?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Jenis Imunisasi</label>
		<div class="col-sm-4">
			<select name="imunisasi_id" required>
				<option value="">--- Jenis Imunisasi ---</option>
				<?php echo modules::run('master/imuni/options_imuni', $imunisasi->imunisasi_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Usia Imunisasi (Bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="usia_imunisasi" value="<?= 
			$imunisasi->usia_imunisasi; ?>?>" /> 
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut ke Psikomotorik </button>
		</div>
	</div>





	
<?php echo form_close(); ?>