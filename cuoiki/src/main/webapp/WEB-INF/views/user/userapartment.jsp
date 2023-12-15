<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb"><a href="index.html">Trang chủ</a> / Căn hộ khác</span>
          <h3>Căn hộ khác</h3>
        </div>
      </div>
    </div>
  </div>
	<script>
		$(document).ready(function(){
			$('#keyword').keyup(function() {
				var keyword = $('#keyword').val();
				console.log(keyword);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						action: 'searchByKeyword',
						keyword : keyword
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
						
					}
					
				});
			});

			$('#district1').click(function () {
				var district = $(this).val();
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						district: district,
						action: 'searchByDistrict'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#district2').click(function () {
				var district = $(this).val();
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						district: district,
						action: 'searchByDistrict'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});


			$('#district3').click(function () {
				var district = $(this).val();
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						district: district,
						action: 'searchByDistrict'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#district4').click(function () {
				var district = $(this).val();
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						district: district,
						action: 'searchByDistrict'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});
			
			$('#district5').click(function () {
				var district = $(this).val();
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						district: district,
						action: 'searchByDistrict'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			// Lọc theo giá
			$('#price1').click(function () {
				var price = $(this).val();
				price = price.substring(4);
				price = price.substring(1,3);
				console.log(price);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						price: price,
						action: 'searchByPrice'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#price2').click(function () {
				var price = $(this).val();
				price = price.substring(4);
				price = price.substring(1,3);
				console.log(price);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						price: price,
						action: 'searchByPrice'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#price3').click(function () {
				var price = $(this).val();
				price = price.substring(4);
				price = price.substring(1,3);
				console.log(price);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						price: price,
						action: 'searchByPrice'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#price4').click(function () {
				var price = $(this).val();
				price = price.substring(4);
				price = price.substring(1,3);
				console.log(price);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						price: price,
						action: 'searchByPrice'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#price5').click(function () {
				var price = $(this).val();
				price = price.substring(4);
				price = price.substring(1,3);
				console.log(price);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						price: price,
						action: 'searchByPrice'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#priceOver5').click(function () {
				var price = $(this).val();
				price = price.substring(4);
				price = price.substring(1,3);
				console.log(price);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						price: price,
						action: 'searchByPriceOver5'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});
			
			// Lọc theo phòng ngủ
			$('#bedroom1').click(function () {
				var bedroom = $(this).val();
				bedroom = bedroom.substring(0,1);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						bedroom: bedroom,
						action: 'searchByBedroom'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#bedroom2').click(function () {
				var bedroom = $(this).val();
				bedroom = bedroom.substring(0,1);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						bedroom: bedroom,
						action: 'searchByBedroom'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});

			$('#bedroom3').click(function () {
				var bedroom = $(this).val();
				bedroom = bedroom.substring(0,1);
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						bedroom: bedroom,
						action: 'searchByBedroom'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});
			$('#rangeArea').click(function () {
				var area = $(this).val();
				console.log(area);		
				$.ajax({
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					url: '${pageContext.request.contextPath}/userapartment',
					data: {
						area: area,
						action: 'searchByArea'
					},
					success: function(posts) {
						var s = '';
						for(var i = 0;i < posts.length;i++) {
							var formattedDate = new Date(posts[i].postdate).toLocaleDateString('vi-VN');
							s += '<div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">';
							s += '<div class="item">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/'+ posts[i].avatar +'" alt=""></a>';
							s += '<a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id='+ posts[i].id +'"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>';
							s += '<h6>' + posts[i].price + ' tỷ VND</h6>';	
							s += '<h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id + '">' + posts[i].subject + '</a></h4>';
							s += '<ul>';
							s += '<li>Phòng ngủ: <span>'+ posts[i].bedroom +'</span></li>';
							s += '<li>Phòng tắm: <span>'+ posts[i].bathroom +'</span></li>';
							s += '<li>Diện tích: <span>'+ posts[i].area +' m2</span></li>';
							s += '<li>Ngày đăng: <span>'+ formattedDate +'</span></li>';
							s += '<li>Địa chỉ: <span>'+ posts[i].address +'</span></li>';
							s += '</ul>';
							s += '<div class="main-button">';
							s += '<a href="${pageContext.request.contextPath}/userapartmentdetails?id='+ posts[i].id +'">Chi tiết</a>';
							s += '</div>';
							s += '</div>';
							s += '</div>';			
						}
						if(posts.length == 0) {
							s += '<h2 style="display: flex;justify-content: center;margin-top: 120px;">Không tìm thấy căn hộ !</h2>';
						}
						$('#result').html(s);
					}
				});
			});
			
		});
		
	</script>
  <div class="section properties">
    <div class="container" id="toHeader" >
      <div class="input-group mb-3" style="width: 600px; margin: auto; margin-top: -60px;">
        <input type="text" class="form-control" id="keyword" placeholder="Nhập căn hộ mà bạn muốn tìm .." aria-label="Recipient's username" aria-describedby="button-addon2">
        <button class="btn btn-outline-secondary" type="button" id="button-addon2"><i class="fa-solid fa-magnifying-glass"></i></button>
      </div>
      <br> <br>
      <div style="display: flex; margin-left: 280px; margin-bottom: 20px;" >
        <div class="dropdown">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Vị trí
          </button>
          <ul class="dropdown-menu">
            <li><input type="button" class="dropdown-item" value="Quận 1" id="district1"></li>
            <li><input type="button" class="dropdown-item" value="Quận 2" id="district2"></li>
            <li><input type="button" class="dropdown-item" value="Quận 3" id="district3"></li>
            <li><input type="button" class="dropdown-item" value="Quận 4" id="district4"></li>
            <li><input type="button" class="dropdown-item" value="Quận 5" id="district5"></li>
          </ul>
        </div>
        <div class="dropdown" style="margin-left: 50px;">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Theo giá
          </button>
          <ul class="dropdown-menu">
            <li><input type="button" class="dropdown-item" value="Dưới 1 tỷ" id="price1"></li>
            <li><input type="button" class="dropdown-item" value="Dưới 2 tỷ" id="price2"></li>
            <li><input type="button" class="dropdown-item" value="Dưới 3 tỷ" id="price3"></li>
            <li><input type="button" class="dropdown-item" value="Dưới 4 tỷ" id="price4"></li>
            <li><input type="button" class="dropdown-item" value="Dưới 5 tỷ" id="price5"></li>
            <li><input type="button" class="dropdown-item" value="Trên 5 tỷ" id="priceOver5"></li>
          </ul>
        </div>
        <div class="dropdown" style="margin-left: 50px;">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Số phòng ngủ
          </button>
          <ul class="dropdown-menu">
            <li><input type="button" class="dropdown-item" value="1 phòng" id="bedroom1"></li>
            <li><input type="button" class="dropdown-item" value="2 phòng" id="bedroom2"></li>
            <li><input type="button" class="dropdown-item" value="3 phòng" id="bedroom3"></li>
          </ul>
        </div>
         <!-- <div class="dropdown" style="margin-left: 50px;">
          <button style="width: 160px;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Diện tích
          </button>
          <ul class="dropdown-menu">
            <li><input type="button" class="dropdown-item" value="Từ 25 m2 trở lên" id="area1"></li>
            <li><input type="button" class="dropdown-item" value="Từ 35 m2 trở lên" id="area2"></li>
            <li><input type="button" class="dropdown-item" value="Từ 45 m2 trở lên" id="area3"></li>
            <li><input type="button" class="dropdown-item" value="Từ 55 m2 trở lên" id="area4"></li>
            <li><input type="button" class="dropdown-item" value="Từ 65 m2 trở lên" id="area5"></li>
            <li><input type="button" class="dropdown-item" value="Từ 75 m2 trở lên" id="area6"></li>
            <li><input type="button" class="dropdown-item" value="Từ 100 m2 trở lên" id="area7"></li>
          </ul>
        </div> -->
       
       		<label for="customRange2" class="form-label text-secondary fs-5 mx-4" style="position: relative;top: -35px;left: 90px;">Diện tích</label>
			<input id="rangeArea" class="range" type="range" min="0" max="100" value="0" step="1" onmousemove="rangevalue1.value=value" style="width: 300px;margin-left:-10px;"/>
			<output id="rangevalue1" style="margin-top: 6px;margin-left: 2px "></output>
      </div>
      <div class="row properties-box" id="result">
      
        <c:forEach var="post" items="${posts }">
        	  <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">
                <div class="item">
                  <a href="${pageContext.request.contextPath}/userapartmentdetails?id=${post.id}"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/${post.avatar}" alt=""></a>
                  <a href="${pageContext.request.contextPath}/wishlist?action=wishlist&id=${post.id}"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>
                  
                  <h6>${post.price } tỷ VNĐ</h6>
                  <h4><a href="${pageContext.request.contextPath}/userapartmentdetails?id=${post.id}">${post.subject }</a></h4>
                  <ul>
                     <li>Phòng ngủ: <span>${post.bedroom}</span></li>
              <li>Phòng tắm: <span>${post.bathroom}</span></li>
              <li>Diện tích: <span>${post.area} m2</span></li>
              <li>Ngày đăng: <span>${post.postdate}</span></li>
              <li>Địa chỉ: <span>${post.address}</span></li>
                  </ul>
                  <div class="main-button">
                    <a href="${pageContext.request.contextPath}/userapartmentdetails?id=${post.id}">Chi tiết</a>
                  </div>
                </div>
          </div>
        </c:forEach>
         
          </div>
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