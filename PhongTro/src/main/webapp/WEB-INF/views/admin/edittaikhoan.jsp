<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
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
<div class="container mt-5">
	<div class="">
		<div class="card-header mb-3">
			<h3 class="alert alert-info">Chỉnh sửa thông tin</h3>
			<div class="bg-success text-light px-3">${message}</div>
		</div>
		<div class="card-body col-5 m-auto">
			<form:form action="/admin/edittaikhoan" method="post"
				modelAttribute="item">
				<div class="form-floating mb-3">
					<form:input path="hoten" type="text" class="form-control"
						id="hoten" placeholder="Họ và tên" />
					<label for="hoten">Họ và tên</label>
				</div>
				<div class="form-floating mb-3">
					<form:input path="email" type="text" class="form-control"
						id="email" placeholder="Email" />
					<label for="email">Email</label>
				</div>
				<div class="form-floating mb-3">
					<form:input path="dienthoai" type="text" class="form-control"
						id="email" placeholder="Email"  />
					<label for="email">Số điện thoại</label>
				</div>
				
				<div class="form-floating mb-3" style="display: none;" >
					<form:input path="tendangnhap" type="text" class="form-control"
						id="tendn" placeholder="Tài khoản" />
					<label for="tendn">Tài khoản</label>
				</div>
				<div class="form-floating mb-3" style="display: none;" >
					<form:input path="matkhau" type="password" class="form-control"
						id="pass" placeholder="Password" />
					<label for="pass">Mật khẩu</label>
				</div>
				<hr class="my-4">
				<div class="d-grid">
					<button formaction="/admin/update/${user.tendangnhap}"
						class="btn btn-primary btn-login text-uppercase fw-bold"
						type="submit">Cập nhật</button>
				</div>
			</form:form>

		</div>
	</div>
</div>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>