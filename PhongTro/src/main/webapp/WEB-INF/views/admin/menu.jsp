<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div >

	<c:choose>
		<c:when test="${user.vaitro==true}">
			<div class="accordion accordion-flush" id="accordionFlushExample"
				style="position: fixed; top: 50; left: 0; right: 0; height: 60px; width: 350px">
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
							aria-expanded="false" aria-controls="flush-collapseOne">
							<i class="bi bi-list-columns-reverse"></i> &nbsp; Thống kê
						</button>
					</h2>
					<div id="flush-collapseOne" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body mx-3">
							<a href="/admin/banchay">Danh sách phòng trọ</a>
							<hr>
							<a href="/admin/doanhthu">Số người truy cập</a>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
							aria-expanded="false" aria-controls="flush-collapseTwo">
							<i class="bi bi-house"></i> &nbsp;Bài đăng
						</button>
					</h2>
					<div id="flush-collapseTwo" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body mx-3">
							<a href="/admin/sanpham">Danh sách bài đăng</a>
							<hr>
							<a href="/admin/editsanpham">Thêm bài đăng</a>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse4"
							aria-expanded="false" aria-controls="flush-collapse4">
							<i class="bi bi-person-square"></i> &nbsp;Người dùng
						</button>
					</h2>
					<div id="flush-collapse4" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body mx-3">
							<a href="/admin/listnguoidung">Danh sách người dùng</a>
							<hr>
							<a href="/admin/themnguoidung">Thêm người dùng</a>
						</div>
					</div>
				</div>
				<div class="accordion-item" >
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse5"
							aria-expanded="false" aria-controls="flush-collapseTwo">
							<i class="bi bi-person-circle"></i> &nbsp;Tài khoản
						</button>
					</h2>
					<div id="flush-collapse5" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample" >
						<div class="accordion-body mx-3">
							<a href="/admin/doimatkhau">Đổi mật khẩu</a>
							<hr>
							<a href="/admin/edittaikhoan/${user.tendangnhap}">Chỉnh sửa thông tin</a>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:when test="${user.vaitro==false}">
			<div class="accordion accordion-flush" id="accordionFlushExample"
				style="position: fixed; top: 50; left: 0; right: 0; height: 60px; width: 350px;">
				<div class="accordion-item" >
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
							aria-expanded="false" aria-controls="flush-collapseTwo">
							<i class="bi bi-house"></i> &nbsp;Bài đăng
						</button>
					</h2>
					<div id="flush-collapseTwo" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample" >
						<div class="accordion-body mx-3">
							<a href="/admin/sanpham">Danh sách bài đăng</a>
							<hr>
							<a href="/admin/editsanpham">Thêm bài đăng</a>
						</div>
					</div>
				</div>
				<div class="accordion-item" >
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse3"
							aria-expanded="false" aria-controls="flush-collapseTwo">
							<i class="bi bi-person-circle"></i> &nbsp;Tài khoản
						</button>
					</h2>
					<div id="flush-collapse3" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample" >
						<div class="accordion-body mx-3">
							<a href="/admin/doimatkhau">Đổi mật khẩu</a>
							<hr>
							<a href="/admin/edittaikhoan/${user.tendangnhap}">Chỉnh sửa thông tin</a>
						</div>
					</div>
				</div>

			</div>
		</c:when>
		<c:otherwise>
			<h5>Chào bạn</h5>
		</c:otherwise>
	</c:choose>

</div>