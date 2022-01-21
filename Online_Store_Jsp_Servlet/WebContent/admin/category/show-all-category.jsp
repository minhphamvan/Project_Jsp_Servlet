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

				<!-- Content -->
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem tất cả danh mục</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã danh mục</th>
											<th>Tên danh mục</th>
											<th>Chi tiết</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>

										<c:forEach var="category" items="${listCategory}">
											<tr>
												<td data-label="Mã danh mục">${category.id}</td>
												<td data-label="Tên danh mục">${category.name}</td>
												
												<td data-label="Chi tiết" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/category/update?id=${category.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg"
														alt=""></a></td>
												<td data-label="Sửa" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/category/update?id=${category.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-edit.svg"
														alt=""></a></td>
												<td data-label="Xoá" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/category/delete?id=${category.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-trash-black.svg"
														alt=""></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

								<a href="/Online_Store_Jsp_Servlet/admin/category/add"
									class="right__tableMore"> Thêm danh mục<img
									src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right-black.svg"
									alt="">
								</a>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>

	<script src="/Online_Store_Jsp_Servlet/admin/static/js/main.js"></script>
</body>

</html>