<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>$Apartment </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
          dateFormat: 'dd/mm/yy'
      });
      $( "#datepicker1" ).datepicker({
          dateFormat: 'dd/mm/yy'
      });
  } );
  </script>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__shake" src="${pageContext.request.contextPath}/assets/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60"
        width="60">
    </div>

    <!-- Navbar -->
    
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="index3.html" class="brand-link">
        <img src="${pageContext.request.contextPath}/assets/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
          class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">$Apartment</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="${pageContext.request.contextPath}/assets/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
          </div>
          <div class="info">
            <a href="#" class="d-block">Admin $Apartment</a>
          </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
          <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" type="search" placeholder="Tìm kiếm" aria-label="Search">
            <div class="input-group-append">
              <button class="btn btn-sidebar">
                <i class="fas fa-search fa-fw"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item menu-open">
              <a href="#" class="nav-link active">
                <i class="fa-solid fa-list-check"></i> &nbsp;
                <p>
                  Quản lý
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item active">
                  <a href="${pageContext.request.contextPath }/admin/account" class="nav-link">
                    <i class="fa-solid fa-user"></i> &nbsp;
                    <p>Tài khoản</p>

                  </a>
                </li>
                <li class="nav-item">
                  <a href="${pageContext.request.contextPath }/admin/systemapartment" class="nav-link ${activeAdminSystem }">
                    <i class="fa-solid fa-building"></i> &nbsp;
                    <p>Căn hộ của hệ thống</p>
                  </a>
                </li>
                <li class="nav-item ">
                  <a href="${pageContext.request.contextPath }/admin/userapartment" class="nav-link ${activeUser }">
                    <i class="fa-solid fa-building-user"></i> &nbsp;
                    <p>Căn hộ của người dùng</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath }/admin/postapartment" class="nav-link ${activePost }">
                <i class="fa-solid fa-newspaper"></i>&nbsp;
                <p> 
                  Bài đăng của người dùng
                
                </p>
              </a>
            </li>
            <li class="nav-item ${activeContractOpen} ">
              <a href="#" class="nav-link ${activeContract }">
                <i class="fa-solid fa-file-signature"></i> &nbsp;
                <p>
                  Hợp đồng
                  <i class="fas fa-angle-left right"></i>

                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item ">
                  <a href="${pageContext.request.contextPath }/admin/newcontractuser" class="nav-link ${activeContractUser }">
                    <i class="fa-solid fa-user-plus"></i></i> &nbsp;
                    <p>Chủ sở hữu mới</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="${pageContext.request.contextPath }/admin/newcontract" class="nav-link ${activeNewContract }">
                    <i class="fa-solid fa-plus"></i> &nbsp;
                    <p>Hợp đồng mới</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="${pageContext.request.contextPath }/admin/contractapartment" class="nav-link ${activeListContract }">
                    <i class="fa-solid fa-file-contract"></i> &nbsp;
                    <p>Danh sách hợp đồng</p>
                  </a>
                </li>
                


              </ul>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath }/admin/feedback" class="nav-link ${activeFeedback }">
                <i class="fa-solid fa-comment"></i> &nbsp;
                <p>
                  Đánh giá
                

                </p>
              </a>
            </li>


          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
   <jsp:include page="${admin }"></jsp:include>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
       
      <strong>Hệ thống cung cấp căn hộ cao cấp và kí gửi căn hộ của bạn <a href="https://adminlte.io">$Apartment</a></strong>
       
     </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <!-- Bootstrap 4 -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- ChartJS -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/chart.js/Chart.min.js"></script>
  <!-- Sparkline -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/sparklines/sparkline.js"></script>
  <!-- JQVMap -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
  <!-- daterangepicker -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/moment/moment.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/daterangepicker/daterangepicker.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- Summernote -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/summernote/summernote-bs4.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="${pageContext.request.contextPath}/assets/admin/dist/js/adminlte.js"></script>
  <!-- AdminLTE for demo purposes -->
  <!-- <script src="${pageContext.request.contextPath}/assets/admin/dist/js/demo.js"></script> -->
  <!-- bo? dong nay de load lai trang ko xuat hien alert -->
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/jszip/jszip.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/pdfmake/pdfmake.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/pdfmake/vfs_fonts.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  <script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": false,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
    });
  </script>
</body>

</html>