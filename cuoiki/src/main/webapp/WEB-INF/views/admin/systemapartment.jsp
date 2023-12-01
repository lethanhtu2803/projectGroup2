<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">Quản lý căn hộ hệ thống</h1>
				</div>
				<!-- /.col -->

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<!-- Small boxes (Stat box) -->
			<div class="row d-flex justify-content-center">
				<div class="col-lg-2 col-6">
					<!-- small box -->
					<button class="btn btn-primary w-100" style="height: 50px;">Quận
						1</button>
				</div>
				<div class="col-lg-2 col-6">
					<!-- small box -->
					<button class="btn btn-primary w-100" style="height: 50px;">Quận
						2</button>
				</div>
				<div class="col-lg-2 col-6">
					<!-- small box -->
					<button class="btn btn-primary w-100" style="height: 50px;">Quận
						3</button>
				</div>
				<div class="col-lg-2 col-6">
					<!-- small box -->
					<button class="btn btn-primary w-100" style="height: 50px;">Quận
						4</button>
				</div>
				<div class="col-lg-2 col-6">
					<!-- small box -->
					<button class="btn btn-primary w-100" style="height: 50px;">Quận
						5</button>
				</div>

				<!-- ./col -->
			</div>
			<!-- /.row -->
			<div class="row d-flex justify-content-center mt-5">
				<div id="apartment" class="col-6" style="padding-left: 48px;">
					<script>
            var div = document.getElementById("apartment");
            var obj1 = {
                floor : 3,
                room : 2
            }
            var obj2 = {
                floor : 4,
                room : 5
            }
            var obj3 = {
                floor : 2,
                room : 4
            }
            var array = [];
            array.push(obj1);
            array.push(obj2);
            array.push(obj3);
            function checkStatus(floor, room){
                var status = true;
                for(var i = 0; i < array.length; i++){
                    if(array[i].floor == floor && array[i].room == room){
                        status = false;
                    }
            }
            return status;
            }
            for(var i = 0; i < 5; i++){
                for(var j = 0; j < 5; j++){
                  div.innerHTML += '<button class="btn btn-primary" style="width: 140px;height:100px;font-size: 24px;color:black ;background-color: ' + (checkStatus((i+1),(j+1)) == false ? 'red' : 'white') + ';"> ' + (i+1) + '0' + (j+1) + '</button>';
                }
                div.innerHTML += '<br>';
            
               
            }
        </script>

				</div>
				<div class="card card-primary col-4">
					<div class="card-header">
						<h3 class="card-title">Thông tin căn hộ của hệ thống</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">

						<strong style="font-size: 20px;"><i
							class="fa-solid fa-location-dot"></i> &nbsp;CHI NHÁNH QUẬN 1</strong>

						<p class="text-muted mt-3">123 Nguyễn Văn Cừ quận 1</p>

						<strong><i class="fa-solid fa-building"></i> &nbsp;Tổng
							số căn hộ</strong>

						<p class="text-muted">25 căn hộ</p>

						<hr>
						<strong><i class="fa-solid fa-house-circle-check"></i>
							&nbsp;Đã bán</strong>

						<p class="text-muted">3 căn hộ</p>

						<hr>

						<strong><i class="fa-solid fa-house"></i> &nbsp;Còn trống</strong>

						<p class="text-muted">22 căn hộ</p>

						<hr>

						<strong><i class="fa-solid fa-money-bill"></i> &nbsp;Giá</strong>

						<p class="text-muted">2,8 tỷ 1 căn</p>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
			</div>

		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>