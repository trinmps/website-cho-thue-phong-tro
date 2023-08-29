<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
      header.sticky {
        box-shadow: 0.4rem 0.4rem 0.45rem rgba(0, 0, 30, 0.3);
        background-color: white;
      }
    </style>
    <div class="container-fluid">
      <div class="row">
        <header class="navbar navbar-expand-lg sticky-top"
          style="position:fixed;top:0;left:0;right:0;  height: 60px; background-color: white;">
          <div class="container-fluid">
            <a class="navbar-brand " style="width: 12%;" href="/user/trangchu"><img style="width: 100%;"
                src="/assets/image/logo.png" alt=""></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
              aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item mx-2 m-auto">
                  <a href="/user/trangchu" style="text-decoration: none;">
                    <i class="bi bi-house"></i>Trang chủ
                  </a>
                </li>
                <li class="nav-item mx-2 m-auto">
                  <c:choose>
                    <c:when test="${user.vaitro==true}">

                    </c:when>
                    <c:when test="${user.vaitro==false}">
                      <h5>Chào ${user.hoten}</h5>
                    </c:when>
                    <c:otherwise>
                      <h5>Chào bạn</h5>
                    </c:otherwise>
                  </c:choose>
                </li>
              </ul>
            </div>
            <li class="nav-item dropdown d-block">
              <a class="nav-link dropdown-toggle " href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Tài khoản
              </a>
              <ul class="dropdown-menu dropdown-menu-dark dropdown-menu-end">
                <li><a class="dropdown-item" href="/user/register">Đăng ký</a></li>
                <li><a class="dropdown-item" href="/user/login">Đăng nhập</a></li>
                <li><a class="dropdown-item">Quên mật khẩu</a></li>
                <li><a class="dropdown-item" href="/user/logout">Đăng xuất</a></li>
              </ul>
            </li>
          </div>
        </header>
      </div>
    </div>
    <script>
      $(document).ready(function () {
        $(window).scroll(function () {
          if ($(this).scrollTop()) {
            $('header').addClass('sticky');
          } else {
            $('header').removeClass('sticky');
          }
        })
      });
    </script>