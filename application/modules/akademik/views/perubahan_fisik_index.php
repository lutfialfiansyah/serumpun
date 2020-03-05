
<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Perubahan Fisik Siswa</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Perubahan Fisik Siswa</li>
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
              <a href="<?php echo site_url('/akademik/perubahan_fisik/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a>
            </div>

            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
      <tr>
        <th width="2%">No</th>
        <th width="7%">Tanggal</th>
        <th width="7%">Berat Badan (Kg)</th>
        <th width="7%">Tinggi Badan (Cm)</th>
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
            <td align="center"><?php echo $record->tgl_pengukuran; ?></td>
            <td align="center"><?php echo $record->berat_perbulan; ?></td>
            <td align="center"><?php echo $record->tinggi_perbulan; ?></td>
            <td align="center">
              <a href="<?php echo site_url('/akademik/perubahan_fisik/edit/'.$record->id_perubahan_fisik); ?>" class="btn-sm btn-warning">Edit Data</a>
              <a href="<?php echo site_url('/akademik/perubahan_fisik/delete/'.$record->id_perubahan_fisik); ?>" class="btn-sm btn-danger">Hapus Data</a>
            </td>
          </tr>
      <?php 
          $no++;
        endforeach;
      ?>
    </tbody>             
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
