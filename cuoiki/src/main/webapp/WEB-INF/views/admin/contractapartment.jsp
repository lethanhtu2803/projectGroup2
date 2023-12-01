<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
  <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Danh sách hợp đồng</h1>
            </div>
            
          </div>
        </div><!-- /.container-fluid -->
      </section>
  
      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
             
              <!-- /.card -->
  
              <div class="card">
                
                <!-- /.card-header -->
                <div class="card-body">
                  <table style="text-align: center;" id="example1" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                      <th style="vertical-align: top;">Mã hợp đồng</th>
                      <th style="vertical-align: top;">Mã căn hộ</th>
                      <th style="vertical-align: top;">Ngày tạo hợp đồng</th>
                      <th style="vertical-align: top;">Mã chủ sở hữu</th>
                      <th style="vertical-align: top;">Trạng thái
                        <br>
                        <select id="inputStatus" class="form-control custom-select">
                          <option disabled selected>Loại hợp đồng</option>
                          <option>Tất cả</option>
                          <option>Còn hiệu lực</option>
                          <option>Hết hiệu lực</option>
                          
                        </select>
                      </th>
                      
                      <th>&nbsp;</th>
                      <th style="vertical-align: top;">Hành động</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>1</td>
                      <td>3</td>
                      <td>28/10/2023</td>
                      <td>1</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>8</td>
                      <td>28/10/2023</td>
                      <td>5</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>10</td>
                      <td>28/10/2023</td>
                      <td>2</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td>15</td>
                      <td>28/10/2023</td>
                      <td>11</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td>1</td>
                      <td>28/10/2023</td>
                      <td>10</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>6</td>
                      <td>2</td>
                      <td>28/10/2023</td>
                      <td>20</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>7</td>
                      <td>5</td>
                      <td>28/10/2023</td>
                      <td>1</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>8</td>
                      <td>4</td>
                      <td>28/10/2023</td>
                      <td>9</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>9</td>
                      <td>19</td>
                      <td>28/10/2023</td>
                      <td>15</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>10</td>
                      <td>20</td>
                      <td>28/10/2023</td>
                      <td>14</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>11</td>
                      <td>30</td>
                      <td>28/10/2023</td>
                      <td>12</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>12</td>
                      <td>25</td>
                      <td>28/10/2023</td>
                      <td>17</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>13</td>
                      <td>13</td>
                      <td>28/10/2023</td>
                      <td>13</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>14</td>
                      <td>11</td>
                      <td>28/10/2023</td>
                      <td>6</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>15</td>
                      <td>22</td>
                      <td>28/10/2023</td>
                      <td>14</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                    <tr>
                      <td>16</td>
                      <td>23</td>
                      <td>28/10/2023</td>
                      <td>10</td>
                      <td>Có hiệu lực</td>
                      <td><a href="${pageContext.request.contextPath}/admin/contractdetails">Xem chi tiết</a></td>
                      <td><a onclick="return confirm('Sửa hợp đồng?')" href="${pageContext.request.contextPath}/admin/editcontract"><i class="fa-solid fa-file-pen"></i></a> &nbsp;  <a onclick="return confirm('Vô hiệu hóa?')" href="#"><i class="fa-solid fa-xmark"></i></a></td>
                    </tr>
                   
                    </tfoot>
                  </table>
                </div>
                <!-- /.card-body -->
              </div>
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