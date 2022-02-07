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

				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem tất cả đơn hàng</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã đơn</th>
											<th>Người đặt</th>
											<th>Người nhận</th>
											<th>Số điện thoại</th>
											<th>Địa chỉ</th>
											<th>Ghi chú</th>
											<th>Ngày đặt</th>
											<th>Tổng tiền</th>
											<th>Thanh toán</th>
											<th>Trạng thái</th>
											<th>Chi tiết</th>
										</tr>
									</thead>

									<tbody>

										<c:forEach var="bill" items="${list}">
											<tr>
												<td data-label="Mã đơn">${bill.id}</td>
												<td data-label="Người đặt">${bill.user.fullName}</td>
												<td data-label="Người nhận">${bill.recipientName}</td>
												<td data-label="Số điện thoại">${bill.recipientPhone}</td>
												<td data-label="Địa chỉ">${bill.shippingAddress}</td>
												<td data-label="Ghi chú">${bill.note}</td>
												<td data-label="Ngày đặt">${bill.orderDate}</td>
												<td data-label="Tổng tiền">${bill.orderTotal}</td>
												<td data-label="Thanh toán">${bill.paymentMethod}</td>
												<td data-label="Trạng thái">${bill.status}</td>

												<td data-label="Chi tiết" class="right__iconTable"><a
													href="/Online_Store_Jsp_Servlet/admin/bill/details?id=${bill.id}"><img
														src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-book.svg"
														alt=""></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

								<a class="right__tableMore"
									style="width: 600px; padding-top: 15px;"> Thêm đơn hàng<img
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