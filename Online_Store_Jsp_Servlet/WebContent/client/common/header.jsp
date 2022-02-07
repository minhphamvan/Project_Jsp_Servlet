<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Top bar Start -->
<div class="top-bar">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<i class="fa fa-envelope"></i> minhphamvan1401@gmail.com
			</div>
			<div class="col-sm-6">
				<i class="fa fa-phone-alt"></i> 0981.576.005
			</div>
		</div>
	</div>
</div>
<!-- Top bar End -->

<!-- Nav Bar Start -->
<div class="nav">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-dark navbar-dark">
			<a href="#" class="navbar-brand">MENU</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav mr-auto">
					<a href="/Online_Store_Jsp_Servlet/index"
						class="nav-item nav-link active">Trang chủ</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Tất cả sản phẩm</a>
						<div class="dropdown-menu">
							<a href="/Online_Store_Jsp_Servlet/product/show-all"
								class="dropdown-item">Tất cả sản phẩm</a> <a
								href="/Online_Store_Jsp_Servlet/product/new"
								class="dropdown-item">Sản phẩm mới</a>
						</div>
					</div>
					<a href="/Online_Store_Jsp_Servlet/wish-list"
						class="nav-item nav-link">Wishlist</a> <a
						href="/Online_Store_Jsp_Servlet/cart" class="nav-item nav-link">Giỏ
						hàng</a> <a href="/Online_Store_Jsp_Servlet/user/check-out"
						class="nav-item nav-link">Thanh toán</a> <a
						href="/Online_Store_Jsp_Servlet/contact" class="nav-item nav-link">Liên
						hệ</a>
				</div>

				<div class="navbar-nav ml-auto">
					<c:choose>
						<c:when test="${sessionScope.currentUser == null}">
							<div class="nav-item dropdown">
								<a href="/Online_Store_Jsp_Servlet/login"
									class="nav-link dropdown-toggle" data-toggle="dropdown">Đăng
									nhập / Đăng ký</a>
								<div class="dropdown-menu">
									<a href="/Online_Store_Jsp_Servlet/login" class="dropdown-item">Đăng
										nhập</a> <a href="/Online_Store_Jsp_Servlet/register"
										class="dropdown-item">Đăng kí</a>
								</div>
							</div>
						</c:when>

						<c:otherwise>
							<c:if test="${sessionScope.currentUser.role == 'ROLE_USER'}">
								<div class="nav-item dropdown">
									<a href="/Online_Store_Jsp_Servlet/user/my-account"
										class="nav-link dropdown-toggle" data-toggle="dropdown">My
										account</a>
									<div class="dropdown-menu">
										<a href="/Online_Store_Jsp_Servlet/user/my-account"
											class="dropdown-item">Thông tin chi tiết</a> <a
											href="/Online_Store_Jsp_Servlet/user/bill/show-all"
											class="dropdown-item">Tất cả đơn hàng</a><a
											href="/Online_Store_Jsp_Servlet/user/change-password"
											class="dropdown-item">Đổi mật khẩu</a><a
											href="/Online_Store_Jsp_Servlet/logout" class="dropdown-item">Đăng
											xuất</a>
									</div>
								</div>
							</c:if>

							<c:if test="${sessionScope.currentUser.role == 'ROLE_ADMIN'}">
								<a href="/Online_Store_Jsp_Servlet/admin/dashboard"
									class="nav-item nav-link">Trang quản trị</a>
							</c:if>
						</c:otherwise>

					</c:choose>

				</div>
			</div>
		</nav>
	</div>
</div>
<!-- Nav Bar End -->

<!-- Bottom Bar Start -->
<div class="bottom-bar">
	<div class="container-fluid">
		<div class="row align-items-center">

			<div class="col-md-3">
				<div class="logo">
					<a href="/Online_Store_Jsp_Servlet/index"> <img
						src="/Online_Store_Jsp_Servlet/client/static/img/logo.png"
						alt="Logo">
					</a>
				</div>
			</div>

			<div class="col-md-6">
				<div class="search">
					<input type="text" placeholder="Tìm kiếm">
					<button>
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>

			<div class="col-md-3">
				<div class="user">
					<a href="/Online_Store_Jsp_Servlet/wish-list" class="btn wishlist">
						<i class="fa fa-heart"></i> <span>(0)</span>
					</a> <a href="/Online_Store_Jsp_Servlet/cart" class="btn cart"> <i
						class="fa fa-shopping-cart"></i> <c:choose>
							<c:when test="${sessionScope.cart == null}">
								<span>(0)</span>
							</c:when>
							<c:otherwise>
								<span>(${sessionScope.cart.size()})</span>
							</c:otherwise>
						</c:choose>
					</a>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- Bottom Bar End -->