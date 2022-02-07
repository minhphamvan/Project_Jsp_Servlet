<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>E Store - eCommerce HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

<!-- Favicon -->
<link href="/Online_Store_Jsp_Servlet/client/static/img/favicon.ico"
	rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="/Online_Store_Jsp_Servlet/client/static/lib/slick/slick.css"
	rel="stylesheet">
<link
	href="/Online_Store_Jsp_Servlet/client/static/lib/slick/slick-theme.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/Online_Store_Jsp_Servlet/client/static/css/style.css"
	rel="stylesheet">
</head>

<body>
	<!-- Header -->
	<jsp:include page="/client/common/header.jsp"></jsp:include>

	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container-fluid">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="/Online_Store_Jsp_Servlet/">Trang chủ</a></li>
				<li class="breadcrumb-item"><a
					href="/Online_Store_Jsp_Servlet/user/my-account">Tài khoản</a></li>
				<li class="breadcrumb-item active">Tất cả đơn hàng</li>
			</ul>
		</div>
	</div>

	<!-- Tài khoản -->
	<div class="my-account">
		<div class="container-fluid">
			<div class="row">

				<jsp:include page="/user/common/sidebar.jsp"></jsp:include>

				<div class="col-md-9">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="dashboard-tab"
							role="tabpanel" aria-labelledby="dashboard-nav">
							<h4>Tất cả đơn hàng</h4>

							<div class="table-responsive">
								<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>Mã</th>
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
												<td>${bill.id}</td>
												<td>${bill.recipientName}</td>
												<td>${bill.recipientPhone}</td>
												<td>${bill.shippingAddress}</td>
												<td>${bill.note}</td>
												<td>${bill.orderDate}</td>
												<td>${bill.orderTotal}</td>
												<td>${bill.paymentMethod}</td>
												<td>${bill.status}</td>
												<td><a
													href="/Online_Store_Jsp_Servlet/user/bill/details?id=${bill.id}"><button
															class="btn">Xem</button></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>

					</div>

					<c:if test="${list.size() == 0}">
						<div class="tab-content">
							<a style="padding: 40px 0px 40px 250px"><img src="/Online_Store_Jsp_Servlet/client/static/img/arrow-left.svg">
								Đơn hàng trống. Quay lại mua hàng </a>
						</div>
					</c:if>
					
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="/client/common/footer.jsp"></jsp:include>

	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script
		src="/Online_Store_Jsp_Servlet/client/static/lib/easing/easing.min.js"></script>
	<script
		src="/Online_Store_Jsp_Servlet/client/static/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="/Online_Store_Jsp_Servlet/client/static/js/main.js"></script>
</body>

</html>