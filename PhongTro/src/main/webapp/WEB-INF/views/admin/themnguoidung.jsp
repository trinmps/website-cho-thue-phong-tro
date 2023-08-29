<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<style>
*[id$=errors]{
		color:red;
		font-style: italic;
	}
.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem;
}

.btn-google {
  color: white !important;
  background-color: #ea4335;
}

.btn-facebook {
  color: white !important;
  background-color: #3b5998;
}
  </style>
		<div class="container ">
		  <div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			  <div class="card border-0 shadow rounded-3 my-5">
				<div class="card-body p-4 p-sm-5">
				  <h5 class="card-title text-center mb-5 fw-light fs-5">Thêm Người Dùng</h5>
				  <form:form action="/admin/themnguoidung" method="post" modelAttribute="item">
					<div class="form-floating mb-3">
					  <form:input path="hoten" type="text" class="form-control" id="hoten" placeholder="Họ và tên"/>
					  <form:errors path="hoten"/>
					  <label for="hoten">Họ và tên</label>
					</div>
					<div class="form-floating mb-3">
					  <form:input path="email" type="text" class="form-control" id="email" placeholder="Email"/>
					  <form:errors path="email"/>
					  <label for="email">Email</label>
					</div>
					<div class="form-floating mb-3">
					  <form:input path="dienthoai" type="text" class="form-control" id="email" placeholder="Email"/>
					  <form:errors path="dienthoai"/>
					  <label for="email">Số điện thoại</label>
					</div>
					<div class="form-floating mb-3">
					  <form:input path="tendangnhap" type="text" class="form-control" id="tendn" placeholder="Tài khoản"/>
					  <form:errors path="tendangnhap"/>
					  <label for="tendn">Tài khoản</label>
					</div>
					<div class="form-floating mb-3">
					  <form:input path="matkhau"  type="password" class="form-control" id="pass" placeholder="Password"/>
					  <form:errors path="matkhau"/>
					  <label for="pass">Mật khẩu</label>
					</div>
					Role:
					<div class="form-floating mb-3">
						 
					<form:radiobuttons   path="vaitro"
						items="${admins}" delimiter="" />
					</div>
					<hr class="my-4">
					<div class="d-grid">
					  <form:button formaction="/admin/create" class="btn btn-primary btn-login text-uppercase fw-bold" type="submit"  data-bs-toggle="modal" data-bs-target="#exampleModal">Create</form:button>
					</div>	
					<h5 class="text-center mt-3" style="color: red;" >${message}</h5>	
            </form:form>
          </div>
        </div>
      </div>
    </div>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>