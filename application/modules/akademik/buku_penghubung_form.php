      
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Buku Penghubung</h1>
            </div> 
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Buku Penghubung</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

 <section class="content">
              <div class="container-fluid">

            <!-- Horizontal Form -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Buku Penghubung</h3>
                <a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->

                <?php if ($this->session->flashdata('status') != '') : ?>
                  <div class="alert alert-success alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>    
                    <span><?php echo $this->session->flashdata('status'); ?></span>
                  </div>
                <?php endif; ?>
              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">


                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Nama Lengkap Anak</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="nama_lengkap_anak" value="wowowo" readonly>
                    </div>
                  </div>

                  <!-- <= $this->session->has_userdata('daftar') ? $this->session->daftar['nama_lengkap_anak'] : '';?> -->

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">No Induk</label>
                    <div class="col-sm-3">
                      <input type="text" class="form-control" name="no_induk" value="02.2021.1"  readonly>
                    </div>
                  </div>

                  <!-- <= $this->session->has_userdata('daftar') ? $this->session->daftar['no_induk'] : '';?> -->

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tanggal Buku Penghubung</label>
                    <div class="col-sm-9">
                      <input type="date" class="form-control"  name="tgl_buku_penghubung" value="<?= $buku_penghubung->tgl_buku_penghubung; ?>">
                    </div>
                  </div>





				<div class="form-group">
					<div class="col-sm-12">
						<textarea class="textarea" name="data_buku_penghubung" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
            <?php if ($buku_penghubung->data_buku_penghubung) : echo $buku_penghubung->data_buku_penghubung; ?>
            <?php else : ?>

            <table border="1" width="100%" style="text-align: center;">
				                <thead>
					                <tr>
					                  <th style="background-color: #bac7a7"><center>Hal</center></th>
					                  <th style="background-color: #bac7a7"><center>Nilai (Sangat Baik/Baik/Cukup/Kurang/Tidak Masuk)</center></th>
					                  <th style="background-color: #bac7a7"><center>Keterangan</center></th>
				                </thead>
				                <tbody>
					               <tr>
					               	<td>Mood</td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td>Sikap Belajar</td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td>Usaha</td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td>Kepatuhan</td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td>Perilaku</td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td>Sosialisasi</td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td>Beribadah</td>
					               	<td></td>
					               	<td></td>
					               </tr>
				                </tbody>
			              </table>     
                  <?php endif; ?>
			            </textarea>			
					</div>
				</div>

	       <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Kemandirian</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="kemandirian" value="<?= $buku_penghubung->kemandirian; ?>">
                    </div> 
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Informasi Guru</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="informasi_guru" value="<?= $buku_penghubung->informasi_guru; ?>">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Informasi Orang Tua</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"  name="informasi_ortu" value="<?= $buku_penghubung->informasi_ortu; ?>">
                    </div>
                  </div>

				<div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>

              <?php echo form_close(); ?>

            </div>
          </div>
        </section>
</body>
</html>