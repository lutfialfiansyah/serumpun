  <!-- summernote -->
  <link rel="stylesheet" href="../../../../plugins/summernote/summernote-bs4.css">

<h3 class="page-header">Form Golongan Darah</h3>
<div class="actions">
	<a href="<?php echo $back; ?>"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</a>
</div>

<?php echo form_open($action, array('class' => 'form-horizontal row-form')); ?>

	<!-- <div class="form-group">
		<label class="col-sm-2 control-label input-sm">Imunisasi</label>
		<div class="col-sm-4">
			<input class="form-control input-sm" type="text" name="imunisasi" placeholder="Imunisasi" value="<?php echo $imunisasi->imunisasi; ?>"  required />
		</div>
	</div> -->


                <textarea class="textarea" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                      <th><center>Jenis Imunisasi</center></th>
                      <th><center>Usia Saat Imunisasi (Bulan)</center></th>
                    </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                       <tr>
                        <td></td>
                        <td></td>
                      </tr>
                    </tbody>
                  </table>
                </textarea>



	

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn btn btn-primary btn-sm button-blue" > Simpan </button>
			<button type="reset" class="btn btn btn-primary btn-sm button-red" > Reset </button>
		</div>
	</div>





<!-- Summernote -->
<script src="../../../../plugins/summernote/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
<?php echo form_close(); ?>