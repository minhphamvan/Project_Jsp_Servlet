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
						<p class="right__desc">Xem tất cả sản phẩm</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã sản phẩm</th>
											<th>Hình ảnh</th>
											<th>Tên sản phẩm</th>
											<th>Giá sản phẩm</th>
											<th>Số lượng</th>
											<th>Thuộc danh mục</th>
											<th>Mô tả</th>
											<th>Chi tiết</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td data-label="Mã sản phẩm">1</td>
											<td data-label="Hình ảnh"><img src="/Online_Store_Jsp_Servlet/admin/static/images/avatar1.png"
												alt=""></td>
											<td data-label="Tên sản phẩm">HP 340G2</td>
											<td data-label="Giá sản phẩm">5.000.000</td>
											<td data-label="Số lượng còn lại">5</td>
											<td data-label="Thuộc danh mục">Laptop</td>
											<td data-label="Mô tả">Laptop HP 340G2</td>
											<td data-label="Chi tiết" class="right__iconTable"><a
												href="deatils-product.html"><img
													src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg" alt=""></a></td>
											<td data-label="Sửa" class="right__iconTable"><a
												href="details-product.html"><img
													src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-edit.svg" alt=""></a></td>
											<td data-label="Xoá" class="right__iconTable"><a
												href="#"><img src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-trash-black.svg" alt=""></a>
											</td>
										</tr>

									</tbody>
								</table>

								<a href="add-product.html" class="right__tableMore"> Thêm
									sản phẩm<img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right-black.svg" alt="">
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