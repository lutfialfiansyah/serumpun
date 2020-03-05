<h3 class="page-header">Data Pendaftaran</h3>
<div class="actions">
	<!--<a href="<?php #echo $add; ?>"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add Data</a>-->
</div>
<div class="scrollmenu block-table table-sorting clearfix"><!-- block-fluid table-sorting clearfix -->
	<table cellpadding="0" cellspacing="0" class="tabel" id="datatables">
		<thead>
			<tr> 
				<th>ID Pendaftaran</th>
				<th>NIK Anak</th>
				<th>Nama Lengkap Anak</th>
				<th>Anak Ke</th>
				<th>Jumlah Saudara</th>
				<th>Nama Lengkap Ayah</th>
				<th>Nama Lengkap Ibu</th> 
				<th>Status Orang Tua</th>
				<th>Status Anak</th>
				<th colspan="2">Aksi</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				foreach($grid as $record) :
			?>
					<tr>
						<td align="center"><?php echo $record->id_pendaftaran; ?></td>
						<td align="center"><?php echo $record->nik_anak; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_anak; ?></td>
						<td align="center"><?php echo $record->anak_ke; ?></td>
						<td align="center"><?php echo $record->jum_saudara; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_ayah; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_ibu; ?></td>
						<td align="center"><?php echo $record->status_ortuwali; ?></td>
						<td align="center"><?php echo $record->status_anak; ?></td>
						<td align="center">
							<a href="<?php echo site_url('/kepsek/penerimaan_siswa/edit/'.$record->id_pendaftaran); ?>" title="Edit Data"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
						</td>
						<td align="center">
							<a href="<?php echo site_url('/kepsek/penerimaan_siswa/delete/'.$record->id_pendaftaran); ?>" title="Hapus Data"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
						</td>
					</tr>
			<?php 
				endforeach;
			?> 
		</tbody>
	</table>
</div>