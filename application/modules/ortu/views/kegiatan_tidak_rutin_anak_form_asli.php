<h3 class="page-header">Form Pengisian Kegiatan Anak Tidak Rutin</h3>
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
		<label class="col-sm-3 control-label input-sm">Hari</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="hari" value="<?php echo $kegiatan_tidak_rutin_anak->hari; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Pukul</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pukul" value="<?php echo $kegiatan_tidak_rutin_anak->pukul; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Frekuensi</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="frekuensi" value="<?php echo $kegiatan_tidak_rutin_anak->frekuensi; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Kegiatan</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="kegiatan" value="<?php echo $kegiatan_tidak_rutin_anak->kegiatan; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Keterangan</label>
		<div class="col-sm-4">
			<textarea rows="4" cols="50" name="keterangan" value="<?php echo $kegiatan_tidak_rutin_anak->keterangan; ?>" placeholder="Keterangan Kegiatan">
				
			</textarea>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Menyewa Pengasuh</label>
		<div class="col-sm-4">
			<?php if ($kegiatan_tidak_rutin_anak->pengasuh == 'Ya' || $kegiatan_tidak_rutin_anak->pengasuh == '') { ?>
				<label>
					<input type="radio" name="pengasuh" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="pengasuh" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="pengasuh" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="pengasuh" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Jumlah Pengasuh</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="jum_pengasuh" value="<?php echo $kegiatan_tidak_rutin_anak->jum_pengasuh; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Jumlah ART</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="jum_art" value="<?php echo $kegiatan_tidak_rutin_anak->jum_art; ?>" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Imunisasi </button>
		</div>
	</div>
<?php echo form_close(); ?>