<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
			<style>
				div.stars {
					width: 270px;
					display: inline-block;
				}

				input.star {
					display: none;
				}

				label.star {
					float: right;
					padding: 10px;
					font-size: 36px;
					color: #444;
					transition: all .2s;
				}

				input.star:checked~label.star:before {
					content: '\f005';
					color: #FD4;
					transition: all .25s;
				}

				input.star-5:checked~label.star:before {
					color: #FE7;
					text-shadow: 0 0 20px #952;
				}

				input.star-1:checked~label.star:before {
					color: #F62;
				}

				label.star:hover {
					transform: rotate(-15deg) scale(1.3);
				}

				label.star:before {
					content: '\f006';
					font-family: FontAwesome;
				}
			</style>
			<div class="container mt-5 p-5">
				<div class="row">
					<div class="col-8">
						<div>
							<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
								<div class="carousel-inner w-100 m-auto">
									<div class="carousel-item active">
										<img src="/assets/image/${item.hinh}" class="d-block w-100" alt="..."
											style="height: 500px;">
									</div>
									<div class="carousel-item">
										<img src="/assets/image/${item.hinh}" class="d-block w-100" alt="..."
											style="height: 500px;">
									</div>
									<div class="carousel-item">
										<img src="/assets/image/${item.hinh}" class="d-block w-100" alt="..."
											style="height: 500px;">
									</div>
								</div>
								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleControls" data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleControls" data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>
						</div>
						<div class="row mt-3 m-auto" var="item" items="items">
							<div class="col-12">
								<div class="border border-2" style="border-radius: 10px; padding: 20px;">
									<h3 style="color: red; text-transform: uppercase;">${item.tieude}</h3>
									<b> <i class="bi bi-geo-alt-fill"></i> Địa Chỉ: </b>${item.sonha}, Quận 12,
									TPHCM<br>
									<b><i class="bi bi-clock"></i> Ngày đăng: </b>${item.ngaydang}<br>
									<hr>
									<b><i class="bi bi-arrows-fullscreen"></i> Diện tích:</b> ${item.dientich}
									m<sup>2</sup>
									<br>
									<b><i class="bi bi-cash"></i> Giá: </b> ${item.gia} đ
									<hr>
									<b>Chi tiết phòng:</b><br>
									${item.mota}
									<hr>
									<h3>Địa điểm</h3>
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4485279193673!2d106.62302097481916!3d10.853449957768749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752a212db7db83%3A0x93a9aec338be00f9!2zNDAxYSBUw7QgS8O9LCBLaHUgcGjhu5EgMiwgUXXhuq1uIDEyLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1690035955272!5m2!1sen!2s"
										width="99%" height="300px" style="border:0;" allowfullscreen="" loading="lazy"
										referrerpolicy="no-referrer-when-downgrade">
									</iframe>
									<hr>
									<h3>Nhập bình luận</h3>
									<div class=" m-auto" style="clear:both;">
										<div class="card-body">
											<form:form action="/phongtro/danhgia" method="post" modelAttribute="cmt">
												<div class="form-floating">
													<form:textarea path="noidung" id="" cols="88%" rows="5"
														style="border-radius: 10px;" />
													<form:hidden path="account.tendangnhap"
														value="${user.tendangnhap}" />

													<form:hidden path="baidang.idbaidang" value="${item.idbaidang}" />

												</div><br>
												<div class="m-auto text-center">
													<form:button formaction="/phongtro/danhgia/${item.idbaidang}"
														class="btn btn-primary fw-bold" type="submit"
														data-bs-toggle="modal" data-bs-target="#exampleModal">Gửi
													</form:button>
												</div>
												<h5 class="text-center mt-3" style="color: red;">${message}</h5>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="">
							<div class="border border-2" style="border-radius: 10px;padding-bottom: 20px;">
								<br>
								<h3 class="text-center" style="color: rgb(0, 149, 213);">Thông tin liên hệ</h3>
								<b style="padding-left: 20px;"> Tên Liên Hệ:</b>${item.account.hoten}<br>
								<b style="padding-left: 20px;"> Số Điện Thoại:</b> ${item.account.dienthoai}<br>
								<b style="padding-left: 20px;"> Email:</b> ${item.account.email}<br>
							</div>
							<div class="border border-2 mt-2" style="border-radius: 10px; padding-bottom: 20px;">
								<br>
								<h3 class="text-center" style="color: rgb(0, 149, 213);">Bình luận</h3>
								<div class="">
									<c:forEach var="cmts" items="${listcmt}">
										<div class="row my-2" style="padding-left: 20px;">
											<div class="col-1 m-auto" style="text-align: right;">
												<h6 style="font-size: 25px; "><i class="bi bi-person-circle"></i></h6>
											</div>
											<div class="col-11" style="padding-left: 20px; padding-right: 20px;">
												<i class="h6"> ${cmts.account.hoten }</i>
												<p>${cmts.noidung}</p>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			</div>