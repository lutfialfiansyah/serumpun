<!-- AWAL TOP MENU -->

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SERUMPUN | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="http://localhost/serumpun/asset/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- DataTables -->
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/datatables-bs4/css/dataTables.bootstrap4.css">



  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/jqvmap/jqvmap.min.css">
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="http://localhost/serumpun/asset/plugins/summernote/summernote-bs4.css">






</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <?php echo $this->load->view($header); ?>
  </nav>
  <!-- /.navbar -->
  <!-- AKHIR TOP MENU -->

  <!-- AWAL SIDEBAR -->
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <?php echo $this->load->view($left_content); ?>
    <!-- /.sidebar -->
  </aside>
<!-- AKHIR SIDEBAR -->

<!-- AWAL CONTENT -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <?php echo $this->load->view($content); ?>
  </div>
  <!-- /.content-wrapper -->
<!-- AKHIR CONTENT -->

<!--   AWAL FOOTER -->
  <footer class="main-footer">
    <?php echo $this->load->view($footer); ?>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>



<script src="http://localhost/serumpun/asset/dist/js/pages/dashboard.js"></script>
<script src="http://localhost/serumpun/asset/plugins/chart.js/Chart.min.js"></script>
<script src="http://localhost/serumpun/asset/plugins/sparklines/sparkline.js"></script>
<script src="http://localhost/serumpun/asset/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="http://localhost/serumpun/asset/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<script src="http://localhost/serumpun/asset/plugins/jquery-knob/jquery.knob.min.js"></script>
<script src="http://localhost/serumpun/asset/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="http://localhost/serumpun/asset/plugins/moment/moment.min.js"></script>
<script src="http://localhost/serumpun/asset/plugins/daterangepicker/daterangepicker.js"></script>
<script src="http://localhost/serumpun/asset/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="http://localhost/serumpun/asset/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>


<!-- jQuery -->
<script src="http://localhost/serumpun/asset/plugins/jquery/jquery.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 4 -->
<script src="http://localhost/serumpun/asset/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="http://localhost/serumpun/asset/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="http://localhost/serumpun/asset/dist/js/demo.js"></script>

<script src="http://localhost/serumpun/asset/plugins/summernote/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>

<script src="http://localhost/serumpun/asset/plugins/datatables/jquery.dataTables.js"></script>
<script src="http://localhost/serumpun/asset/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>

<script src="http://localhost/serumpun/asset/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
  bsCustomFileInput.init();
});
</script>

</body>
</html>

<!-- AKHIR FOOTER -->