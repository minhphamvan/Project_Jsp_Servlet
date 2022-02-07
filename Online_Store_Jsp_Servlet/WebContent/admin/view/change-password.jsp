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
						<p class="right__desc">Đổi mật khẩu</p>
						<div class="right__formWrapper">

							<form action="/Online_Store_Jsp_Servlet/admin/change-password"
								method="post" enctype="multipart/form-data">

								<div class="right__inputWrapper">
									<label for="title">Mật khẩu cũ</label> <input type="text"
										placeholder="Mật khẩu cũ" name="oldPassword">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Mật khẩu mới</label> <input type="text"
										placeholder="Mật khẩu mới" name="newPassword">
								</div>

								<button class="btn" type="submit">Đổi mật khẩu</button>
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