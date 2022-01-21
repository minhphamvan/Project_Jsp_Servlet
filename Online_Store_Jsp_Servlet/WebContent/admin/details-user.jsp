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
						<p class="right__desc">Chi tiết người dùng</p>

						<div class="right__formWrapper">
							<form action="" method="post">
								<div class="right__inputWrapper">
									<label for="title">Mã</label> <input type="text"
										placeholder="Mã sản phẩm" value="1" readonly>
								</div>

								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label>
									<td data-label="Hình ảnh"><img src="/Online_Store_Jsp_Servlet/admin/static/images/avatar.png"
										alt=""></td> <input type="file">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Họ tên</label> <input type="text"
										placeholder="Họ tên" value="Trần Tuấn Anh">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Địa chỉ</label> <input type="text"
										placeholder="Địa chỉ" value="Vĩnh Phúc">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Email</label> <input type="text"
										placeholder="Email" value="trantuananh@gmail.com">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Số điện thoại</label> <input type="text"
										placeholder="Số điện thoại" value="0984.454.888">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Tên đăng nhập</label> <input type="text"
										placeholder="Tên đăng nhập" value="trantuananh">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Mật khẩu</label> <input type="text"
										placeholder="Mật khẩu" value="trantuananh">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Vai trò</label> <select id="select">
										<option value="User">Người dùng</option>
										<option value="Admin">Quản trị viên</option>
									</select>
								</div>

								<button class="btn" type="submit">Cập nhật</button>
							</form>
						</div>

						<a href="show-all-user.html" class="right__tableMore"> Xem tất
							cả người dùng<img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right-black.svg" alt="">
						</a>
					</div>
				</div>


			</div>
		</div>
	</div>

	<script src="/Online_Store_Jsp_Servlet/admin/static/js/main.js"></script>
</body>

</html>