<h3 class="page-header">Form Pendidikan</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Pendidikan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendidikan" placeholder="Pendidikan Terakhir" value="<?php echo $pendidikan->pendidikan; ?>"  required />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
			<button type="reset" class="btn btn btn-primary btn-sm button-red" > Reset </button>
		</div>
	</div>
<?php echo form_close(); ?>