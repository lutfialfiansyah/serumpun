<h3 class="page-header">Hubungan Keluarga</h3>
<div class="actions">
	<a href="<?php echo $add; ?>"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add Data</a>
</div>
<div class="block-table table-sorting clearfix"><!-- block-fluid table-sorting clearfix -->
	<table cellpadding="0" cellspacing="0" class="tabel" id="datatables">
		<thead>
			<tr>
				<th width="2%">No</th>
				<th width="7%">Hubungan Keluarga</th>
				<th width="5%">Aksi</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				$no = 1;
				foreach($grid as $record) :
			?>
					<tr>
						<td align="center"><?php echo $no; ?></td>				
						<td align="center"><?php echo $record->hubungan; ?></td>
						<td align="center">
							<a href="<?php echo site_url('/master/hubungan/edit/'.$record->id_hubungan); ?>" title="Edit Data"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
							<a href="<?php echo site_url('/master/hubungan/delete/'.$record->id_hubungan); ?>" onclick="return confirm('Apakah Anda yakin akan menghapus data <?php echo $record->hubungan; ?>?')" title="Delete Data"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
						</td>
					</tr>
			<?php 
					$no++;
				endforeach;
			?>
		</tbody>
	</table>
</div>