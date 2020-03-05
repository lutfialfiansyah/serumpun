<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Siswa Kelas</h1> 
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Siswa Kelas</li>
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
              <a href="<?php echo site_url('/akademik/siswa_kelas/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>

            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
        <th width="2%" align="center">No</th>
        <th width="2%" align="center">No.Induk</th>
        <th width="7%"align="center">Nama Anak</th>
        <th width="5%"align="center">Kelas</thalign="center">
        <th width="5%" colspan="2" align="center">Aksi</th>
      </tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>

					<tr>
						<td align="center"><?php echo $no; ?></td>
            <td align="center"><?php echo $record->no_induk; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_anak; ?></td>
						<td align="center"><?php echo $record->nama_kelas ?></td>
						<td align="center">
							<a href="<?php echo site_url('/akademik/siswa_kelas/edit/'.$record->id_siswa_kelas); ?>" class="btn-sm btn-warning">Edit Data</a>
						</td>
						<td align="center">
							<a href="<?php echo site_url('/akademik/siswa_kelas/delete/'.$record->id_siswa_kelas); ?>" class="btn-sm btn-danger">Hapus Data</a>

						</td>
					</tr>


                  <?php 
                      $no++;
                    endforeach;
                  ?>
                </tbody>

                <tfoot>
			<tr>
        <th width="2%" align="center">No</th>
        <th width="2%" align="center">No.Induk</th>
        <th width="7%"align="center">Nama Anak</th>
        <th width="5%"align="center">Kelas</thalign="center">
        <th width="5%" colspan="2" align="center">Aksi</th>
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
