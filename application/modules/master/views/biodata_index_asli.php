<style>
	div.scrollmenu {
  /* background-color: #333; */
  overflow: auto;
  white-space: nowrap;
}

div.scrollmenu a {
  /* display: inline-block; */
  /* color: white; */
  text-align: center;
  padding: 14px;
  text-decoration: none;
}
 
div.scrollmenu a:hover {
  background-color: #777;
}
</style>

<h3 class="page-header">Biodata</h3>
<div class="actions">
	<a href="<?php echo $add; ?>"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add Data</a>
</div>
<div class=" scrollmenu block-table table-sorting clearfix"><!-- block-fluid table-sorting clearfix -->
	<table cellpadding="0" cellspacing="0" class="tabel" id="datatables">
		<thead>
			<tr>
				<th width="1%">No</th>
				<th width="2%">NIK</th>
				<th width="2%">Nama Lengkap</th>
				<th width="7%">Nama Panggilan</th>
				<th width="2%">Tanggal Lahir</th>
				<th width="2%">Jenis Kelamin</th>
				<th width="2%">Golongan Darah</th>
				<th width="2%">Agama</th>
				<th width="2%">Telepon</th>
				<th width="2%">Email</th>
				<th width="2%">Kelurahan</th>
				<th width="2%">Alamat</th>
				<th width="2%">Pendidikan</th>
				<th width="2%">Pekerjaan</th>
				<th width="3%">Aksi</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				$no = 1;
				foreach($grid as $record) :
			?>
					<tr>
						<td align="center"><?php echo $no; ?></td>				
						<td align="center"><?php echo $record->nik; ?></td>
						<td align="center"><?php echo $record->nama_lengkap; ?></td>
						<td align="center"><?php echo $record->nama_panggilan; ?></td>
						<td align="center"><?php echo $record->tgl_lahir; ?></td>
						<td align="center"><?php echo $record->jk; ?></td>
						<td align="center"><?php echo $record->goldarah; ?></td>
						<td align="center"><?php echo $record->agama; ?></td>
						<td align="center"><?php echo $record->telp; ?></td>
						<td align="center"><?php echo $record->email; ?></td>
						<td align="center"><?php echo $record->kelurahan; ?></td>
						<td align="center"><?php echo $record->alamat; ?></td>
						<td align="center"><?php echo $record->pendidikan; ?></td>
						<td align="center"><?php echo $record->pekerjaan; ?></td>
						<td align="center">
							<a href="<?php echo site_url('/master/biodata/edit/'.$record->nik); ?>" title="Edit Data"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
							<a href="<?php echo site_url('/master/biodata/delete/'.$record->nik); ?>" onclick="return confirm('Apakah Anda yakin akan menghapus data <?php echo $record->nama_lengkap; ?>?')" title="Delete Data"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
						</td>
					</tr>
			<?php 
					$no++;
				endforeach;
			?>
		</tbody>
	</table>
</div>

