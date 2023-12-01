<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
     <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Danh sách căn hộ người dùng</h1>
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
                        <th style="vertical-align: top;">
                          Mã căn hộ
                        </th>
                        <th style="vertical-align: top;">
                          Tiêu đề
                          <br>
                          <input style="width: 140px;" type="text">
                        </th>
                        <th style="vertical-align: top;">Mã tài khoản</th>
                        <th style="vertical-align: top;">Ngày đăng</th>
                        <th style="vertical-align: top;">Phòng ngủ</th>
                        <th style="vertical-align: top;">Phòng tắm</th>
                        <th style="vertical-align: top;">Giá</th>
                        <th style="vertical-align: top;">Đặt cọc</th>
                        <th style="vertical-align: top;">Địa chỉ</th>
                        <th style="vertical-align: top;">Diện tích</th>
                        <th style="vertical-align: top;">Mô tả</th>
                        <th style="vertical-align: top;">Ảnh căn hộ</th>
                        <th style="vertical-align: top;">Quản lý</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>CĂN HỘ ESSENSIA SKY - MẶT TIỀN NGUYỄN HỮU THỌ - CÁCH QUẬN 1 CHỈ 8KM</td>
                        <td>1</td>
                        <td>10/11/2023</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                        <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can1.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can1.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Chính chủ bán căn hộ CC A2 khu dân cư Miếu Nổi, Vạn Kiếp, Bình Thạnh</td>
                        <td>1</td>
                        <td>12/10/2023</td>
                        <td>3</td>
                        <td>2</td>
                        <td>3,8 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                        <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can2.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can2.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>3</td>
                        <td>BÁN CĂN HỘ 68M2 2 PHÒNG NGỦ RẺ NHẤT KHU, QUỸ NHÀ Ở HỖ TRỢ 8 CHẤM</td>
                        <td>1</td>
                        <td>06/08/2023</td>
                        <td>2</td>
                        <td>2</td>
                        <td>4,2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can3.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can3.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>4</td>
                        <td>BÁN CĂN HỘ 2 PHÒNG NGỦ, 98m2, EMPIRE CITY</td>
                        <td>1</td>
                        <td>05/09/2023</td>
                        <td>3</td>
                        <td>2</td>
                        <td>12,4 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can4.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can4.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>5</td>
                        <td>Bán căn hộ chung cư TOPAZ GARDEN, Hoà Thạnh, Tân Phú</td>
                        <td>1</td>
                        <td>12/05/2023</td>
                        <td>2</td>
                        <td>2</td>
                        <td>1,05 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can5.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can5.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>6</td>
                        <td>Căn Hộ TT quận 9, trả trước 900 triệu nhận nhà/tặng full nội thất</td>
                        <td>1</td>
                        <td>28/03/2023</td>
                        <td>2</td>
                        <td>2</td>
                        <td>900 triệu</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can6.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can6.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>7</td>
                        <td>Căn hộ 2PNCộng Hòa giá 860tr_sổ riêng lâu dài_ở liền</td>
                        <td>1</td>
                        <td>28/03/2023</td>
                        <td>2</td>
                        <td>2</td>
                        <td>860 triệu</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can7.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can7.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>8</td>
                        <td>Bán căn hộ Saigonsouth Residences, tầng cao view sông</td>
                        <td>1</td>
                        <td>01/01/2023</td>
                        <td>2</td>
                        <td>2</td>
                        <td>5,4 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can8.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can8.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>9</td>
                        <td>Kẹt tiền bán căn 2PN Q7 SG Riverside Complex giá 2 tỷ550</td>
                        <td>1</td>
                        <td>24/12/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2,550 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can9.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can9.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>10</td>
                        <td>Bán Căn Hộ Chung Cư Anh Tuấn Nhà Bè DT 63.0 m2, Giá 1.05</td>
                        <td>1</td>
                        <td>02/11/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>1,05 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can10.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can10.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>11</td>
                        <td>CHÍNH CHỦ BÁN CHCC Q7 SÀI GÒN RIVERSIDE HƯNG THỊNH 2 TỶ 550</td>
                        <td>1</td>
                        <td>31/10/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2,550 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can11.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can11.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>12</td>
                        <td>Bán Căn Hộ The Parkland (Đã Có Sổ), vị trí trung tâm Quận 12</td>
                        <td>1</td>
                        <td>22/09/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can12.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can12.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>13</td>
                        <td>Chính chủ bán nhanh trong tuần 1.75 tỷ LOVERA VISTA bao thuế</td>
                        <td>1</td>
                        <td>21/05/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can13.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can13.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>14</td>
                        <td>CĂN HỘ HYBRID NỘI THẤT ĐỨC, CTY NHẬT QLÝ, TỪ 42 triệu 30%</td>
                        <td>1</td>
                        <td>28/03/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can14.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can14.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>15</td>
                        <td>BÁN CĂN HỘ CHUNG CƯ CAO CẤP SKY 89 QUẬN 7, TPHCM</td>
                        <td>1</td>
                        <td>28/02/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can15.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can15.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
                      </tr><tr>
                        <td>16</td>
                        <td>Bán Căn Hộ Sunny plaza Quận Gò Vấp cách vòng xoay 300m</td>
                        <td>1</td>
                        <td>10/01/2022</td>
                        <td>2</td>
                        <td>2</td>
                        <td>2 tỷ</td>
                        <td>20 triệu</td>
                        <td>Chung cư an bình, dĩ an, bình dương</td>
                        <td>50m2</td>
                        <td>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng

                          Thiết kế tiện nghi, nội thất cao cấp sang trọng
                          
                          Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7
                          
                          Ở từ 2-4 người, cho nuôi thú cưng</td>
                          <td><a href="${pageContext.request.contextPath}/assets/user/images/50canho/can16.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can16.jpg" height="100" width="90" alt=""></a></td>
                        <td><a onclick="return confirm('Xóa căn hộ?')" href="#"><i class="fa-solid fa-trash"></i></a></td>
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