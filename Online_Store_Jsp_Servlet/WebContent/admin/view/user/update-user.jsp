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
						<p class="right__desc">Chi tiết người dùng</p>
						<div class="right__formWrapper">

							<form action="/Online_Store_Jsp_Servlet/admin/user/update"
								method="post" enctype="multipart/form-data">
								<div class="right__inputWrapper">
									<label for="title">Mã</label> <input type="text"
										placeholder="Mã" name="id" readonly="true" value="${user.id}">
								</div>

								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label>
									<td data-label="Hình ảnh"><img
										src="/Online_Store_Jsp_Servlet/show-image?image=${user.image}"
										alt=""></td> <input type="file" name="image" accept="image/*">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Tên tài khoản</label> <input type="text"
										placeholder="Tên tài khoản" name="username"
										value="${user.username}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Mật khẩu</label> <input type="text"
										placeholder="Mật khẩu" name="password"
										value="${user.password}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Họ tên</label> <input type="text"
										placeholder="Họ tên" name="full_name" value="${user.fullName}">
								</div>


								<div class="right__inputWrapper">
									<label for="title">Email</label> <input type="text"
										placeholder="Email" name="email" value="${user.email}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Số điện thoại</label> <input type="text"
										placeholder="Số điện thoại" name="phone_number"
										value="${user.phoneNumber}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Địa chỉ</label> <input type="text"
										placeholder="Địa chỉ" name="address" value="${user.address}">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Vai trò</label> <select id="select"
										name="role">
										<option value="ROLE_USER">Khách hàng</option>
										<option value="ROLE_ADMIN">Quản trị viên</option>
									</select>
								</div>

								<div class="right__inputWrapper">
									<label for="title">Đăng kí lúc</label> <input type="text"
										placeholder="Đăng kí lúc" name="register_on"
										value="${user.registerOn}" readonly="readonly">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Active</label> <select id="active"
										name="active">
<%-- 										<c:if test="${user.active == true}">
											<option value="true">Active</option>
										</c:if>
										<c:if test="${user.active == false}">
											<option value="false">Block</option>
										</c:if> --%>
									</select>
								</div>

								<button class="btn" type="submit">Cập nhật</button>
							</form>
						</div>

						<a href="/Online_Store_Jsp_Servlet/admin/user/show-all"
							class="right__tableMore"> Xem tất cả người dùng<img
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