<%@page import="com.demo.entities.Systemapartment"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.demo.models.SystemApartmentModel"%>
<%@page import="com.demo.models.BranchModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb"><a href="${pageContext.request.contextPath}/home">Trang chủ</a> / Căn hộ hệ thống</span>
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
      <%
      	BranchModel branchModel = new BranchModel();
      	SystemApartmentModel systemapartment = new SystemApartmentModel();
      %>
			<% for(Systemapartment system : systemapartment.findAll()){ %>
        	  <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6">
                <div class="item">
                  <a href="${pageContext.request.contextPath}/userapartmentdetails"><img src="${pageContext.request.contextPath}/assets/user/images/150canho/<%=system.getAvatar() %>" alt=""></a>
                  <a href="${pageContext.request.contextPath}/wishlist"><span class="category"><i class="fa-solid fa-heart-circle-plus" style="color:#f35525;font-size: 20px;"></i></span></a>
                  
                  <h6><%= system.getPrice() %> tỷ VNĐ</h6>
                  <h4><a href="${pageContext.request.contextPath}/userapartmentdetails"><%= system.getSubject() %></a></h4>
                  <ul>
                  <li>Số phòng: <span><%= system.getFloorid() %> 0 <%= system.getRoomid() %></span></li>
                     <li>Phòng ngủ: <span><%= system.getBedroom() %></span></li>
              <li>Phòng tắm: <span><%= system.getBathroom() %></span></li>
              <li>Diện tích: <span><%= system.getArea() %> m2</span></li>
              <li>Địa chỉ: <span><%= branchModel.findBranchByID(system.getBranchid()).getAddress() %></span></li>
                  </ul>
                  <div class="main-button">
                    <a href="${pageContext.request.contextPath}/userapartmentdetails">Chi tiết</a>
                  </div>
                </div>
          </div>
        	<% } %>
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
 