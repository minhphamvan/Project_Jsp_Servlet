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
				<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
				<li class="breadcrumb-item active">Giỏ hàng</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Cart Start -->
	<div class="cart-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="cart-page-inner">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead class="thead-dark">
									<tr>
										<th>Sản phẩm</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<th>Tổng tiền</th>
										<th>Xóa</th>
									</tr>
								</thead>

								<tbody class="align-middle">

									<c:forEach var="entry" items="${sessionScope.cart}">
										<tr>
											<td>
												<div class="img">
													<a
														href="/Online_Store_Jsp_Servlet/product/details?id=${entry.getValue().getProduct().getId()}"><img
														src="/Online_Store_Jsp_Servlet/show-image?image=${entry.getValue().getProduct().getImage()}"
														alt="Image">
														<p>${entry.getValue().getProduct().getName()}</p></a>

												</div>
											</td>

											<td>$${entry.getValue().getProduct().getPrice()}</td>

											<td>
												<div class="qty">
													<button class="btn-minus">
														<i class="fa fa-minus"></i>
													</button>
													<input type="text"
														value="${entry.getValue().getQuantity()}">
													<button class="btn-plus">
														<i class="fa fa-plus"></i>
													</button>
												</div>
											</td>

											<td>$${entry.getValue().getQuantity() *
												entry.getValue().getProduct().getPrice()}</td>

											<td><a
												href="/Online_Store_Jsp_Servlet/cart/delete-product?id=${entry.getValue().getProduct().getId()}">
													<button>
														<i class="fa fa-trash"></i>
													</button>
											</a></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="cart-page-inner">
						<div class="row">
							<div class="col-md-12">
								<div class="coupon">
									<input type="text" placeholder="Mã giảm giá">
									<button>Áp dụng</button>
								</div>
							</div>

							<div class="col-md-12">
								<div class="cart-summary">
									<div class="cart-content">
										<h1>Giỏ hàng</h1>
										<p>
											Tổng tiền<span>$${orderTotal}</span>
										</p>
										<p>
											Phí giao hàng<span>$1</span>
										</p>
										<h2>
											Tổng cộng<span>$${orderTotal + 1}</span>
										</h2>
									</div>

									<div class="cart-btn">

										<a href="/Online_Store_Jsp_Servlet/user/check-out">
											<button style="margin-left: 125px">Thanh toán</button>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Cart End -->

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