<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Tạo chủ sở hữu mới</h1>
            </div>
            
          </div>
        </div><!-- /.container-fluid -->
      </section>
  
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Tạo mới</h3>
  
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <form action="newcontractuser.html">
                <div class="form-group">
                  <label for="inputName">Họ và tên</label>
                  <input type="text" id="inputName" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputName">Ngày sinh</label>
                  <input type="text" id="datepicker" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputName">Số điện thoại</label>
                  <input type="text" id="inputName" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputName">Địa chỉ</label>
                  <input type="text" id="inputName" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputName">Số CCCD</label>
                  <input type="text" id="inputName" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputName">Ngày tạo</label>
                  <input type="text" id="datepicker1" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputName">Ảnh đại diện</label>
                  <br>
                  <input style="margin-left: 100px;"  type="file" name="" required accept="image/*" id="inputAvatar" multiple>
                  <label style="margin-top: 5px;" for="inputAvatar" class="custom-upload-btn"><i class="fa-solid fa-arrow-up-from-bracket"></i> &nbsp; Tải lên</label>
                  <br>
                  <br>
                  <img id="avatar" src="${pageContext.request.contextPath}/assets/user/images/Unknown_person.jpg" height="100px" width="100px" alt="">
                  <script>
                    $(document).ready(function(){
                      $('#inputAvatar').change( function() {
                  var tmppath = URL.createObjectURL(event.target.files[0]);
                      
                      $("#avatar").attr('src',tmppath);       
                  });
                    });
                  </script>
                </div>
            
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
      
        </div>
        <div class="row">
          <div class="col-12">
            <a href="#" class="btn btn-secondary">Hủy</a>
            <input type="submit" value="Tạo chủ sở hữu mới" class="btn btn-success float-right">
          </div>
        </div>
      </form>
      </section>
      <!-- /.content -->
    </div>