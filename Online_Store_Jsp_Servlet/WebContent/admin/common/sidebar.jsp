<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="left">
	<span class="left__icon"> <span></span> <span></span> <span></span>
	</span>

	<div class="left__content">
		<div class="left__logo">
			<a>QUẢN LÝ CỬA HÀNG</a>
		</div>
		<div class="left__profile">
			<div class="left__image">
				<a href="/Online_Store_Jsp_Servlet/admin/info"><img
					src="/Online_Store_Jsp_Servlet/show-image?image=${sessionScope.currentUser.image}"></a>
			</div>

			<a href="/Online_Store_Jsp_Servlet/admin/info">
				<p class="left__name">${sessionScope.currentUser.fullName}</p>
			</a>
		</div>

		<ul class="left__menu">
			<li class="left__menuItem"><a class="left__title"
				href="/Online_Store_Jsp_Servlet/admin/dashboard"><img
					src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-dashboard.svg"
					alt="">Trang quản trị</a></li>

			<li class="left__menuItem">
				<div class="left__title">
					<img
						src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-settings.svg"
						alt="">My Account<img class="left__iconDown"
						src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-down.svg"
						alt="">
				</div>
				<div class="left__text">
					<a class="left__link" href="/Online_Store_Jsp_Servlet/admin/info">Thông
						tin chi tiết</a> <a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/change-password">Đổi mật
						khẩu</a>
				</div>
			</li>

			<li class="left__menuItem">
				<div class="left__title">
					<img
						src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-edit.svg"
						alt="">Danh mục<img class="left__iconDown"
						src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-down.svg"
						alt="">
				</div>
				<div class="left__text">
					<a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/category/add">Thêm danh
						mục</a> <a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/category/show-all">Xem
						tất cả</a>
				</div>
			</li>

			<li class="left__menuItem">
				<div class="left__title">
					<img
						src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-pencil.svg"
						alt="">Sản phẩm<img class="left__iconDown"
						src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-down.svg"
						alt="">
				</div>
				<div class="left__text">
					<a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/product/add">Thêm sản
						phẩm</a> <a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/product/show-all">Xem
						tất cả</a>
				</div>
			</li>

			<li class="left__menuItem">
				<div class="left__title">
					<img
						src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-users.svg"
						alt="">Người dùng<img class="left__iconDown"
						src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-down.svg"
						alt="">
				</div>
				<div class="left__text">
					<a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/user/add">Thêm người
						dùng</a> <a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/user/show-all">Xem tất
						cả</a>
				</div>
			</li>

			<li class="left__menuItem">
				<div class="left__title">
					<img
						src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg"
						alt="">Đơn hàng<img class="left__iconDown"
						src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-down.svg"
						alt="">
				</div>
				<div class="left__text">
					<a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/bill/add">Thêm đơn hàng</a>
					<a class="left__link"
						href="/Online_Store_Jsp_Servlet/admin/bill/show-all">Xem tất
						cả</a>
				</div>
			</li>

			<li class="left__menuItem"><a class="left__title"
				href="/Online_Store_Jsp_Servlet/index"><img
					src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-tag.svg"
					alt="">Quay lại trang chủ</a></li>

			<li class="left__menuItem"><a class="left__title"
				href="/Online_Store_Jsp_Servlet/logout"><img
					src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-logout.svg"
					alt="">Đăng Xuất</a></li>
		</ul>
	</div>
</div>
