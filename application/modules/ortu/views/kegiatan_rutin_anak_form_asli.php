<h3 class="page-header">Form Pengisian Kegiatan Anak Rutin</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
	
	<div class="form-group" hidden >
		<label class="col-sm-3 control-label input-sm">Id Pendaftaran </label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?= isset($pendaftaran_id) ? $pendaftaran_id : '';?>" />
		</div>
	</div>



	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Pukul</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="jam" value="<?php echo $Kegiatan_rutin_anak->jam; ?>" />
		</div>
	</div>



	<div class="form-group">
		<label class="col-sm-3 control-label input-sm"> Kegiatan </label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="kegiatan" value="<?php echo $Kegiatan_rutin_anak->kegiatan; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Keterangan </label>
		<div class="col-sm-4">
			<textarea rows="4" cols="50" name="keterangan" placeholder="Kegiatan Rutin Anak" ></textarea>
		</div>
	</div>

	
	
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Pendaftaran Index </button>
		</div>
	</div>
<?php echo form_close(); ?>