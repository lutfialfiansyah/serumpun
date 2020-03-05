  <!-- Content Wrapper. Contains page content -->
    
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Biodata</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Biodata</li>
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
              <a href="<?php echo site_url('/master/biodata/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>
            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
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
                          <a href="<?php echo site_url('/master/biodata/edit/'.$record->nik); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/master/biodata/delete/'.$record->nik); ?>" class="btn-sm btn-danger">Hapus Data</a>
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
