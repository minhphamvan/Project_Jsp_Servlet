<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard - Quản lý cửa hàng</title>
<link rel="stylesheet" href="/Online_Store_Jsp_Servlet/admin/static/css/main.css">
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
						<p class="right__desc">Quản lý</p>

						<div class="right__cards">
							<a class="right__card" href="show-all-category.html">
								<div class="right__cardTitle">Danh mục</div>
								<div class="right__cardNumber">12</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right.svg" alt="">
								</div>
							</a> <a class="right__card" href="show-all-product.html">
								<div class="right__cardTitle">Sản phẩm</div>
								<div class="right__cardNumber">27</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right.svg" alt="">
								</div>
							</a> <a class="right__card" href="show-all-bill.html">
								<div class="right__cardTitle">Đơn hàng</div>
								<div class="right__cardNumber">348</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right.svg" alt="">
								</div>
							</a> <a class="right__card" href="show-all-user.html">
								<div class="right__cardTitle">Người dùng</div>
								<div class="right__cardNumber">5845</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right.svg" alt="">
								</div>
							</a>
						</div>

						<div class="right__table">
							<p class="right__tableTitle">Thông tin quản trị</p>
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>Họ tên</th>
											<th>Tên đăng nhập</th>
											<th>Email</th>
											<th>Trạng Thái</th>
											<th>Chi tiết</th>
											<th>Sửa</th>
											<th>Xóa</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td data-label="STT">1</td>
											<td data-label="Họ tên">Trần Anh Quân</td>
											<td data-label="Tên đăng nhập">trananhquan</td>
											<td data-label="Email">trananhquan@ptit.edu.vn</td>
											<td data-label="Trạng Thái">Offline</td>
											<td data-label="Chi tiết" class="right__iconTable"><a
												href="details-user.html"><img src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg"
													alt=""></a></td>
											<td data-label="Sửa" class="right__iconTable"><a
												href="details-user.html"><img src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-edit.svg"
													alt=""></a></td>
											<td data-label="Xoá" class="right__iconTable"><a
												href="#"><img src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-trash-black.svg" alt=""></a>
											</td>
										</tr>

									</tbody>
								</table>
							</div>

							<a href="add-user.html" class="right__tableMore"> Thêm quản
								trị viên<img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right-black.svg" alt="">
							</a>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script src="/Online_Store_Jsp_Servlet/admin/static/js/main.js"></script>
</body>

</html>