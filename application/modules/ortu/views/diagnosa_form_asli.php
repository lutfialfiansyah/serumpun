<h3 class="page-header">Diagnosa Yang Pernah Diterima</h3>
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
		<label class="col-sm-3 control-label input-sm">Keadaan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="keadaan" value="<?php echo $diagnosa->keadaan; ?>" />
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-3 control-label input-sm">Tahun </label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="tahun" value="<?= 
			$diagnosa->tahun; ?>?>" /> 
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Tindakan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="tindakan" value="<?php echo $diagnosa->tindakan; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Keterangan</label>
		<div class="col-sm-4">
			<textarea rows="4" cols="50" name="keterangan" value="<?php echo $diagnosa->keterangan; ?>" placeholder="Keterangan Kegiatan">
				
			</textarea>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Tata Laksana Yang Dijalani Setelah Diagnosa </button>
		</div>
	</div>
<?php echo form_close(); ?>