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

				<!-- Content -->
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Thêm danh mục</p>

						<div class="right__formWrapper">
							<form action="/Online_Store_Jsp_Servlet/admin/category/add" method="post">

								<div class="right__inputWrapper">
									<label for="title">Tên danh mục</label> <input type="text"
										placeholder="Tên danh mục" name="name">
								</div>

								<button class="btn" type="submit">Thêm</button>
							</form>
						</div>

						<a href="/Online_Store_Jsp_Servlet/admin/category/show-all"
							class="right__tableMore"> Xem tất cả danh mục<img
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