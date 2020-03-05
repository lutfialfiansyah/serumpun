

<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2"> 
          <div class="col-sm-6">
            <h1>Pilih Kelas Siswa</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">  
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Pilih Kelas Siswa</li>
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
            <!-- <div class="card-header">
              <a href="<?php #echo site_url('/kepsek/data_siswa/add'); ?>" class="btn-sm btn-primary"> + Tambah Data </a> 
            </div>-->

            <!-- /.card-header -->
            <div class="card-body" style="overflow: auto; white-space: nowrap;">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr> 
						<th>ID Pendaftaran</th>
						<th>NIK Anak</th>
						<th>Nama Lengkap Anak</th>
						<th>Anak Ke</th>
						<th>Jumlah Saudara</th>
						<th>Nama Lengkap Ayah</th>
						<th>Nama Lengkap Ibu</th> 
						<th>Status Orang Tua</th>
						<th>Status Anak</th>
						<th>Aksi</th>
					</tr>
                </thead>
                
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($grid as $record) :
                  ?>

					<tr>
						<td align="center"><?php echo $record->id_pendaftaran; ?></td>
						<td align="center"><?php echo $record->nik_anak; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_anak; ?></td>
						<td align="center"><?php echo $record->anak_ke; ?></td>
						<td align="center"><?php echo $record->jum_saudara; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_ayah; ?></td>
						<td align="center"><?php echo $record->nama_lengkap_ibu; ?></td>
						<td align="center"><?php echo $record->status_ortuwali; ?></td>
						<td align="center"><?php echo $record->status_anak; ?></td> 
            <td align="center">
            <a href="<?php echo site_url('/akademik/siswa_kelas/add/'.$record->no_induk); ?>" class="btn-sm btn-primary">Berikan Kelas</a>
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
<!-- 					<tr> 
						<th>ID Pendaftaran</th>
						<th>NIK Anak</th>
						<th>Nama Lengkap Anak</th>
						<th>Anak Ke</th>
						<th>Jumlah Saudara</th>
						<th>Nama Lengkap Ayah</th>
						<th>Nama Lengkap Ibu</th> 
						<th>Status Orang Tua</th>
						<th>Status Anak</th>
						<th colspan="2">Aksi</th>
					</tr> -->
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
