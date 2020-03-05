<h3 class="page-header">Perkembangan Psikomotorik</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
	
	<div class="form-group" hidden >
		<label class="col-sm-2 control-label input-sm">Id Pendaftaran</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?= isset($pendaftaran_id) ? $pendaftaran_id : '';?>" />
		</div>
	</div>
 
	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Umur Tengkurap (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="tengkurap" value="<?= 
			$psikomotorik->tengkurap; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Balik Badan (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="balik_badan" value="<?= 
			$psikomotorik->balik_badan; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Duduk (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="duduk" value="<?= 
			$psikomotorik->duduk; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Merangkak (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="merangkak" value="<?= 
			$psikomotorik->merangkak; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Tersenyum (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="tersenyum" value="<?= 
			$psikomotorik->tersenyum; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Tertawa (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="tertawa" value="<?= 
			$psikomotorik->tertawa; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Mengulang Kata (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="mengulang_kata" value="<?= 
			$psikomotorik->mengulang_kata; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Mengucap Mama Papa (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="mengucap_mamapapa" value="<?= 
			$psikomotorik->mengucap_mamapapa; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Meniru Kata (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="meniru_kata" value="<?= 
			$psikomotorik->meniru_kata; ?>?>" /> 
		</div>
	</div>

	<div class="form-group" >
		<label class="col-sm-2 control-label input-sm">Bicara Bermakna (bulan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="number" name="bicara_bermakna" value="<?= 
			$psikomotorik->bicara_bermakna; ?>?>" /> 
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut ke Kesehatan Keluarga </button>
		</div>
	</div>





	
<?php echo form_close(); ?>