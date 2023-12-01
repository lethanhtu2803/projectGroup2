<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
  <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb"><a href="index.html">Trang chủ</a> / Căn hộ của hệ thống</span>
          <h3>Căn hộ của hệ thống</h3>
        </div>
      </div>
    </div>
  </div>

  <div class="single-property section">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="main-image">
          <a id="a_img" href="${pageContext.request.contextPath}/assets/user/images/banner-01.jpg">  <img class="img_proMain" src="${pageContext.request.contextPath}/assets/user/images/banner-01.jpg" alt=""></a>
            <br>
            <br>
            <div style="display: flex;">
              <img class="img_pro" src="${pageContext.request.contextPath}/assets/user/images/banner-01.jpg" alt=""> &nbsp;
              <img class="img_pro" src="${pageContext.request.contextPath}/assets/user/images/banner-02.jpg" alt=""> &nbsp;
              <img class="img_pro" src="${pageContext.request.contextPath}/assets/user/images/banner-03.jpg" alt="">
              <style>
                .img_pro {
                  cursor: pointer;
                }
              </style>
              <script>
                $(document).ready(function () {
                  $('.img_pro').click(function () {
                    var src = $(this).attr('src');
                    $('.img_proMain').attr('src', src);
                    $('#a_img').attr('href', src);
                  });
                });
              </script>
            </div>
          </div>
          <div class="main-content">
            <span class="category">Đã đăng 30 phút trước</span>
            <h4>Căn hộ 2 PN 1WC Chi nhánh Quận 1</h4>
            <h5 style="margin-bottom: -25px;">Giá: 2 tỷ</h5>
          </div>
          <div class="accordion" id="accordionExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingOne">
                <button disabled class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                  aria-expanded="true" aria-controls="collapseOne">
                  <h6>Chi tiết căn hộ</h6>
                </button>
              </h2>
              <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                  <div class="row">
                    <div class="col">
                      <ul>
                        <li>
                         <strong>Khu vực</strong>
                          <span>TP. Hồ Chí Minh</span>
                        </li>
                        <li>
                          <strong>
                            <i class="fa-solid fa-bed" style="color: #e57010;"></i>
                          </strong>
                          <span>2 Phòng ngủ</span>
                        </li>
                        <li>
                          <strong>
                            <i class="fa-solid fa-person" style="color: #e57010;"></i>
                          </strong>
                          <span>3-4 Người</span>
                        </li>
                        <li>
                          <strong>Đặt cọc</strong>
                          <span>100 triệu</span>
                        </li>
                      </ul>
                    </div>
                    <div class="col">
                      <ul>
                        <li>
                         <strong>Địa chỉ</strong>
                          <span>123, Nguyễn Văn Cừ, Quận 1</span>
                        </li>
                        <li>
                          <strong>
                            <i class="fa-solid fa-bath" style="color: #e57010;"></i>
                          </strong>
                          <span>2 Phòng tắm</span>
                        </li>
                        <li>
                          <strong>
                            <i class="fa-solid fa-arrows-up-down-left-right" style="color: #e57010;"></i>
                          </strong>
                          <span>65 m2</span>
                        </li>
                        <li>
                          <i class="fa-solid fa-square-parking" style="color: #e57010;"></i>
                          <span>Rộng rãi cho xe máy và cả xe hơi</span>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button disabled class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  <h6>Tiện nghi và Tiện ích</h6>
                </button>
              </h2>
              <div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                  <div class="row">
                    <div class="col">
                      <ul>
                        <li>
                         <strong>
                          <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                         </strong>
                          <span>Thang máy</span>
                        </li>
                        <li>
                          <strong>
                           <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                          </strong>
                           <span>Chỗ đậu xe</span>
                         </li>
                         <li>
                          <strong>
                           <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                          </strong>
                           <span>Hồ bơi</span>
                         </li>
                      </ul>
                    </div>
                    <div class="col">
                      <ul>
                        <li>
                         <strong>
                          <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                         </strong>
                          <span>Camera An Ninh</span>
                        </li>
                        <li>
                          <strong>
                           <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                          </strong>
                           <span>PCCC đạt tiêu chuẩn</span>
                         </li>
                         <li>
                          <strong>
                           <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                          </strong>
                           <span>Phòng gym</span>
                         </li>
                      </ul>
                    </div>
                    <div class="col">
                      <ul>
                        <li>
                         <strong>
                          <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                         </strong>
                          <span>Mặt tiền đường</span>
                        </li>
                        <li>
                          <strong>
                           <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                          </strong>
                           <span>Bảo vệ 24/7</span>
                         </li>
                         <li>
                          <strong>
                           <i class="fa-solid fa-circle-check" style="color: #e57010;"></i>
                          </strong>
                           <span>Siêu thị tiện lợi</span>
                         </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingThree">
                <button disabled class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  <h6>Ưu điểm căn hộ</h6>
                </button>
              </h2>
              <div id="collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingThree"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                  <div class="row">
                    <div class="col">
                      <ul>
                        <li>
                          <p style="font-size: 15px;color: #000;font-weight: bold;margin-bottom: 100px;">Đặc điểm nổi bật</p>
                        </li>
                      </ul>
                    </div>
                    <div class="col">
                      <ul>
                        <li>
                          <p>Kết cấu: 2 phòng ngủ,1 phòng tắm, 1 khu vực đa năng Thiết kế tiện nghi, nội thất cao cấp sang trọng Nội thất đầy đủ, Thang máy, hầm xe bảo vệ 24/7 Ở từ 2-4 người, cho nuôi thú cưng</p>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card bg-light d-flex flex-fill">
            <div style="text-align: center;" class="card-header text-muted border-bottom-0 bg-primary">
              <span style="color: white;">Bạn cần tư vấn thêm?</span>
              
            </div>
            <div class="card-body pt-0 mt-3">
              <div class="row">
                  <span>Để lại thông tin và chúng tôi sẽ liên hệ với bạn ngay.</span>
                  <br>
                  <div class="card-body">
                    <form method="post">
                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Họ và tên</label>
                            <input class="form-control" id="inputUsername" type="text" placeholder="Nhập họ và tên" required>
                        </div>
                        <div class="mb-3">
                          <label class="small mb-1" for="inputUsername">Số điện thoại</label>
                          <input class="form-control" id="inputUsername" pattern="(\(\+[0-9]{2}\)|0)([0-9]{9,10})"  type="text" placeholder="Nhập số điện thoại" required>
                      </div>
                    
                        <!-- Save changes button-->
                        <div style="display: flex; align-items: center; justify-content: center;">
                        <button  class="btn btn-primary" type="submit">Gửi thông tin</button>
                      </div>
                  
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
