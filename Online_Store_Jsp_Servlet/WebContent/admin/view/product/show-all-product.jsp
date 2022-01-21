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
						<p class="right__desc">Xem tất cả sản phẩm</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã</th>
											<th>Hình ảnh</th>
											<th>Tên sản phẩm</th>
											<th>Thuộc danh mục</th>
											<th>Giá sản phẩm</th>
											<th>Còn lại</th>
											<th>Mô tả</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>

										<c:forEach var="product" items="${listProduct}">
											<tr>
												<td data-label="Mã">${product.id}</td>
												<td data-label="Hình ảnh"><img
													src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
													alt=""></td>
												<td data-label="Tên sản phẩm">${product.name}</td>
												<td data-label="Thuộc danh mục">${product.category.name}</td>
												<td data-label="Giá sản phẩm">${product.price}</td>
												<td data-label="Còn lại">${product.amount}</td>
												<td data-label="Mô tả">${product.description}</td>

												<td data-label="Sửa" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/product/update?id=${product.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-edit.svg"
														alt=""></a></td>
												<td data-label="Xoá" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/product/delete?id=${product.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-trash-black.svg"
														alt=""></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

								<a href="/Online_Store_Jsp_Servlet/admin/product/add" class="right__tableMore"> Thêm
									sản phẩm<img
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