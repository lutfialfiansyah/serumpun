
<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Laporan Kegiatan</h1>
          </div>
          <div class="col-sm-6"> 
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Laporan Kegiatan</li>
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
              <a href="<?php echo site_url('/akademik/laporan_kegiatan/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>

            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr> 
						<th>Tanggal Kegiatan</th>
						<th>Nama Kegiatan</th>
						<th>Deskripsi Kegiatan</th>
						<th>Kategori</th>
            <th>Aksi</th>

					</tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>
					<tr>

						<td align="center"><?php echo $record->tgl_kegiatan; ?></td>
						<td align="center"><?php echo $record->kegiatan; ?></td>
						<td align="center"><?php echo $record->deskripsi; ?></td>
						<td align="center"><?php echo $record->kategori; ?></td>

                        <td>
                          <a href="<?php echo site_url('/akademik/laporan_kegiatan/edit/'.$record->id_laporan_kegiatan); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/akademik/laporan_kegiatan/delete/'.$record->id_laporan_kegiatan); ?>" class="btn-sm btn-danger">Hapus Data</a>
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
