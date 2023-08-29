<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  
<div class="container mt-5">
		<div>
			<div class="card-header mb-3">
				<h3 class="alert alert-info">Thêm phòng trọ</h3>
				<h4> ${message}</h4>
				<form:form  method="post" action="/admin/sanpham" modelAttribute="item">
		  <div class="mb-3">
		  <h3 for="exampleInputEmail1" class="form-label">Tên Đăng Nhập</h3>
		  
		  <form:input  path="account" id="account" type="text" value="${user.tendangnhap}" class="form-control" ></form:input>
		   
		  </div>
			  <div class="mb-3">
				  <h3 for="exampleInputEmail1" class="form-label">Địa chỉ và Hình Ảnh</h3>
				  <form:input path="sonha" id="sonha" type="text"  class="form-control" placeholder="Số Nhà "></form:input>
					  
					  
			  </div>
				  <div class="mb-3">
			  <form:input path="phuong" id="phuong"  class="form-control" placeholder="Phường"></form:input>
				  
				  </div>
			  
			  
			  <div class="mb-3">
				  <h3 for="exampleInputEmail1" class="form-label">Diện tích và Giá
					  Thuê</h3>
				  <div class="input-group">
					<form:input path="dientich"  id="dientich" type="text" class="form-control" placeholder="Diện tích"></form:input>
					<span class="input-group-text">m²</span>
		
				  </div>
			  </div>
			  <div class="mb-3">
				  <div class="input-group">
					<form:input path="gia" id="gia" type="text" class="form-control" placeholder="Giá Thuê"></form:input>
					<span class="input-group-text">đ</span>
		
				  </div>
			  </div>
			  <div class="mb-3">
				  <div class="input-group">
					<form:input path="ngaydang" id="ngaydang" disabled="true" type="text" class="form-control" placeholder="Giá Thuê"></form:input>
					
		
				  </div>
				  
			  </div>
			  <div class="mb-3">
				  <div class="input-group">
					<form:input path="hinh" id="hinh"  type="file" class="form-control" placeholder="Hình Ảnh"></form:input>
					
		
				  </div>
				  
			  </div>
			  
			  
			  <div class="mb-3">
				  <h3 for="exampleInputEmail1" class="form-label">Tiêu đề đăng tin
					  và Mô tả chi tiết</h3>
				  <form:input  path="tieude" id="tieude" class="form-control" placeholder="Tiêu đề đăng tin "
					  ></form:input>
			  </div>
			  <div class="mb-3">
				  <form:textarea path="mota" id="mota"  rows="12" cols="150" placeholder="Mô tả thông tin chi tiết"></form:textarea>
			  </div>
			  
			  <div class="d-grid gap-2 col-6 mx-auto">
			<button class="btn btn-warning" type="submit" formaction="/sanpham/create" >Đăng Tin</button>
		   
	  </div>
		  </form:form>
			</div>
		</div>
		
		
		  
	  </div>  
