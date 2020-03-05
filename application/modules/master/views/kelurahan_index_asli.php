<h3 class="page-header">Kelurahan</h3>
<div class="actions">
	<a href="<?php echo $add; ?>"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add Data</a>
</div>
<div class="block-table table-sorting clearfix"><!-- block-fluid table-sorting clearfix -->
	<table cellpadding="0" cellspacing="0" class="tabel" id="datatables">
		<thead>
			<tr>
				<th width="2%">No</th>
				<th width="7%">Id Kelurahan</th>
				<th width="7%">Kelurahan</th>
				<th width="7%">Id Kecamatan</th>
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
						<td align="center"><?php echo $record->id_kelurahan; ?></td>
						<td align="center"><?php echo $record->kelurahan; ?></td>
						<td align="center"><?php echo $record->kecamatan; ?></td>
						<td align="center">
							<a href="<?php echo site_url('/master/kelurahan/edit/'.$record->id_kelurahan); ?>" title="Edit Data"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
						</td>
					</tr>
			<?php 
					$no++;
				endforeach;
			?>
		</tbody>
	</table>
</div>