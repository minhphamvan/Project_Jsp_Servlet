<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Top bar Start -->
<div class="top-bar">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<i class="fa fa-envelope"></i> minhpham@gmail.com
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
					<a href="index.html" class="nav-item nav-link active">Trang chủ</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Tất cả sản phẩm</a>
						<div class="dropdown-menu">
							<a href="wishlist.html" class="dropdown-item">Wishlist</a> <a
								href="login.html" class="dropdown-item">Login & Register</a> <a
								href="contact.html" class="dropdown-item">Contact Us</a>
						</div>
					</div>
					<a href="checkout.html" class="nav-item nav-link">Sản phẩm yêu
						thích</a> <a href="cart.html" class="nav-item nav-link">Giỏ hàng</a> <a
						href="checkout.html" class="nav-item nav-link">Thanh toán</a> <a
						href="contact.html" class="nav-item nav-link">Liên hệ</a>
				</div>

				<div class="navbar-nav ml-auto">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Tài khoản</a>
						<div class="dropdown-menu">
							<a href="#" class="dropdown-item">Đăng nhập</a> <a href="#"
								class="dropdown-item">Đăng kí</a>
						</div>
					</div>
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
					<a href="index.html"> <img
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
					<a href="wishlist.html" class="btn wishlist"> <i
						class="fa fa-heart"></i> <span>(0)</span>
					</a> <a href="cart.html" class="btn cart"> <i
						class="fa fa-shopping-cart"></i> <span>(0)</span>
					</a>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- Bottom Bar End -->