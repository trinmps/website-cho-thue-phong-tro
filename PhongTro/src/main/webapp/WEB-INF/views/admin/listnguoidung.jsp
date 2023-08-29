<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="page-wrapper py-2">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Danh sách người dùng
				</h3>
				<h4> ${message} </h4>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">Tên Đăng Nhập</th>
							<th style="font-weight: bolder; font-size: 18px">Mật Khẩu</th>
							<th style="font-weight: bolder; font-size: 18px">Họ Tên</th>
							<th style="font-weight: bolder; font-size: 18px">Điện Thoại</th>
							<th style="font-weight: bolder; font-size: 18px">Email</th>
							<th style="font-weight: bolder; font-size: 18px">Vai Trò</th>
							
                           
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
							<td>${item.tendangnhap}</td>
							<td>${item.matkhau}</td>
							<td>${item.hoten}</td>
							<td>${item.dienthoai}</td>
							<td>${item.email}</td>
							<td>${item.vaitro}</td>
							
								<td>
									
									<a href="/listnguoidung/delete/${item.tendangnhap}"
									style="font-size: 14px" class="btn btn-danger btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<h4> ${message} </h4>
				<hr />
				<div class="text-center">
					<a href="/admin/listnguoidung?p=0" class="btn btn-primary">First</a> <a
						href="/admin/listnguoidung?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/listnguoidung?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/admin/listnguoidung?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
</div>