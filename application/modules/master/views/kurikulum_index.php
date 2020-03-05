  <!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Kurikulum</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Kurikulum</li>
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
              <a href="<?php echo site_url('/master/kurikulum/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th width="2%" >No</th>
                  <th width="30%" >Kurikulum Inti</th>
                  <th width="40%" >kurikulum Dasar</th>
                  <th width="20%" >Aksi</th>
                </tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>
                      <tr>
                        <td ><?php echo $no; ?></td>        
                        <td ><?php echo $record->kompetensi_inti; ?></td>
                        <td ><?php echo $record->kompetensi_dasar; ?></td>
                        <td >
                          <a href="<?php echo site_url('/master/Kurikulum/edit/'.$record->id_kurikulum); ?>" class="btn-sm btn-warning">Edit Data</a>
                          <a href="<?php echo site_url('/master/Kurikulum/delete/'.$record->id_kurikulum); ?>" class="btn-sm btn-danger">Hapus Data</a>
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
                  <th width="30%">Kurikulum Inti</th>
                  <th width="40%">kurikulum Dasar</th>
                  <th width="20%">Aksi</th>
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
