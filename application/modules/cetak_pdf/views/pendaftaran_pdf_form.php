<style>
	table{
			width: 100%;
		}
	.judul {
		font-style: bold;
		text-decoration: underline;
		font-size: 20px;
	}
	.center {
		text-align: center;
	}
</style>
<body>
	<div class="A4">

	<table style="border-spacing: 0px;">
		<?php foreach ($biodata as $key => $bio) { ?>
			<?php foreach ($pendaftaran as $key => $pen) { ?>
			
			<tr>
				<td colspan="5" style="text-align: center;"><b><h1>FORMULIR PENDAFTARAN</h1></b></td>
			</tr>
			<tr>
				<td colspan="5">
					<br>
				</td>
			</tr>
			<tr >
				<td colspan="2" style="text-align: right;">NOMOR</td>
				<td colspan="3" style="text-align:left;">: <?php echo $pen->id_pendaftaran; ?></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: right;">NAMA &nbsp;&nbsp;&nbsp;</td>
				<td colspan="3" style="text-align:left;">: <?php echo $bio->nama_lengkap_anak; ?></td>
				<!-- <td colspan="5" style="text-align: center;">NAMA &nbsp;&nbsp;&nbsp;: <?php echo $bio->nama_lengkap_anak; ?></td> -->
			</tr>
			<tr>
				<td colspan="5">
					<br><br><br><br><br><br><br>
					<br><br><br><br><br>
				</td>
			</tr>
			<tr>
				<!-- <td colspan="5"><img src="asset/dist/img/logo.jpg" class="logo"></td> -->
				<td colspan="5"> <img src="<?= site_url(); ?> asset/dist/img/SerumpunLogo.jpg" class="logo"></td>

				<td><img src="<?php echo 'asset/dist/img/SerumpunLogo.jpg'.$im ?>" /></td>
			</tr>
			<tr>
				<td colspan="5">
					<br><br><br><br><br><br><br>
					<br><br><br><br><br>
				</td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center">"Semangat memandirikan dan mempersiapkan masa depan dengan lebih baik"</td>
			</tr>
			<tr>
				<td colspan="5">
					<br><br><br><br><br>
				</td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center"><b>REGULER</b></td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center"><b>EKSTRAKURIKULER</b></td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center"><b>SATURDAY OPEN SCHOOL</b></td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center"><b>TERAPI</b></td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center"><b>DAYCARE</b></td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center"><b>TAMAN PENDIDIKAN AL-QUR'AN</b></td>
			</tr>
			<tr>
				<td colspan="5">
					<br><br>
				</td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center">Jl. Muara Tegal No.31 Kel. Sindangrasa Kec. Kota Bogor Timur Bogor 16145</td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center">Telp. 081324567808, e-mail : serumpun.bogor@yahoo.com</td>
			</tr>
			<tr>
				<td colspan="5">
					<br><br>
				</td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center">
					Pengembalian formulir pendaftaran menyertakan : 
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: left">
					&nbsp;&nbsp;&nbsp;&nbsp;
					1. fotocopy Akte Kelahiran
				</td>
				<td colspan="3" style="text-align: left">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					4. Fotocopy Diagnosa dan rekam medis
				</td>			
			</tr>
			<tr>
				<td colspan="2" style="text-align: left">
					&nbsp;&nbsp;&nbsp;&nbsp;
					2. Fotocopy Kartu Keluarga
				</td>
				<td colspan="3" style="text-align: left">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					5. Fotocopy Riwayat terapi
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: left">
					&nbsp;&nbsp;&nbsp;&nbsp;
					3. Fotocopy 3x4 sebanyak 2 lembar
				</td>
				<td colspan="3" style="text-align: left">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					6. Fotocopy Raport/Laporan Belajar
				</td>
			</tr>
			<?php } ?>
			<?php } ?>
		</table>

		<br><br><br><br><br><br><br><br>

	<table>
		<?php foreach ($pendaftaran as $key => $pen) { ?>
			<?php foreach ($biodata as $key => $bio) { ?>
		<tr>
			<td colspan="2">Nomor Pendaftaran</td>
			<td>: <?php echo $pen->id_pendaftaran; ?></td>

			<td rowspan="5"> <?php echo $bio->foto_anak; ?></td>
			
		</tr>
		<tr>
			<td colspan="2">Tanggal Pendaftaran</td>
			<td>: <?php echo $pen->tgl_pendaftaran; ?></td>
		</tr>
		<tr>
			<td colspan="2"><b><br>A. Data Anak</b><br></td>
		</tr>
		<tr>
			<td colspan="2">NIK Anak</td>
			<td>: <?php echo $pen->nik_anak; ?></td>
		</tr>
		<tr>
			<td colspan="2">Nama Lengkap</td>
			<td>: <?php echo $pen->nama_lengkap_anak; ?></td>
		</tr>
		<tr>
			<td colspan="2">Nama Panggilan</td>
			<td>: <?php echo $pen->nama_panggilan_anak; ?></td>
		</tr>
		<tr>
			<td colspan="2">Tanggl Lahir</td>
			<td>: <?php echo $pen->tgl_lahir_anak; ?></td>
		</tr>
		<tr>
			<td colspan="2">Jenis Kelamin</td>
			<td>: <?php echo $pen->jk_anak; ?></td>
		</tr>
		<tr>
			<td colspan="2">Anak ke</td>
			<td>: <?php echo $bio->anak_ke; ?></td>
		</tr>
		<tr>
			<td colspan="2">Jumlah Saudara</td>
			<td>: <?php echo $bio->jum_saudara; ?></td>
		</tr>
		<tr>
			<td colspan="2">Golongan Darah</td>
			<td>: <?php echo $bio->goldarah_anak ?></td>
		</tr>
		<tr>
			<td colspan="2">Agama</td>
			<td>: <?php echo $bio->agama_anak ?></td>
		</tr>
		<tr>
			<td colspan="2"><b><br>B. Data Orang Tua/Wali</b><br></td>
		</tr>
		<tr>
			<td colspan="2">NIK Ayah/Wali</td>
			<td>: <?php echo $bio->nik_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Nama Ayah/Wali Lelaki</td>
			<td>: <?php echo $bio->nama_lengkap_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Tanggl Lahir</td>
			<td>: <?php echo $bio->tgl_lahir_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Kecamatan</td>
			<td>: <?php echo $bio->kecamatan_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Kelurahan</td>
			<td>: <?php echo $bio->kelurahan_anak ?></td>
		</tr>
		<tr>
			<td colspan="2">Alamat</td>
			<td colspan="3">: <?php echo $bio->alamat_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Pendidikan Terakhir</td>
			<td>: <?php echo $bio->pendidikan_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Pekerjaan</td>
			<td colspan="3">: <?php echo $bio->pekerjaan_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Nomor Telepon</td>
			<td>: <?php echo $bio->telp_ayah ?></td>
		</tr>
		<tr>
			<td colspan="2">Email</td>
			<td colspan="2">: <?php echo $bio->email_ayah ?></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
			<td colspan="2">NIK Ibu/Wali</td>
			<td>: <?php echo $bio->nik_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Nama Ibu/Wali Perempuan</td>
			<td>: <?php echo $bio->nama_lengkap_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Tanggl Lahir</td>
			<td>: <?php echo $bio->tgl_lahir_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Kecamatan</td>
			<td>: <?php echo $bio->kecamatan_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Kelurahan</td>
			<td>: <?php echo $bio->kelurahan_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Alamat</td>
			<td colspan="3">: <?php echo $bio->alamat_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Pendidikan Terakhir</td>
			<td>: <?php echo $bio->pendidikan_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Pekerjaan</td>
			<td colspan="3">: <?php echo $bio->pekerjaan_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Nomor Telepon</td>
			<td>: <?php echo $bio->telp_ibu ?></td>
		</tr>
		<tr>
			<td colspan="2">Email</td>
			<td colspan="2">: <?php echo $bio->email_ibu ?></td>
		</tr>
		<?php } ?>
		<?php } ?>
	</table>

	<br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br>

	<b>A. Prenatal</b><br><br>
	<table>
		<?php foreach ($prenatal as $key => $pre) { ?>
		<tr>
			<td colspan="2">Kehamilan diinginkan</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->kehamilan; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Pemerikasaan kehamilan teratur</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->periksa_kehamilan; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Pemeriksaan dilakukan oleh</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->pemeriksa; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Kebiasaan Ayah/Ibu saat sedang hamil</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->kebortu; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Penyakit Ibu yang diderita saat sedang hamil</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->penyakit_ibu; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Penyakit Ayah yang diderita saat Ibu sedang hamil</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->penyakit_ayah; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">KB yang dipakai sebelum hamil</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->kb; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Kondisi psikologis Ibu pada saat hamil</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $pre->psikologis_ibu; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
	<?php } ?>
	</table><br><br>


	<b>B. Perinatal</b><br><br>
	<table>
	<?php foreach ($perinatal as $key => $peri) { ?>
		<tr>
			<td colspan="2">Persalinan pada saat usia kandungan</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $peri->usia_persalinan; ?> (Minggu)</td>
<!-- 			<td>(Minggu)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Jenis persalinan</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $peri->persalinan; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Menggunakan induksi</td>
<!-- 			<td>:</td>
 -->		<td>: <?php echo $peri->induksi; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Persalinan ditolong oleh</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->penolong; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Komplikasi persalinan Ibu</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->komplikasi; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Kondisi Bayi saat lahir</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->konbayi; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Kelainan saat dilahirkan</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->kelainan; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Mendapatkan terapi</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->terapi; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Berat badan lahir</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->bb_lahir; ?> (Gram)</td>
			<!-- <td>(Gram)</td> -->
			<!-- <td></td> -->
		</tr>
		<tr>
			<td colspan="2">Panjang Badan lahir</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->pb_lahir; ?> (Cm)</td>
			<!-- <td>(Cm)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Lingkar kepala</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $peri->lk_lahir; ?> (Cm)</td>
			<!-- <td>(Cm)</td>
			<td></td> -->
		</tr>
		<?php } ?>
	</table><br><br>

	<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br> -->

	<b>C. Postnatal</b><br><br>
	<table>
	<?php foreach ($postnatal as $key => $post) { ?>
		<tr>
			<td colspan="2">Bayi Kuning</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->bayi_kuning; ?></td>
<!-- 			<td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Sering Biru</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->sering_biru; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Lama Kejang</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->lama_kejang; ?> (Menit)</td>
			<!-- <td>Menit</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Kejang Seluruh Tubuh</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->kejang_seluruhtubuh; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Seberapa Sering Kejang</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->sering_kejang; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Keadaan Setelah Kejang</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->setelah_kejang; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Riwayat sakit berat lainnya/trauma kepala</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->sakit_berat; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Asupan Hingga 6 Bulan</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->asupan; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Reflek Hisap</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->reflek_hisap; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Pola Makan Bubur Usia </td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->makan_bubur; ?> (Bulan)</td>
			<!-- <td> Usia (Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Pola Makan Nasi Tim Usia</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->makan_nasitim; ?> (Bulan)</td>
			<!-- <td> Usia (Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Pola Makan Nasi Biasa Usia</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->makan_nasibiasa; ?> (Bulan)</td>
			<!-- <td>Usia (Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Kesulitan Menguyah atau Menelan</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->kes_mengunyah; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Memilih Makanan</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->memilih_makanan; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Memilih makanan dengan cara masak tertentu (Buah)</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->masak_buah; ?></td>
			<!-- <td>(Buah)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Memilih makanan dengan cara masak tertentu (Sayur)</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->masak_sayur; ?></td>
			<!-- <td> (Sayur)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2"> Memilih makanan dengan cara masak tertentu (Daging/Ikan)</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->masak_dagingikan; ?></td>
			<!-- <td>(Daging/Ikan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Masalah Buang Air Kecil</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->masalah_bak; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Masalah Buang Air Besar</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->masalah_bak; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Masalah Sulit Tidur</td>
			<!-- <td>:</td> -->
			<td>: <?php echo $post->masalah_tidur; ?></td>
			<!-- <td></td>
			<td></td> -->
		</tr>
	<?php } ?>
	</table><br><br>

	<br><br><br><br><br><br><br><br><br><br><br>

		<tr>
			<td><b>D. Imunisasi</b></td>
		</tr><br>
	<table>
		<?php foreach ($imunisasi as $key => $imuni) { ?>
			<?php echo $imuni->data_imunisasi; ?>
		<?php } ?>
    </table><br><br>

    <tr>
		<td><b>E. Perkembangan Psikomotorik</b></td>
	</tr><br>
<?php foreach ($psikomotorik as $key => $h) { ?>
    <table class="noborder">
		<tr>
			<td colspan="2">Tengkurap</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->tengkurap; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Membolak Balik Badan Sendiri</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->balik_badan; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Duduk</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->duduk; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Merangkak</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->merangkak; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Tersenyum</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->tersenyum; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Tertawa bersuara</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->tertawa; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Mengulang-ulang suku kata</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->mengulang_kata; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Mengucap mama/papa</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->mengucap_mamapapa; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Mengucap kata-kata</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->meniru_kata; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
		<tr>
			<td colspan="2">Bicara bermakna</td>
<!-- 			<td>:</td> -->
			<td>: <?php echo $h->bicara_bermakna; ?> (Bulan)</td>
<!-- 			<td>(Bulan)</td>
			<td></td> -->
		</tr>
	</table>
<?php } ?>

	<br><br><b>F. Kesehatan Keluarga</b><br><br>
	<table>
		<?php foreach ($kesehatan_keluarga as $key => $keluarga) { ?>
			<?php echo $keluarga->data_kesehatan_keluarga; ?>
		<?php } ?>
    </table><br><br>

    <b>G. Diagnosa yang pernah diterima</b><br><br>
	<table>
		<?php foreach ($diagnosa as $key => $diag) { ?>
			<?php echo $diag->data_diagnosa; ?>
		<?php } ?>
    </table><br><br>

    <b>H. Tata laksana yang dijalani sejak didiagnosa</b><br><br>
	<table>
		<?php foreach ($tata_laksana_setelah_diagnosa as $key => $tata_laksana) { ?>
			<?php echo $tata_laksana->data_tata_laksana_setelah_diagnosa; ?>
		<?php } ?>
    </table><br><br>

    <br><br><br><br><br><br>

    <b>I. Gambaran anak / Penjelasan lainnya</b><br><br>
	<table class="noborder"><br>
		<?php foreach ($gambaran_anak as $key => $gambaran) { ?>
		<tr>
			<td>
				<?php echo $gambaran->ket_anak; ?>
			</td>
		</tr>
	<?php }?>
		</table><br><br>

	<b>J. Jadwal Kegiatan tidak rutin anak</b><br><br>
	<table>
	    <?php foreach ($kegiatan_tidak_rutin_anak as $key => $tidak_rutin) { ?>
			<?php echo $tidak_rutin->data_kegiatan_tidak_rutin_anak; ?>
    </table><br><br>

    <table>
	    <tr>
			<td>Dirumah menggunakan jasa pengasuh / ART ?</td>
			<td><?php echo $tidak_rutin->pengasuh; ?></td>
		</tr>
		<tr>
			<td>Jumlah pengasuh </td>
			<td><?php echo $tidak_rutin->jum_pengasuh; ?></td>
		</tr>
		<tr>
			<td>Jumlah asisten rumah tangga </td>
			<td><?php echo $tidak_rutin->jum_art; ?></td>
		</tr>
		<?php } ?>
    </table><br><br>

	<b>K. Jadwal Kegiatan Rutin Anak Setiap Hari</b><br>
	Sejak bangun tidur pagi hingga kembali tidur malam<br><br>
	<table>
		<?php foreach ($kegiatan_rutin_anak as $key => $rutin) { ?>
			<?php echo $rutin->data_kegiatan_rutin_anak; ?>
		<?php } ?>
	</table><br><br>	

    <b>L. Harapan Kemampuan Yang Perlu Dikembangkan</b><br><br>
	<table class="noborder">
		<?php foreach ($harapan_ortu as $key => $harapan) { ?>
		<tr>
			<td>
				<?php echo $harapan->ket_harapan; ?>
			</td>
		</tr>
	<?php }?>
	</table><br><br>

</div>
</div>
</body>