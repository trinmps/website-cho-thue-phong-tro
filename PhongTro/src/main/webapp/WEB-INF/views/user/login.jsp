<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		  <div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			  <div class="card border-2 shadow rounded-3 my-5">
				<div class="card-body p-4 p-sm-5">
				  <h5 class="card-title text-center mb-5 fw-info fs-5">Đăng nhập</h5>
				  <form action="/user/login" method="post" >
					<div class="form-floating mb-3">
					  <input name="username" type="text" class="form-control" id="floatingInput" placeholder="Tài khoản">
					  <label for="floatingInput">Tài khoản</label>
					</div>
					<div class="form-floating mb-3">
					  <input name="password"  type="password" class="form-control" id="floatingPassword" placeholder="Password">
					  <label for="floatingPassword">Mật khẩu</label>
					</div>
	  
					<div class="form-check mb-3">
					  <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
					  <label class="form-check-label" for="rememberPasswordCheck">
						Remember password
					  </label>
					</div>
					<hr class="my-4">
					<div class="d-grid">
					  <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Đăng nhập</button>
					</div>	
					<h5 class="text-center mt-3" style="color: red;" >${message}</h5>			
            </form>
            <div class="text-center mt-3" ><a class="" href="/user/register" style="font-size: 15px;"> Đăng ký tài khoản</a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>