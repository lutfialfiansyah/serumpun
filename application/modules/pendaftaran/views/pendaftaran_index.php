

<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2"> 
          <div class="col-sm-6">
            <h1>Data Pendaftaran</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Pendaftaran</li>
            </ol> 
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <!-- /.card -->

            <div class="card">
            <div class="card-header">
              <a href="<?php echo site_url('/pendaftaran/pendaftaran/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>

            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr> 
						<th width="1%">ID Pendaftaran</th>
            <th width="10%">Tanggal Pendaftaran</th>
						<th width="10%">NIK Anak</th>
						<th width="40%">Nama Lengkap Anak</th>
						<th width="20%">Anak Ke</th>
						<th width="20%">Jumlah Saudara</th>
						<th width="20%">Nama Lengkap Ayah</th>
						<th width="20%">Nama Lengkap Ibu</th> 
						<th width="20%">Status Orang Tua</th>
						<th>Lanjutan</th>
						<th colspan="2">Aksi</th>
					</tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>

					<tr>
            <td align="center"><?php echo $record->id_pendaftaran; ?></td>
            <td align="center"><?php echo $record->tgl_pendaftaran; ?></td>
						<td align="center"><?php echo $record->nik_anak; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_anak; ?></td>
						<td align="center"><?php echo $record->anak_ke; ?></td>
						<td align="center"><?php echo $record->jum_saudara; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_ayah; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_ibu; ?></td>
						<td align="center"><?php echo $record->status_ortuwali; ?></td>
						<td align="center">
							<form class="form-signin" action="<?php echo site_url('/pendaftaran/pendaftaran/go_ortu'); ?>" method="post">
								<div style="display: none;">
									<input type="text" name="id_pendaftaran" value="<?php echo $record->id_pendaftaran; ?>">
								</div>
								<div id="daftar">
									<button class="btn-sm btn-primary button_blue animate2 bounceIn" id="daftar_btn" type="submit">Lanjut Pendaftaran</button>
								</div>
							</form>
						</td>
						<td align="center">
							<a href="<?php echo site_url('/pendaftaran/pendaftaran/edit/'.$record->id_pendaftaran); ?>" class="btn-sm btn-warning">Edit Data</a>
						</td>
						<td align="center">
							<a href="<?php echo site_url('/pendaftaran/pendaftaran/delete/'.$record->id_pendaftaran); ?>" class="btn-sm btn-danger">Hapus Data</a>

						</td>
					</tr>


                  <?php 
                      $no++;
                    endforeach;
                  ?>
                </tbody>



<!--                 <tbody>
                <tr>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 4.0
                  </td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 5.0
                  </td>
                  <td>Win 95+</td>
                  <td>5</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 5.5
                  </td>
                  <td>Win 95+</td>
                  <td>5.5</td>
                  <td>A</td>
                </tr>
                <tr>
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td>-</td>
                  <td>-</td>
                  <td>U</td>
                </tr>


                </tbody> -->


                <tfoot>
					<tr> 
						<th width="1%">ID </th>
						<th width="10%">NIK Anak</th>
						<th width="40%">Nama Lengkap Anak</th>
						<th width="20%">Anak Ke</th>
						<th width="20%">Jumlah Saudara</th>
						<th width="20%">Nama Lengkap Ayah</th>
						<th width="20%">Nama Lengkap Ibu</th> 
						<th width="20%">Status Orang Tua</th>
						<th>Lanjutan</th>
						<th colspan="2">Aksi</th>
					</tr>
                </tfoot>                
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

  <!-- /.content-wrapper -->
