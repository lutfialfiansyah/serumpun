<h3 class="page-header">Biodata</h3>
<div class="actions">
	<a href="<?php echo $add; ?>"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add Data</a>
</div>
<div class="block-table table-sorting clearfix"><!-- block-fluid table-sorting clearfix -->
	<table cellpadding="0" cellspacing="0" class="tabel" id="datatables">
		<thead>
			<tr>
				<th width="10%">No</th>
				<th width="20%">NIK</th>
				<th width="15%">Nama Lengkap</th>
				<th width="35%">JK</th>
				<th width="10%">Foto</th>
				<th width="10%">Aksi</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				$no = 1;
				foreach($grid as $record) :
			?>
					<tr>
						<td align="center"><?php echo $no; ?></td>
						<td><?php echo $record->nik; ?></td>						
						<td><?php echo $record->nama_lengkap; ?></td>
						<td><?php echo $record->jk; ?></td>
						<td><?php echo $record->foto; ?></td>
						<td align="center">
							<a href="<?php echo site_url('/master_data/biodata/edit/'.$record->nik); ?>" title="Edit Data"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a> | 
							<a href="<?php echo site_url('/master_data/biodata/delete/'.$record->nik); ?>" onclick="return confirm('Apakah Anda yakin akan menghapus data <?php echo $record->nama_lengkap; ?>?')" title="Delete Data"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
						</td>
					</tr>
			<?php 
					$no++;
				endforeach;
			?>
		</tbody>
	</table>
</div>