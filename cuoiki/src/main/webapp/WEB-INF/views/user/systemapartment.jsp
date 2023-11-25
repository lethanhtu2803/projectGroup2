<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb"><a href="index.html">Trang chủ</a> / Căn hộ hệ thống</span>
          <h3>Căn hộ hệ thống</h3>
        </div>
      </div>
    </div>
  </div>

  <div class="section properties">
    <div class="container" id="toHeader" >
      <div class="input-group mb-3" style="width: 600px; margin: auto; margin-top: -60px;">
        <input type="text" class="form-control" placeholder="Nhập căn hộ mà bạn muốn tìm .." aria-label="Recipient's username" aria-describedby="button-addon2">
        <button class="btn btn-outline-secondary" type="button" id="button-addon2"><i class="fa-solid fa-magnifying-glass"></i></button>
      </div>
      <br> <br>
      <div style="display: flex; margin-left: 250px; margin-bottom: 20px;" >
        <div class="dropdown">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Vị trí
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Quận 1</a></li>
            <li><a class="dropdown-item" href="#">Quận 2</a></li>
            <li><a class="dropdown-item" href="#">Quận 3</a></li>
            <li><a class="dropdown-item" href="#">Quận 4</a></li>
            <li><a class="dropdown-item" href="#">Quận 5</a></li>
          </ul>
        </div>
        <div class="dropdown" style="margin-left: 50px;">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Theo giá
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Dưới 1 tỉ</a></li>
            <li><a class="dropdown-item" href="#">Dưới 2 tỉ</a></li>
            <li><a class="dropdown-item" href="#">Dưới 3 tỉ</a></li>
            <li><a class="dropdown-item" href="#">Dưới 4 tỉ</a></li>
            <li><a class="dropdown-item" href="#">Dưới 5 tỉ</a></li>
            <li><a class="dropdown-item" href="#">Trên 5 tỉ</a></li>
          </ul>
        </div>
        <div class="dropdown" style="margin-left: 50px;">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Số phòng ngủ
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">1 phòng</a></li>
            <li><a class="dropdown-item" href="#">2 phòng</a></li>
            <li><a class="dropdown-item" href="#">3 phòng</a></li>
          </ul>
        </div>
        <div class="dropdown" style="margin-left: 50px;">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Số phòng vệ sinh
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">1 phòng</a></li>
            <li><a class="dropdown-item" href="#">2 phòng</a></li>
            <li><a class="dropdown-item" href="#">3 phòng</a></li>
          </ul>
        </div>
  
       
      </div>
      <div id="div" class="row properties-box">

      </div>
      <script>
          var div = document.getElementById('div');
          function address(i){
            var quan = '';
              if(i == 1){
                quan = '123 Nguyễn Văn Cừ Quận 1 TP Hồ Chí Minh'
              } else if(i == 2){
                quan = '45 Đào Trinh Nhất Quận 2 TP Hồ Chí Minh'
              } else if(i == 3){
                quan = '31 Võ Văn Tần Quận 3 TP Hồ Chí Minh'
              } else if(i == 4){
                quan = '76 Hoàng Diệu Quận 4 TP Hồ Chí Minh'
              } else if(i == 5){
                quan = '44 Võ Văn Ngân Quận 5 TP Hồ Chí Minh'
              } 
              return quan;
          }
          console.log(address(2));
          for(var i = 0; i < 5; i++){
            for(var j = 0; j < 5; j++){
              for(var k = 0; k < 5; k++){
                var price = Math.floor(Math.random() * 5) + 1;
                var img = Math.floor(Math.random() * 40) + 1;
                var deposit = Math.floor(Math.random() * 20) + 10;
                var bedroom = Math.floor(Math.random() * 3) + 1;
                var arr = [1,2];
                var bathroom = arr[Math.floor(Math.random() * 2)];
                console.log(bathroom);
                 div.innerHTML += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6"><div class="item"><a href="systemapartment-details.html"><img src="${pageContext.request.contextPath}/assets/user/images/50canho/can' + img + '.jpg" alt=""></a><span class="category">Căn hộ hệ thống</span><h6>' + price + ' tỷ VNĐ</h6><h4><a href="systemapartment-details.html">Căn hộ <span>' + bedroom +'</span> PN <span>' + bathroom + '</span>WC Chi nhánh Quận ' + (i+1) +'</a></h4><ul><li>Địa chỉ: <span>'+ address(i+1)  + '</span></li><li>Tầng <span>' + (j+1) +'</span></li><li>Phòng  <span>' + (k+1) +'</span></li><li>Diện tích <span>30m2</span></li><li>Đặt cọc <span>' + deposit +'tr</span></li></ul><div class="main-button"><a href="systemapartment-details.html">Chi tiết</a></div></div></div>';
              }
            }
          }
      </script>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <ul class="pagination">
              <!-- <li><a class="is_active" href="#">1</a></li>
              <li><a  href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">>></a></li> -->
            </ul>
          </div>
        </div>
    </div>
  </div>
 