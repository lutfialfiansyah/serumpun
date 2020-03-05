

<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Observasi Tenaga Ahli</h1> 
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Observasi Tenaga Ahli</li>
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
            <!-- 
            <div class="card-header">
              <a href="<?php #echo site_url('/tenaga_ahli/observasi_tenaga_ahli/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div> -->

            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
        <th width="2%" align="center">No</th>
        <th width="7%"align="center">Nama Anak</th>
        <th width="5%"align="center">Observer</thalign="center">
        <th width="5%" align="center">Usia Anak</th>
        <th width="5%" align="center">Tanggal Observasi</th>
        <th width="5%" align="center">Tanggal Jadi Laporan</th>
        <th Width="5%" align="center">Judul Laporan</th>
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
						<td align="center"><?php echo $record->nama_lengkap_anak; ?></td>
						<td align="center"><?php echo $record->observer ?></td>
						<td align="center"><?php echo $record->usia_anak ?></td>
						<td align="center"><?php echo $record->tgl_observasi ?></td>
            <td align="center"><?php echo $record->tgl_laporan_observasi ?></td>  
            <td align="center"><?php echo $record->judul_laporan_observasi ?></td>  
						<td align="center">
							<a href="<?php echo site_url('/tenaga_ahli/observasi_tenaga_ahli/edit/'.$record->id_observasi_tenaga_ahli); ?>" class="btn-sm btn-warning"><?= $btn_label ?></a>
						</td>
						<td align="center">
							<a href="<?php echo site_url('/tenaga_ahli/observasi_tenaga_ahli/reset/'.$record->id_observasi_tenaga_ahli); ?>" class="btn-sm btn-danger">Reset Data</a>

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
        <th width="2%">No</th>
        <th width="7%">Nama Anak</th>
        <th width="5%">Observer</th>
        <th width="5%">Usia Anak</th>
        <th width="5%">Tanggal Observasi</th>
        <th width="5%">Tanggal Jadi Laporan</th>
        <th Width="5%">Judul Laporan</th>
        <th width="5%" colspan="2">Aksi</th>
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
