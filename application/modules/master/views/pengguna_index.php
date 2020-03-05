

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
              <li class="breadcrumb-item active">Pendaftar Baru</li>
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
                <a href="<?php //echo site_url('/pendaftaran/pendaftaran/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
              </div> 
            -->

            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
        					<tr> 
        						<th width="10%">no</th>
                    <th width="30%">username</th>
                    <th width="40%">nama</th>
                    <th width="10%">blokir</th>
                    <th width="10%" colspan="2">aksi</th> 
        					</tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>

					<tr>
            <td align="center"><?php echo $no; ?></td>
            <td><?php echo $record->username; ?></td>
            <td><?php echo $record->nama; ?></td>
            <td align="center"><?php echo $record->blokir; ?></td>
            <td align="center">
              <a href="<?php echo site_url('/back_office/pengguna/edit/'.$record->id); ?>" title="Edit Data" class="btn-sm btn-warning">Ubah</a>
            </td>
            <td>
              <a href="<?php echo site_url('/back_office/pengguna/delete/'.$record->id); ?>" onclick="return confirm('Apakah Anda yakin akan menghapus data <?php echo $record->nama; ?>?')" title="Delete Data" class="btn-sm btn-danger">Hapus</a>
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
                    <th width="10%">no</th>
                    <th width="30%">username</th>
                    <th width="40%">nama</th>
                    <th width="10%">blokir</th>
                    <th width="10%">aksi</th> 
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
