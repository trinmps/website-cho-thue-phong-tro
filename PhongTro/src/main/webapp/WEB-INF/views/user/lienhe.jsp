<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container mt-5 p-5">
	<div class="row col-10 m-auto">
		<div class="col-6">
			<div class="rounded-5 border border-1 p-3">
				<h4 class="text-center">Thông tin liên hệ</h4>
				<div class="ml-40">
				<p class="sm-head"><span class="fa fa-location-arrow"></span>FPT Polytechnic:</p>
				<p>VJ3G+GC8, Đ. Số 3, Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Vietnam</p>
				<p class="sm-head"><span class="fa fa-phone"></span>Số điện thoại:</p><p>0347681735</p>
				<p class="sm-head"><span class="fa fa-envelope"></span>Email:</p>
				<p>tri0981482069@gmail.com</p>
			</div>   
			</div>
			
		</div>
		<div class="col-6">
			<form id="contactForm" data-sb-form-api-token="API_TOKEN">

            <!-- Name Input -->
            <div class="form-floating mb-3">
              <input class="form-control" id="name" type="text" placeholder="Name" data-sb-validations="required" />
              <label for="name">Họ & Tên</label>
              <div class="invalid-feedback" data-sb-feedback="name:required">Name is required.</div>
            </div>

            <!-- Email Input -->
            <div class="form-floating mb-3">
              <input class="form-control" id="emailAddress" type="email" placeholder="Email Address" data-sb-validations="required,email" />
              <label for="emailAddress">Email</label>
              <div class="invalid-feedback" data-sb-feedback="emailAddress:required">Email Address is required.</div>
              <div class="invalid-feedback" data-sb-feedback="emailAddress:email">Email Address Email is not valid.</div>
            </div>

            <!-- Message Input -->
            <div class="form-floating mb-3">
              <textarea class="form-control" id="message" type="text" placeholder="Message" style="height: 10rem;" data-sb-validations="required"></textarea>
              <label for="message">Nội dung</label>
              <div class="invalid-feedback" data-sb-feedback="message:required">Message is required.</div>
            </div>

            <!-- Submit success message -->
            <div class="d-none" id="submitSuccessMessage">
              <div class="text-center mb-3">
                <div class="fw-bolder">Form submission successful!</div>
                <p>To activate this form, sign up at</p>
                <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
              </div>
            </div>

            <!-- Submit error message -->
            <div class="d-none" id="submitErrorMessage">
              <div class="text-center text-danger mb-3">Error sending message!</div>
            </div>

            <!-- Submit button -->
            <div class="d-grid">
              <button class="btn btn-primary btn-lg" id="submitButton" type="submit">Gửi</button>
            </div>
          </form>
          <!-- End of contact form -->
		</div>
		<div class="my-2" >
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d749.9473725619936!2d106.62563751088088!3d10.85439580632001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752a20dfeb0315%3A0x68199c1e17631ce1!2sHelios%20Building!5e0!3m2!1sen!2s!4v1689864121993!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
	</div>
</div>
