<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container mt-5">
			<div class="">
				<div class="card-header mb-3">
					<h3 class="alert alert-info">
						Danh sách phòng trọ
					</h3>
					<h4> ${message} </h4>
					<table class="table text-center">
						<thead>
							<tr>
								<th style="font-weight: bolder; font-size: 18px">ID Bài Đăng</th>
								<th style="font-weight: bolder; font-size: 18px">Tiêu Đề</th>
								<th style="font-weight: bolder; font-size: 18px">Số Nhà</th>
								<th style="font-weight: bolder; font-size: 18px">Phường,Quận</th>
								<th style="font-weight: bolder; font-size: 18px">Mô tả</th>
								<th style="font-weight: bolder; font-size: 18px">Diện tích</th>
								<th style="font-weight: bolder; font-size: 18px">Giá</th>
								<th style="font-weight: bolder; font-size: 18px">Ngày Đăng</th>
								<th style="font-weight: bolder; font-size: 18px"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${page.content}">
								<tr>
									<td>${item.idbaidang}</td>
									<td>${item.tieude}</td>
									<td>${item.sonha}</td>
									<td>${item.phuong}</td>
									<td>${item.mota}</td>
									<td>${item.dientich}</td>
									<td>${item.gia}</td>
									<td>${item.ngaydang}</td>
									<td>
										<a href="/sanpham/delete/${item.idbaidang}" style="font-size: 14px"
											class="mt-3 btn btn-danger btn-xs"> <span
												class="glyphicon glyphicon-remove"></span> Delete
										</a>
										<%-- <a href="/admin/sanpham/edit/${item.idbaidang}"
									style="font-size: 14px" class=" mt-3 btn btn-primary btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Edit
								</a> --%>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr />
					<div class="text-center">
						<a href="/admin/sanpham?p=0" class="btn btn-primary">First</a> <a
							href="/admin/sanpham?p=${page.number-1}" class="btn btn-primary">Previous</a>
						<a href="/admin/sanpham?p=${page.number+1}" class="btn btn-primary">Next</a>
						<a href="/admin/sanpham?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
					</div>
					<hr />
				</div>
			</div>
		</div>