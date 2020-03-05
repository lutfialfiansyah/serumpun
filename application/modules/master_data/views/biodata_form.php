<h3 class="page-header">Form Biodata</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

    <div class="form-group">
		<label class="col-sm-2 control-label input-sm">Nik</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="nik" placeholder="NIK" value="<?php echo $biodata->nik; ?>"  required />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Nama Lengkap</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="nama_lengkap" placeholder="Nama Lengkap" value="<?php echo $biodata->nama_lengkap; ?>"  required />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Jenis Kelamin</label>
		<div class="col-sm-4">
			<?php if ($biodata->jk == 'Laki-laki' || $biodata->jk == '') { ?>
				<label>
					<input type="radio" name="jk" value="Laki-laki" checked> Laki-laki
				</label>
				<label>
					<input type="radio" name="jk" value="Perempuan"> Perempuan
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="jk" value="Laki-laki"> Laki-laki
				</label>
				<label>
					<input type="radio" name="jk" value="Perempuan" checked> Perempuan
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label input-sm">Foto</label>
		<div class="col-sm-3">
			<input class="form-control input-sm" type="text" name="foto" placeholder="Foto" value="<?php echo $biodata->foto; ?>" required />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
			<button type="reset" class="btn btn btn-primary btn-sm button-red" > Reset </button>
		</div>
	</div>
<?php echo form_close(); ?>