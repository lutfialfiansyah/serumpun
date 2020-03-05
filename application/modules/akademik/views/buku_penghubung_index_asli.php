
<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Buku Penghubung</h1>
          </div>
          <div class="col-sm-6"> 
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Buku Penghubung</li>
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
              <a href="<?php echo site_url('/akademik/buku_penghubung/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>

            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr> 
						<th>Tanggal</th>
						<th>Hal</th>
						<th>Penilaian</th>

						<th>Keterangan</th>
						<th>Kemandirian</th>

						<th>Informasi Guru</th>
						<th>Informasi Orang Tua</th>

            			<th>Aksi</th>
					</tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>
					<tr>

						<td align="center"><?php echo $record->tgl_buku_penghubung; ?></td>
						<td align="center"><?php echo $record->hal; ?></td>
						<td align="center"><?php echo $record->penilaian; ?></td>
						<td align="center"><?php echo $record->keterangan; ?></td>
						<td align="center"><?php echo $record->kemandirian; ?></td>
						<td align="center"><?php echo $record->informasi_guru; ?></td>
						<td align="center"><?php echo $record->informasi_ortu; ?></td>

                        <td>
                          <a href="<?php echo site_url('/akademik/buku_penghubung/edit/'.$record->id_buku_penghubung); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/akademik/buku_penghubung/delete/'.$record->id_buku_penghubung); ?>" class="btn-sm btn-danger">Hapus Data</a>
                        </td>

					</tr>

                  <?php 
                      $no++;
                    endforeach;
                  ?>
                </tbody>

                <tfoot>
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
