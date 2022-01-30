<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard - Quản lý cửa hàng</title>
<link rel="stylesheet"
	href="/Online_Store_Jsp_Servlet/admin/static/css/main.css">
</head>

<body>
	<div class="wrapper">
		<div class="container">
			<div class="dashboard">

				<!-- Sidebar -->
				<jsp:include page="/admin/common/sidebar.jsp"></jsp:include>

				<!-- Content-->
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Thêm người dùng</p>
						<div class="right__formWrapper">
							
							<form action="/Online_Store_Jsp_Servlet/admin/user/add" method="post" enctype="multipart/form-data">
								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label> <input type="file"
										name="image" accept="image/*">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Tên tài khoản</label> <input type="text"
										placeholder="Tên tài khoản" name="username">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Mật khẩu</label> <input type="text"
										placeholder="Mật khẩu" name="password">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Họ tên</label> <input type="text"
										placeholder="Họ tên" name="full_name">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Email</label> <input type="text"
										placeholder="Email" name="email">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Số điện thoại</label> <input type="text"
										placeholder="Số điện thoại" name="phone_number">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Địa chỉ</label> <input type="text"
										placeholder="Địa chỉ" name="address">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Vai trò</label> <select id="select" name="role">
										<option value="ROLE_USER">Khách hàng</option>
										<option value="ROLE_ADMIN">Quản trị viên</option>
									</select>
								</div>

								<button class="btn" type="submit">Thêm</button>
							</form>
						</div>

						<a href="/Online_Store_Jsp_Servlet/admin/user/show-all" class="right__tableMore"> Xem tất
							cả người dùng<img
							src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right-black.svg"
							alt="">
						</a>
					</div>
				</div>


			</div>
		</div>
	</div>

	<script src="/Online_Store_Jsp_Servlet/admin/static/js/main.js"></script>
</body>

</html>