  <!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Sumber Daya Manusia</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Sumber Daya Manusia</li>
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
              <a href="<?php echo site_url('/master/sdm/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>
            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th width="2%">No</th>
                  <th width="7%">Nama Lengkap</th>
                  <th width="7%">Alamat</th>
                  <th width="7%">Tanggal Lahir</th>
                  <th width="7%">Jenis Kelamin</th>
                  <th width="2%">Agama</th>
                  <th width="7%">Pendidikan Terakhir</th>
                  <th width="7%">Pengalaman Kerja</th>
                  <th width="7%">Telp</th>
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
                        <td align="center"><?php echo $record->nama_lengkap; ?></td>
                        <td align="center"><?php echo $record->alamat; ?></td>
                        <td align="center"><?php echo $record->tgl_lahir; ?></td>
                        <td align="center"><?php echo $record->jk; ?></td>
                        <td align="center"><?php echo $record->agama; ?></td>
                        <td align="center"><?php echo $record->pendidikan; ?></td>
                        <td align="center"><?php echo $record->pengalaman_kerja; ?></td>
                        <td align="center"><?php echo $record->telp; ?></td>
                        <td align="center">
                          <a href="<?php echo site_url('/master/sdm/edit/'.$record->id_sdm); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/master/sdm/delete/'.$record->id_sdm); ?>" class="btn-sm btn-danger">Hapus Data</a>
                        </td>
                      </tr>
                  <?php 
                      $no++;
                    endforeach;
                  ?>
                </tbody>

                <tfoot>
                <tr>
                  <th width="2%">No</th>
                  <th width="7%">Nama Lengkap</th>
                  <th width="7%">Alamat</th>
                  <th width="7%">Tanggal Lahir</th>
                  <th width="7%">Jenis Kelamin</th>
                  <th width="7%">Agama</th>
                  <th width="7%">Pendidikan Terakhir</th>
                  <th width="7%">Pengalaman Kerja</th>
                  <th width="7%">Telp</th>
                  <th width="5%">Aksi</th>
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
