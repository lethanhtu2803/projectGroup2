<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb"><a href="index.html">Trang chủ</a> / Chi tiết căn hộ</span>
          <h3>Chi tiết căn hộ</h3>
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
            <h4>CĂN HỘ ESSENSIA SKY - MẶT TIỀN NGUYỄN HỮU THỌ - CÁCH QUẬN 1 CHỈ 8KM</h4>
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
              <span style="color: white;">THÔNG TIN CHỦ SỞ HỮU</span>
              
            </div>
            <div class="card-body pt-0 mt-3">
              <div class="row">
                <div class="col-7">
                  <h2 class="lead mb-3" style="font-weight: bold;"><b>Lê Thanh Tú</b></h2>
                  <p class="text-muted text-sm">Số điện thoại: 0948502190 </p>
                  <p class="text-muted text-sm">Email: letu36592@gmail.com </p>
                  <p class="text-muted text-sm">Địa chỉ: 123, Nguyễn Văn Cừ</p>
                  
                </div>
                <div class="col-5 text-center">
                  <img style="border-radius: 50%; width: 150px; height: 150px;" src="${pageContext.request.contextPath}/assets/user/images/thanhtu.jpg" alt="user-avatar" class="img-circle img-fluid">
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="text-right d-flex justify-content-center">
                <a href="mailto:apart@gmail.com" class="btn btn-sm btn-primary w-25 mx-4">
                  <i class="fa-solid fa-envelope"></i>
                </a>
                <a href="#" class="btn btn-sm btn-primary w-25">
                  <i class="fa-solid fa-phone"></i> 
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
