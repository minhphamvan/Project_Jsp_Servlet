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
						<p class="right__desc">Thêm sản phẩm</p>

						<div class="right__formWrapper">

							<form action="/Online_Store_Jsp_Servlet/admin/product/add"
								method="post" enctype="multipart/form-data">

								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label>
									<td data-label="Hình ảnh"><input type="file" name="image" accept="image/*"></td>
								</div>

								<div class="right__inputWrapper">
									<label for="title">Tên sản phẩm</label> <input type="text"
										name="name" placeholder="Tên sản phẩm">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Thuộc danh mục</label> <select id="select"
										name="id_category">
										<c:forEach var="category" items="${listCategory}">
											<option value="${category.id}">${category.name}</option>
										</c:forEach>
									</select>
								</div>

								<div class="right__inputWrapper">
									<label for="title">Giá sản phẩm</label> <input type="text"
										name="price" placeholder="Giá sản phẩm">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Còn lại</label> <input type="text"
										name="amount" placeholder="Còn lại">
								</div>

								<div class="right__inputWrapper">
									<label for="title">Rating</label> <input type="text"
										name="rating" placeholder="Rating">
								</div>

								<div class="right__inputWrapper">
									<label for="desc">Mô tả</label>
									<textarea name="description" id="" cols="30" rows="10"
										placeholder="Mô tả"></textarea>
								</div>

								<button class="btn" type="submit">Thêm</button>

							</form>

						</div>

						<a href="/Online_Store_Jsp_Servlet/admin/product/show-all"
							class="right__tableMore"> Xem tất cả sản phẩm<img
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