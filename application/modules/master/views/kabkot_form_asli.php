<?php echo jquery_select2(); ?>
<?php echo bootstrap_datepicker3(); ?>

<script type="text/javascript">
$().ready(function() {
	
	$(".input-group.date").datepicker({ 
		autoclose: true, 
		todayHighlight: true 
	});
	
	$('[name=provinsi_id]').select2({width: '100%'}); 

});	
</script>

<h3 class="page-header">Form Kabupaten/Kota</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Kode Kabupaten/Kota</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="id_kabkot" placeholder="Id Kabupaten/Kota" value="<?php echo $kabkot->id_kabkot; ?>"  required />
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Kabupaten/Kota</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="kabkot" placeholder="Kabupaten Kota" value="<?php echo $kabkot->kabkot; ?>"  required />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-2 control-label input-sm">Provinsi</label>
		<div class="col-sm-4">
			<select name="provinsi_id" required>
				<option value="">--- Pilih Provinsi ---</option>
				<?php echo modules::run('master/provinsi/options_provinsi', $kabkot->provinsi_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
			<button type="reset" class="btn btn btn-primary btn-sm button-red" > Reset </button>
		</div>
	</div>
<?php echo form_close(); ?>