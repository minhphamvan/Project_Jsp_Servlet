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
						<p class="right__desc">Xem tất cả người dùng</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã</th>
											<th>Hình ảnh</th>
											<th>Họ tên</th>
											<th>Địa chỉ</th>
											<th>Email</th>
											<th>Số điện thoại</th>
											<th>Tên đăng nhập</th>
											<th>Mật khẩu</th>
											<th>Vai trò</th>
											<th>Chi tiết</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td data-label="Mã">1</td>
											<td data-label="Hình ảnh"><img src="/Online_Store_Jsp_Servlet/admin/static/images/avatar1.png"
												alt=""></td>
											<td data-label="Họ tên">Trần Tuấn Anh</td>
											<td data-label="Địa chỉ">Vĩnh Phúc</td>
											<td data-label="Email">trantuananh@gmail.com</td>
											<td data-label="Số điện thoại">0984.586.888</td>
											<td data-label="Tên đăng nhập">trantuananh</td>
											<td data-label="Mật khẩu">trantuananh</td>
											<td data-label="Vai trò">Người dùng</td>
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

								<a href="add-user.html" class="right__tableMore"> Thêm người
									dùng<img src="/Online_Store_Jsp_Servlet/admin/static/assets/arrow-right-black.svg" alt="">
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