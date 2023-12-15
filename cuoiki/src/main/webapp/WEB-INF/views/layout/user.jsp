<%@page import="com.demo.entities.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

  <title>$Apartment</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/fontawesome.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/templatemo-villa-agency.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/owl.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/animate.css">
  <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

  <script src="${pageContext.request.contextPath}/assets/user/vendor/jquery/jquery.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
        dateFormat: 'dd/mm/yy'
    });
  } );
  </script>
<!--

TemplateMo 591 villa agency

https://templatemo.com/tm-591-villa-agency

-->
</head>


<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <div class="sub-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-8">
          <ul class="info">
            <li><i class="fa fa-envelope"></i> apart@gmail.com</li>
            <li><i class="fa fa-map"></i> 35/6 Đường D5, Phường 25 + ${sessionScope.accountdetails.name!=null ? sessionScope.accountdetails.name : "Chào bạn mới, vui lòng cập nhật tài khoản" }</li>
          </ul>
        </div>
        <div class="col-lg-4 col-md-4">
          <ul class="social-links">
            <li><a href="https://www.facebook.com/profile.php?id=61553268513632" target="_blank"><i class="fab fa-facebook"></i></a></li>
            <li><a href="https://x.com/minthu" target="_blank"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="${pageContext.request.contextPath }/home" class="logo">
                        <h1>$Apartment</h1>
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <%
                    	HttpSession session1 = request.getSession();
                    	List<Post> posts = (List<Post>) session1.getAttribute("posts");
                    	
                    %>
                    <ul class="nav">
                      <li><a href="${pageContext.request.contextPath }/home" class="${activeHome }">Trang Chủ</a></li>
                      <li><a href="${pageContext.request.contextPath }/userapartment" class="${activeUser }">Căn hộ khác</a></li>
                      <li><a href="${pageContext.request.contextPath }/systemapartment" class="${activeSystem }">Căn hộ hệ thống</a></li>
                      <li><a href="${pageContext.request.contextPath }/contact" class="${activeContact }">Liên hệ</a></li>
                      <li><a style="border: 2px solid #f35525; border-radius: 20px;" href="${pageContext.request.contextPath }/wishlist"><i class="fa-solid fa-heart" style="color:#f35525 ;">
                      </i><span id="total_item" style="position: relative;left: 5px;top: -10px;color: #f35525;"><%= posts != null ? posts.size() : 0 %></span></a></li>
                      <li><a style="border-radius: 20px;  background-color: #f35525; color: black;" href="${pageContext.request.contextPath }/postapartment"><i class="fa fa-pen"></i> Đăng tin</a></li>
                      <li><a href="${pageContext.request.contextPath }/account"><i class="fa fa-user"></i>Tài khoản</a></li>
                  </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->
		<jsp:include page="${p}"></jsp:include>
  <footer>
    <div class="container">
      <div style="margin-left: 250px;" class="col-lg-8">
        <p>Hệ thống cung cấp căn hộ cao cấp và kí gửi căn hộ của bạn
        
        <a rel="nofollow" href="${pageContext.request.contextPath }/home" target="_blank">$Apartment</a></p>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/user/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/user/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/user/js/isotope.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/user/js/owl-carousel.js"></script>
  <script src="${pageContext.request.contextPath}/assets/user/js/counter.js"></script>
  <script src="${pageContext.request.contextPath}/assets/user/js/custom.js"></script>
  <script src="${pageContext.request.contextPath}/assets/user/js/pagination.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

  </body>
</html>