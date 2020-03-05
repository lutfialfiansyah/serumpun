<h3 class="page-header">Tata Laksana Yang Dijalani Setelah Didiagnosa</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
	
	<div class="form-group" hidden >
		<label class="col-sm-3 control-label input-sm">Id Pendaftaran</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?= isset($pendaftaran_id) ? $pendaftaran_id : '';?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Tata Laksana</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="tata_laksana" value="<?php echo $tata_laksana_setelah_diagnosa->tata_laksana; ?>" />
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-3 control-label input-sm">Periode (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="periode" value="<?= 
			$tata_laksana_setelah_diagnosa->periode; ?>?>" /> 
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Tempat</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="tempat" value="<?php echo $tata_laksana_setelah_diagnosa->tempat; ?>" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Gambaran Anak</button>
		</div>
	</div>
<?php echo form_close(); ?>