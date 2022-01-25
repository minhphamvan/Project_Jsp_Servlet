<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
				<li class="breadcrumb-item active">Thanh toán</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Checkout Start -->
	<div class="checkout">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="checkout-inner">
						<div class="billing-address">
							<h2>Billing Address</h2>
							<div class="row">
								<div class="col-md-6">
									<label>First Name</label> <input class="form-control"
										type="text" placeholder="First Name">
								</div>
								<div class="col-md-6">
									<label>Last Name"</label> <input class="form-control"
										type="text" placeholder="Last Name">
								</div>
								<div class="col-md-6">
									<label>E-mail</label> <input class="form-control" type="text"
										placeholder="E-mail">
								</div>
								<div class="col-md-6">
									<label>Mobile No</label> <input class="form-control"
										type="text" placeholder="Mobile No">
								</div>
								<div class="col-md-12">
									<label>Address</label> <input class="form-control" type="text"
										placeholder="Address">
								</div>
								<div class="col-md-6">
									<label>Country</label> <select class="custom-select">
										<option selected>United States</option>
										<option>Afghanistan</option>
										<option>Albania</option>
										<option>Algeria</option>
									</select>
								</div>
								<div class="col-md-6">
									<label>City</label> <input class="form-control" type="text"
										placeholder="City">
								</div>
								<div class="col-md-6">
									<label>State</label> <input class="form-control" type="text"
										placeholder="State">
								</div>
								<div class="col-md-6">
									<label>ZIP Code</label> <input class="form-control" type="text"
										placeholder="ZIP Code">
								</div>
								<div class="col-md-12">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="newaccount"> <label class="custom-control-label"
											for="newaccount">Create an account</label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="shipto"> <label class="custom-control-label"
											for="shipto">Ship to different address</label>
									</div>
								</div>
							</div>
						</div>

						<div class="shipping-address">
							<h2>Shipping Address</h2>
							<div class="row">
								<div class="col-md-6">
									<label>First Name</label> <input class="form-control"
										type="text" placeholder="First Name">
								</div>
								<div class="col-md-6">
									<label>Last Name"</label> <input class="form-control"
										type="text" placeholder="Last Name">
								</div>
								<div class="col-md-6">
									<label>E-mail</label> <input class="form-control" type="text"
										placeholder="E-mail">
								</div>
								<div class="col-md-6">
									<label>Mobile No</label> <input class="form-control"
										type="text" placeholder="Mobile No">
								</div>
								<div class="col-md-12">
									<label>Address</label> <input class="form-control" type="text"
										placeholder="Address">
								</div>
								<div class="col-md-6">
									<label>Country</label> <select class="custom-select">
										<option selected>United States</option>
										<option>Afghanistan</option>
										<option>Albania</option>
										<option>Algeria</option>
									</select>
								</div>
								<div class="col-md-6">
									<label>City</label> <input class="form-control" type="text"
										placeholder="City">
								</div>
								<div class="col-md-6">
									<label>State</label> <input class="form-control" type="text"
										placeholder="State">
								</div>
								<div class="col-md-6">
									<label>ZIP Code</label> <input class="form-control" type="text"
										placeholder="ZIP Code">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="checkout-inner">
						<div class="checkout-summary">
							<h1>Giỏ hàng</h1>
							<p class="sub-total">
								Tổng tiền<span>$99</span>
							</p>
							<p class="ship-cost">
								Phí giao hàng<span>$1</span>
							</p>
							<h2>
								Tổng cộng<span>$100</span>
							</h2>
						</div>

						<div class="checkout-payment">
							<div class="payment-methods">
								<h1>Thanh toán</h1>
								<div class="payment-method">
									<div class="custom-control custom-radio">
										<input type="radio" class="custom-control-input"
											id="payment-1" name="payment"> <label
											class="custom-control-label" for="payment-1">Ship COD</label>
									</div>

									<div class="payment-content" id="payment-1-show">
										<p>Thanh toán khi giao hàng !</p>
									</div>
								</div>

								<div class="payment-method">
									<div class="custom-control custom-radio">
										<input type="radio" class="custom-control-input"
											id="payment-4" name="payment"> <label
											class="custom-control-label" for="payment-4">Online</label>
									</div>
									<div class="payment-content" id="payment-4-show">
										<p>Thanh toán online !</p>
									</div>
								</div>

							</div>
							<div class="checkout-btn">
								<button>Đặt hàng</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Checkout End -->

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