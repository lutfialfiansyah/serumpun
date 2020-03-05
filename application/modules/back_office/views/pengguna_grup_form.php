
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Formulir Pengguna Grup</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Pengguna Grup</li>
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
                	<h3 class="card-title">Data Pengguna Grup</h3>
               		<a href="<?php echo $back; ?>"><h3 class="card-title float-sm-right">Kembali</h3></a>
             	</div>
              <!-- /.card-header -->
              <!-- form start -->

              <?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>
                
                <div class="card-body">

				    <div class="form-group row">
				        <label class="col-sm-3 control-label input-sm">Nama</label>
						<div class="col-sm-4">
						  <input class="form-control input-sm" type="text" name="nama" placeholder="Nama" value="<?php echo $pengguna_grup->nama; ?>" required />
						</div>
					</div>

					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-6">
							<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
						</div>
					</div>
					<?php $a = 0;?>
					<?php if($menu->num_rows() > 0) :?>
					<table>	
						<?php foreach($menu->result() as $indeks => $p) :?>			
						<tr>
							<td width="50"></td>
							<td width="50"></td>
							<td width="50"></td>
							<td width="50"></td>			
							<td>
								<label>
									<input type="checkbox" class="parent" id="<?php echo $p->id;?>" name="id_menu[<?php echo $a++;?>]" value="<?php echo $p->id;?>" <?php if($p->id_menu_akses!=NULL){echo 'checked';} ?> />
									<?php echo $p->nama;?>
								</label>
							</td>
						</tr>
							<?php if($submenu->num_rows() > 0) :?>
								<?php foreach ($submenu->result() as $key => $q) :?>
									<?php if($q->id_menu_induk == $p->id) :?>
										<tr>
											<td colspan="4"></td>
											<td></td>
											<td>
												<label>
													<input type="checkbox" class="child-<?php echo $p->id;?>" name="id_menu[<?php echo $a++;?>]" value="<?php echo $q->id;?>" <?php if($q->id_menu_akses!=NULL){echo 'checked';} ?> />
													<?php echo $q->nama;?>
												</label>
											</td>
										</tr>
									<?php endif;?>
								<?php endforeach;?>
							<?php endif;?>		
						<?php endforeach;?>
					</table>
					<?php endif;?>


           

                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Simpan</button>
                </div>

              <?php echo form_close(); ?>

            </div>
          </div>
        </section>
            <!-- /.card -->
</body>
</html>
