<h3 class="page-header">Form Pengisian Postnatal</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
	
	<div class="form-group" hidden >
		<label class="col-sm-3 control-label input-sm">Id Pendaftaran</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="pendaftaran_id" value="<?php echo isset($pendaftaran_id) ? $pendaftaran_id : '';?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Bayi Kuning</label>
		<div class="col-sm-4">
			<?php if ($postnatal->bayi_kuning == 'Ya' || $postnatal->bayi_kuning == '') { ?>
				<label>
					<input type="radio" name="bayi_kuning" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="bayi_kuning" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="bayi_kuning" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="bayi_kuning" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Sering Biru</label>
		<div class="col-sm-4">
			<?php if ($postnatal->sering_biru == 'Ya' || $postnatal->sering_biru == '') { ?>
				<label>
					<input type="radio" name="sering_biru" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="sering_biru" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="sering_biru" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="sering_biru" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Kejang</label>
		<div class="col-sm-4">
			<?php if ($postnatal->kejang == 'Ya' || $postnatal->kejang == '') { ?>
				<label>
					<input type="radio" name="kejang" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="kejang" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="kejang" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="kejang" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Lama Kejang</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="lama_kejang" value="<?php echo $postnatal->lama_kejang; ?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Kejang Seluruh Tubuh</label>
		<div class="col-sm-4">
			<?php if ($postnatal->kejang_seluruhtubuh == 'Ya' || $postnatal->kejang_seluruhtubuh == '') { ?>
				<label>
					<input type="radio" name="kejang_seluruhtubuh" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="kejang_seluruhtubuh" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="kejang_seluruhtubuh" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="kejang_seluruhtubuh" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Seberapa Sering Kejang</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="sering_kejang" value="<?php echo $postnatal->sering_kejang; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Keadaan Setelah Kejang</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="setelah_kejang" value="<?php echo $postnatal->setelah_kejang; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Riwayat Sakit Berat</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="sakit_berat" value="<?php echo $postnatal->sakit_berat; ?>" />
		</div>
	</div>



	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Asupan Hingga 6 Bulan</label>
		<div class="col-sm-4">
			<select name="asupan_id" required>
				<option value="">--- Jenis Asupan ---</option>
				<?php echo modules::run('master/asupan/options_asupan', $perinatal->asupan_id); ?>
			</select>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Reflek Hisap</label>
		<div class="col-sm-4">
			<?php if ($postnatal->reflek_hisap == 'Ya' || $postnatal->reflek_hisap == '') { ?>
				<label>
					<input type="radio" name="reflek_hisap" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="reflek_hisap" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="reflek_hisap" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="reflek_hisap" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Pola Makan (Bubur)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="makan_bubur" value="<?php echo $postnatal->makan_bubur; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Pola Makan (Nasi Tim)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="makan_nasitim" value="<?php echo $postnatal->makan_nasitim; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Pola Makan (Nasi Biasa)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="makan_nasibiasa" value="<?php echo $postnatal->makan_nasibiasa; ?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Sulitan Mengunyah/Menelan</label>
		<div class="col-sm-4">
			<?php if ($postnatal->kes_mengunyah == 'Ya' || $postnatal->kes_mengunyah == '') { ?>
				<label>
					<input type="radio" name="kes_mengunyah" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="kes_mengunyah" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="kes_mengunyah" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="kes_mengunyah" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Anak Memilih Makanan</label>
		<div class="col-sm-4">
			<?php if ($postnatal->memilih_makanan == 'Ya' || $postnatal->memilih_makanan == '') { ?>
				<label>
					<input type="radio" name="memilih_makanan" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="memilih_makanan" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="memilih_makanan" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="memilih_makanan" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Memilih Makanan (Buah)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="masak_buah" value="<?php echo $postnatal->masak_buah; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Memilih Makanan (Sayur)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="masak_sayur" value="<?php echo $postnatal->masak_sayur; ?>" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label input-sm">Memilih Makanan (Daging/Ikan)</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="masak_dagingikan" value="<?php echo $postnatal->masak_dagingikan; ?>" />
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Masalah Buang Air Kecil</label>
		<div class="col-sm-4">
			<?php if ($postnatal->masalah_bak == 'Ya' || $postnatal->masalah_bak == '') { ?>
				<label>
					<input type="radio" name="masalah_bak" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="masalah_bak" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="masalah_bak" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="masalah_bak" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Masalah Buang Air Besar</label>
		<div class="col-sm-4">
			<?php if ($postnatal->masalah_bab == 'Ya' || $postnatal->masalah_bab == '') { ?>
				<label>
					<input type="radio" name="masalah_bab" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="masalah_bab" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="masalah_bab" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="masalah_bab" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
        <label class="col-sm-3 control-label input-sm">Masalah Sulit Tidur</label>
		<div class="col-sm-4">
			<?php if ($postnatal->masalah_tidur == 'Ya' || $postnatal->masalah_tidur == '') { ?>
				<label>
					<input type="radio" name="masalah_tidur" value="Ya" checked> Ya
				</label>
				<label>
					<input type="radio" name="masalah_tidur" value="Tidak"> Tidak
				</label>
			<?php } else { ?>
				<label>
					<input type="radio" name="masalah_tidur" value="Ya"> Ya
				</label>
				<label>
					<input type="radio" name="masalah_tidur" value="Tidak" checked> Tidak
				</label>
			<?php } ?>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Lanjut Imunisasi </button>
		</div>
	</div>
<?php echo form_close(); ?>