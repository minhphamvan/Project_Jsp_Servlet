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

				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem tất cả đơn hàng</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã đơn hàng</th>

											<th>Tên khách hàng</th>
											<th>Thời gian nhận</th>
											<th>Ghi chú</th>

											<th>Ngày đặt</th>
											<th>Tổng tiền</th>
											<th>Thanh toán</th>
											<th>Trạng thái</th>

											<th>Chi tiết</th>

										</tr>
									</thead>

									<tbody>
										<tr>
											<td data-label="Mã đơn hàng"></td>
											<td data-label="Tên khách hàng"></td>
											<td data-label="Thời gian nhận"></td>
											<td data-label="Ghi chú"></td>
											<td data-label="Ngày đặt"></td>
											<td data-label="Tổng tiền"></td>
											<td data-label="Phương thức thanh toán"></td>
											<td data-label="Trạng thái"></td>

											<td data-label="Chi tiết" class="right__iconTable"><a><img
													src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg"
													alt=""></a></td>

										</tr>

									</tbody>
								</table>

								<a class="right__tableMore"
									style="width: 550px; padding-top: 15px;"> Thêm đơn hàng<img
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