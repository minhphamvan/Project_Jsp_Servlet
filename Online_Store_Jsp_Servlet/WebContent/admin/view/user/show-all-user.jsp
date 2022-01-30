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
						<p class="right__desc">Xem tất cả người dùng</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã</th>
											<th>Hình ảnh</th>
											<th>Tên đăng nhập</th>
											<th>Mật khẩu</th>
											<th>Họ tên</th>
											<th>Email</th>
											<th>Số điện thoại</th>
											<th>Địa chỉ</th>
											<th>Vai trò</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>

										<c:forEach var="user" items="${listUser}">
											<tr>
												<td data-label="Mã">${user.id}</td>
												<td data-label="Hình ảnh"><img
													src="/Online_Store_Jsp_Servlet/show-image?image=${user.image}"
													alt=""></td>
												<td data-label="Tên đăng nhập">${user.username}</td>
												<td data-label="Mật khẩu">${user.password}</td>
												<td data-label="Họ và tên">${user.fullName}</td>
												<td data-label="Email">${user.email}</td>
												<td data-label="Số điện thoại">${user.phoneNumber}</td>
												<td data-label="Địa chỉ">${user.address}</td>
												<td data-label="Vai trò">${user.role}</td>
												<td data-label="Active">${user.active}</td>
												<td data-label="Đăng kí lúc">${user.registerOn}</td>

												<td data-label="Chi tiết" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/user/details?id=${user.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg"
														alt=""></a></td>

												<td data-label="Xoá" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/user/delete?id=${user.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-trash-black.svg"
														alt=""></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

								<a href="add-user.html" class="right__tableMore"> Thêm người
									dùng<img
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