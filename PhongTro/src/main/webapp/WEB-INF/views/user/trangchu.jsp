<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<style>
			.list-links>li {
				position: relative;
				display: flex;
				align-items: center;
				padding-left: 20px;
				border-bottom: 1px dashed #eee;
			}

			.list-links>li>h2 {
				margin: 0;
				padding: 0;
				display: inline-flex;
				width: 100%;
			}

			.list-links>li:last-of-type {
				border-bottom: 0;
			}

			.list-links.price>li,
			.list-links.acreage>li {
				width: 50%;
				float: left;
			}

			.list-links>li:before {
				display: inline-block;
				content: "";
				width: 14px;
				height: 14px;
				background: url(../images/chevron-right.svg) center no-repeat;
				background-size: contain;
				position: absolute;
				left: 0;
				opacity: 0.3;
			}

			.list-links>li a {
				text-decoration: none;
				padding: 5px 0;
				display: inline-flex;
				align-items: center;
				color: #333;
				width: 100%;
				line-height: 1.4;
				font-size: 1rem;
				font-weight: normal;
			}

			.list-links>li .count {
				color: #aaa;
				margin-left: 5px;
				float: right;
				font-size: 0.9rem;
			}

			.list-links>li.sub {
				margin-left: 15px;
			}

			.list-links>li a:hover {
				color: #f60;
			}
		</style>

		<div class="">
			<div class="row col-10 m-auto my-2 ">
				<div class="col-12">
					<div class="mx-3" style="position: absolute; top: 80px;">
						<h3 style="color: #f71d1d; font-size: 30pt; text-shadow: 5px 2px 4px grey; font-weight: bold;">
							Phòng
							trọ khu vực Quận 12</h3>
						<a style="color: #27eb00; font-size: 15pt; text-shadow: 5px 2px 4px grey; font-weight: bold;">Website
							đăng tin cho thuê phòng trọ giá rẻ hợp lý cho sinh viên</a>
					</div>
					<img alt="" src="../assets/image/nen2.png" style="height: 400px; width: 100%">
				</div>
			</div>
			<div class="col-10 m-auto">
				<form action="/user/timkiem" method="post">
					<div class="row col-10 m-auto bg-warning rounded-2 " style="height: 50px">
						<div class="col-3 mt-2">
							<select name="phuong" class="form-select" aria-label="Default select example">
								<option selected>Khu vực</option>
								<option value="An Phú Đông">Phường An Phú Đông</option>
								<option value="Hiệp Thành">Phường Hiệp Thành</option>
								<option value="Tân Hưng Thuận">Phường Tân Hưng Thuận</option>
								<option value="Tân Chánh Hiệp">Phường Tân Chánh Hiệp</option>
								<option value="Tân Thới Hiệp">Phường Tân Thới Hiệp</option>
								<option value="Tân Thới Nhất">Phường Tân Thới Nhất</option>
								<option value="Thạnh Lộc">Phường Thạnh Lộc</option>
								<option value="Thạnh Xuân">Phường Thạnh Xuân</option>
								<option value="Thới An">Phường Thới An</option>
								<option value="Trung Mỹ Tây">Phường Trung Mỹ Tây</option>
								<option value="Đông Hưng Thuận">Phường Đông Hưng Thuận</option>
							</select>
						</div>
						<div class="col-3 mt-2">
							<select name="gia" class="form-select" aria-label="Default select example">
								<option selected>Giá</option>
								<option value="0 1000000">Dưới 1 triệu</option>
								<option value="1000000 2000000">Từ 1 - 2 triệu</option>
								<option value="2000000 3000000">Từ 2 - 3 triệu</option>
								<option value="2">Từ 3 - 5 triệu</option>
								<option value="2">Từ 5 - 7 triệu</option>
								<option value="2">Trên 7 triệu</option>
							</select>
						</div>
						<div class="col-3 mt-2">
							<select name="dientich" class="form-select" aria-label="Default select example">
								<option selected>Diện tích</option>
								<option value="0 15">Dưới 15m vuông</option>
								<option value="15 25">Từ 15m - 25m vuông</option>
								<option value="25 35">Từ 25m - 35m vuông</option>
								<option value="2">Từ 35m - 45m vuông</option>
								<option value="2">Trên 45m vuông</option>
							</select>
						</div>
						<div class="col-3 mt-2">
							<button type="submit" class="btn btn-primary w-100">
								<i class="bi bi-search"></i> Tìm kiếm
							</button>
						</div>
					</div>
				</form>
			</div>

			<div class="row col-10 m-auto my-2 ">
				<div class="col-8 border rounded-4 p-4 " style="height: auto;">
					<h6>
						Sắp xếp theo: <a href="#"
							style="text-decoration: none; --bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"
							class="btn btn-primary">Mặc định</a> <a href="#"
							style="text-decoration: none; --bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"
							class="btn btn-primary">Tin mới đăng</a>
					</h6>
					<div class="m-2">
						<c:forEach var="item" items="${items}">
							<div class="card my-2 border border-1">
								<div class="row">
									<div class="col-3">
										<img src="../assets/image/${item.hinh}" class="card-img" style="height: 180px;">
									</div>
									<div class="col-9 mt-2">
										<h5 class="card-title">
											<a href="/phongtro/chitiet/${item.idbaidang}"
												style="color: rgb(43, 174, 255); text-decoration: none;">${item.tieude}</a>
										</h5>
										<p>
											Giá: <a
												style="color: rgb(247, 0, 0); font-size: 17px; font-family: Tahoma">${item.gia}
												đồng/tháng</a>
										</p>
										<p>
											Diện tích: <a style="font-size: 15px; font-family: Tahoma">${item.dientich}m
												<sup>2</sup>
											</a> &nbsp;
										</p>
										<p>
											Địa chỉ: <a style="font-size: 15px; font-family: Tahoma">Quận
												12, Hồ Chí Minh </a> &nbsp;
										</p>
										<p>
											<%-- <p class="card-text mt-2">${item.mota}
										</p> --%>
										<p class="card-text" style="position: absolute; bottom: 10px;">
											Người đăng: ${item.account.hoten} &nbsp; Ngày đăng: ${item.ngaydang}</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-4">
					<div class=" border rounded-4 p-4 ">
						<section class="section section-sublink">
							<div class="section-header text-center">
								<h5 class="section-title">Xem theo khu vực</h5>
							</div>
							<hr>
							<ul class="list-links price clearfix">
								<li><a href="/user/phuong?ph=An Phú Đông">An Phú Đông</a></li>
								<li><a href="/user/phuong?ph=Hiệp Thành">Hiệp Thành</a></li>
								<li><a href="/user/phuong?ph=Tân Hưng Thuận">Tân Hưng Thuận</a></li>
								<li><a href="/user/phuong?ph=Tân Chánh Hiệp">Tân Chánh Hiệp</a></li>
								<li><a href="/user/phuong?ph=Tân Thới Hiệp">Tân Thới Hiệp</a></li>
								<li><a href="/user/phuong?ph=Tân Thới Nhất">Tân Thới Nhất</a></li>
								<li><a href="/user/phuong?ph=Thạnh Lộc">Thạnh Lộc</a></li>
								<li><a href="/user/phuong?ph=Thạnh Xuân">Thạnh Xuân</a></li>
								<li><a href="/user/phuong?ph=Thới An">Thới An</a></li>
								<li><a href="/user/phuong?ph=Trung Mỹ Tây">Trung Mỹ Tây</a></li>
								<li><a href="/user/phuong?ph=Đông Hưng Thuận">Đông Hưng Thuận</a></li>

							</ul>
						</section>
					</div>
					<br>
					<div class=" border rounded-4 p-4 ">
						<section class="section section-sublink">
							<div class="section-header text-center">
								<h5 class="section-title">Xem theo giá</h5>
							</div>
							<hr>
							<ul class="list-links price clearfix">
								<li><a href="/user/gia?max=1000000">Dưới 1 triệu</a></li>
								<li><a href="/user/gia?min=1000000&max=2000000">Từ 1 -
										2 triệu</a></li>
								<li><a href="/user/gia?min=2000000&max=3000000">Từ 2 -
										3 triệu</a></li>
								<li><a href="/user/gia?min=3000000&max=5000000">Từ 3 -
										5 triệu</a></li>
								<li><a href="/user/gia?min=5000000&max=7000000">Từ 5 -
										7 triệu</a></li>
								<li><a href="/user/gia?min=7000000">Trên 7 triệu</a></li>
							</ul>
						</section>
					</div>
					<br>
					<div class=" border rounded-4 p-4 ">
						<section class="section section-sublink">
							<div class="section-header text-center">
								<h5 class="section-title">Xem theo diện tích</h5>
							</div>
							<hr>
							<ul class="list-links price clearfix">
								<li><a href="/user/dientich?max=15">Dưới 15m<sup>2</sup></a></li>
								<li><a href="/user/dientich?min=15&max=25">Từ
										15 - 25m<sup>2</sup>
									</a></li>
								<li><a href="/user/dientich?min=25&max=35">Từ
										25 - 35m<sup>2</sup>
									</a></li>
								<li><a href="/user/dientich?min=35&max=45">Từ
										35 - 45m<sup>2</sup>
									</a></li>
								<li><a href="/user/dientich?min=45">Trên 45m<sup>2</sup>
									</a></li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>