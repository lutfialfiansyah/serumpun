  <!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Kelas</h1>
          </div>  
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Kelas</li>
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
              <a href="<?php echo site_url('/master/kelas/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>
            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th width="2%">No</th>
                  <th width="7%">Nama Kelas</th>
                  <th width="7%">Tahun Ajaran (XXXX/XXXX)</th>
                  <th width="7%">Semester</th>
                  <th width="7%">Tipe Kelas</th>
                  <th width="7%">Koordinator</th>
                  <th width="7%">Pembimbing 1</th>
                  <th width="7%">Pembimbing 2</th>
                  <th width="7%">Pembimbing 3</th>
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
                        <td align="center"><?php echo $record->nama_kelas; ?></td>
                        <td align="center"><?php echo $record->tahun_ajaran; ?></td>
                        <td align="center"><?php echo $record->semester; ?></td>
                        <td align="center"><?php echo $record->tipe_kelas; ?></td>
                        <td align="center"><?php echo $record->koordinator; ?></td>
                        <td align="center"><?php echo $record->pembimbing1; ?></td>
                        <td align="center"><?php echo $record->pembimbing2; ?></td>
                        <td align="center"><?php echo $record->pembimbing3; ?></td>
                        <td align="center">
                          <a href="<?php echo site_url('/master/Kelas/edit/'.$record->id_kelas); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/master/Kelas/delete/'.$record->id_kelas); ?>" class="btn-sm btn-danger">Hapus Data</a>
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
                  <th width="7%">Nama Kelas</th>
                  <th width="7%">Tahun Ajaran (XXXX/XXXX)</th>
                  <th width="7%">Semester</th>
                  <th width="7%">Tipe Kelas</th>
                  <th width="7%">Koordinator</th>
                  <th width="7%">Pembimbing 1</th>
                  <th width="7%">Pembimbing 2</th>
                  <th width="7%">Pembimbing 3</th>
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
