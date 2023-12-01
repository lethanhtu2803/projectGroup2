<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Danh sách tài khoản</h1>
            </div>
            
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card">
                
                
                <!-- /.card-header -->
                <div class="card-body">
                  <table style="text-align: center;" id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th style="width: 50px; vertical-align: top;">
                          Mã tài khoản
                        </th>
                        <th style="vertical-align: top;">
                          Tên tài khoản
                          <br>
                          <input style="width: 140px;" type="text">
                        </th>
                        <th style="vertical-align: top;">Mật khẩu</th>
                        <th style="vertical-align: top;">Họ và tên</th>
                        <th style="vertical-align: top;">Ngày sinh</th>
                        <th style="vertical-align: top;">Thư điện tử</th>
                        <th style="vertical-align: top;">Số điện thoại</th>
                        <th style="vertical-align: top;">Địa chỉ</th>
                        <th style="vertical-align: top;">Ngày khởi tạo</th>
                        <th style="vertical-align: top;">Ảnh đại diện</th>
                        <th style="vertical-align: top;">Trạng thái
                          <br>
                          <select style="margin-top: 10px;" name="" id="">
                            <option value="">Chọn trạng thái</option>
                            <option value="">Đã xác thực</option>
                            <option value="">Chưa xác thực</option>
                            <option value="">Đã bị chặn</option>

                          </select>
                        </th>
                        <th style="vertical-align: top;">Hành động</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>lethanhtu2803</td>
                        <td>123</td>
                        <td>Lê Thanh Tú</td>
                        <td>28/03/2003</td>
                        <td>letu36592@gmail.com</td>
                        <td>0948502190</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>18/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/thanhtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>doducthien0608</td>
                        <td>123</td>
                        <td>Đỗ Đức Thiện</td>
                        <td>06/08/2003</td>
                        <td>neverabc2003@gmail.com</td>
                        <td>0397205667</td>
                        <td>100, đường 11, Dĩ An, Bình Dương</td>
                        <td>20/11/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/ducthien.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>nguyenhoangtu1205</td>
                        <td>123</td>
                        <td>Nguyễn Hoàng Tú</td>
                        <td>12/05/2003</td>
                        <td>nguyenhoangtu@gmail.com</td>
                        <td>0982475645</td>
                        <td>Quận 8, TPHCM</td>
                        <td>31/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/hoangtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>lethanhtu2803</td>
                        <td>123</td>
                        <td>Lê Thanh Tú</td>
                        <td>28/03/2003</td>
                        <td>letu36592@gmail.com</td>
                        <td>0948502190</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>18/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/thanhtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>doducthien0608</td>
                        <td>123</td>
                        <td>Đỗ Đức Thiện</td>
                        <td>06/08/2003</td>
                        <td>neverabc2003@gmail.com</td>
                        <td>0397205667</td>
                        <td>100, đường 11, Dĩ An, Bình Dương</td>
                        <td>20/11/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/ducthien.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>nguyenhoangtu1205</td>
                        <td>123</td>
                        <td>Nguyễn Hoàng Tú</td>
                        <td>12/05/2003</td>
                        <td>nguyenhoangtu@gmail.com</td>
                        <td>0982475645</td>
                        <td>Quận 8, TPHCM</td>
                        <td>31/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/hoangtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr><tr>
                        <td>7</td>
                        <td>lethanhtu2803</td>
                        <td>123</td>
                        <td>Lê Thanh Tú</td>
                        <td>28/03/2003</td>
                        <td>letu36592@gmail.com</td>
                        <td>0948502190</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>18/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/thanhtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>8</td>
                        <td>doducthien0608</td>
                        <td>123</td>
                        <td>Đỗ Đức Thiện</td>
                        <td>06/08/2003</td>
                        <td>neverabc2003@gmail.com</td>
                        <td>0397205667</td>
                        <td>100, đường 11, Dĩ An, Bình Dương</td>
                        <td>20/11/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/ducthien.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>9</td>
                        <td>nguyenhoangtu1205</td>
                        <td>123</td>
                        <td>Nguyễn Hoàng Tú</td>
                        <td>12/05/2003</td>
                        <td>nguyenhoangtu@gmail.com</td>
                        <td>0982475645</td>
                        <td>Quận 8, TPHCM</td>
                        <td>31/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/hoangtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr><tr>
                        <td>10</td>
                        <td>lethanhtu2803</td>
                        <td>123</td>
                        <td>Lê Thanh Tú</td>
                        <td>28/03/2003</td>
                        <td>letu36592@gmail.com</td>
                        <td>0948502190</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>18/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/thanhtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>11</td>
                        <td>doducthien0608</td>
                        <td>123</td>
                        <td>Đỗ Đức Thiện</td>
                        <td>06/08/2003</td>
                        <td>neverabc2003@gmail.com</td>
                        <td>0397205667</td>
                        <td>100, đường 11, Dĩ An, Bình Dương</td>
                        <td>20/11/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/ducthien.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>12</td>
                        <td>nguyenhoangtu1205</td>
                        <td>123</td>
                        <td>Nguyễn Hoàng Tú</td>
                        <td>12/05/2003</td>
                        <td>nguyenhoangtu@gmail.com</td>
                        <td>0982475645</td>
                        <td>Quận 8, TPHCM</td>
                        <td>31/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/hoangtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr><tr>
                        <td>13</td>
                        <td>lethanhtu2803</td>
                        <td>123</td>
                        <td>Lê Thanh Tú</td>
                        <td>28/03/2003</td>
                        <td>letu36592@gmail.com</td>
                        <td>0948502190</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>18/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/thanhtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>14</td>
                        <td>doducthien0608</td>
                        <td>123</td>
                        <td>Đỗ Đức Thiện</td>
                        <td>06/08/2003</td>
                        <td>neverabc2003@gmail.com</td>
                        <td>0397205667</td>
                        <td>100, đường 11, Dĩ An, Bình Dương</td>
                        <td>20/11/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/ducthien.jpg" height="100" width="90" alt=""></td>
                        <td>Đã xác thực</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      <tr>
                        <td>15</td>
                        <td>nguyenhoangtu1205</td>
                        <td>123</td>
                        <td>Nguyễn Hoàng Tú</td>
                        <td>12/05/2003</td>
                        <td>nguyenhoangtu@gmail.com</td>
                        <td>0982475645</td>
                        <td>Quận 8, TPHCM</td>
                        <td>31/10/2023</td>
                        <td><img src="${pageContext.request.contextPath}/assets/user/images/hoangtu.jpg" height="100" width="90" alt=""></td>
                        <td>Đã bị chặn</td>
                        <td><a href="#" onclick="return confirm('bạn có chắc chắn muốn chặn')">Chặn</a> | <a  href="#" onclick="return confirm('bạn có chắc chắn muốn xóa')">Xóa</a></td>
                      </tr>
                      
                  </table>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->


              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>