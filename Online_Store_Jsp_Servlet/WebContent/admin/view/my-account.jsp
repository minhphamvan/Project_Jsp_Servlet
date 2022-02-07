<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
						<p class="right__desc">Thông tin quản trị</p>
						<div class="right__formWrapper">

							<form action="/Online_Store_Jsp_Servlet/admin/info" method="post"
								enctype="multipart/form-data">
								<div class="right__inputWrapper">
									<label for="title">Mã</label> <input type="text"
										placeholder="Mã" name="id" readonly="true"
										value="${sessionScope.currentUser.id}">
								</div>

								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label>
									<td data-label="Hình ảnh"><img
										src="/Online_Store_Jsp_Servlet/show-image?image=${sessionScope.currentUser.image}"
										alt=""></td> <input type="file" name="image" accept="image/*">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Tên tài khoản</label> <input type="text"
										placeholder="Tên tài khoản" name="username"
										value="${sessionScope.currentUser.username}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Họ tên</label> <input type="text"
										placeholder="Họ tên" name="full_name"
										value="${sessionScope.currentUser.fullName}">
								</div>


								<div class="right__inputWrapper">
									<label for="title">Email</label> <input type="text"
										placeholder="Email" name="email"
										value="${sessionScope.currentUser.email}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Số điện thoại</label> <input type="text"
										placeholder="Số điện thoại" name="phone_number"
										value="${sessionScope.currentUser.phoneNumber}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Địa chỉ</label> <input type="text"
										placeholder="Địa chỉ" name="address"
										value="${sessionScope.currentUser.address}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Đăng kí lúc</label> <input type="text"
										placeholder="Đăng kí lúc" name="register_on"
										value="${sessionScope.currentUser.registerOn}"
										readonly="readonly">
								</div>

								<button class="btn" type="submit">Cập nhật</button>
							</form>
						</div>

					</div>
				</div>


			</div>
		</div>
	</div>

	<script src="/Online_Store_Jsp_Servlet/admin/static/js/main.js"></script>
</body>

</html>