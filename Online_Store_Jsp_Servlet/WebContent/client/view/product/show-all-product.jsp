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
				<li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
				<li class="breadcrumb-item active">Tất cả sản phẩm</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Product List Start -->
	<div class="product-view">
		<div class="container-fluid">
			<div class="row">

				<!-- Sidebar -->
				<jsp:include page="/client/common/sidebar.jsp"></jsp:include>

				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-12">
							<div class="product-view-top">
								<div class="row">
									<div class="col-md-4">
										<div class="product-search">
											<input type="email" value="Tìm kiếm">
											<button>
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>

									<div class="col-md-4">
										<div class="product-short">
											<div class="dropdown">
												<div class="dropdown-toggle" data-toggle="dropdown">Sắp
													xếp theo</div>
												<div class="dropdown-menu dropdown-menu-right">
													<a href="#" class="dropdown-item">Mới nhất</a> <a href="#"
														class="dropdown-item">Bán chạy nhất</a> <a href="#"
														class="dropdown-item">Đang sale</a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-4">
										<div class="product-price-range">
											<div class="dropdown">
												<div class="dropdown-toggle" data-toggle="dropdown">Sắp
													xếp theo giá</div>
												<div class="dropdown-menu dropdown-menu-right">
													<a href="#" class="dropdown-item">$0 to $50</a> <a href="#"
														class="dropdown-item">$51 to $100</a> <a href="#"
														class="dropdown-item">$101 to $150</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<c:forEach var="product" items="${listProduct}">

							<div class="col-md-4">
								<div class="product-item">
									<div class="product-title">
										<a
											href="/Online_Store_Jsp_Servlet/product/details?id=${product.id}">${product.name}</a>
										<div class="ratting">

											<i class="fa fa-star"></i>

										</div>
									</div>

									<div class="product-image">
										<a href="/Online_Store_Jsp_Servlet/product/details?id=${product.id}"> <img
											src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
											alt="Product Image">
										</a>

										<div class="product-action">
											<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a
												href="/Online_Store_Jsp_Servlet/client/product/details?id=${product.id}"><i
												class="fa fa-search"></i></a>
										</div>
									</div>

									<div class="product-price">
										<h3>
											<span>$</span>${product.price}
										</h3>
										<a class="btn" href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>

						</c:forEach>

					</div>

					<!-- Pagination Start -->
					<div class="col-md-12">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1">Trước</a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Sau</a>
								</li>
							</ul>
						</nav>
					</div>
					<!-- Pagination Start -->
				</div>
			</div>
		</div>
	</div>
	<!-- Product List End -->

	<!-- Brand Start -->
	<div class="brand">
		<div class="container-fluid">
			<div class="brand-slider">
				<div class="brand-item">
					<img src="/Online_Store_Jsp_Servlet/client/static/img/brand-1.png"
						alt="">
				</div>
				<div class="brand-item">
					<img src="/Online_Store_Jsp_Servlet/client/static/img/brand-2.png"
						alt="">
				</div>
				<div class="brand-item">
					<img src="/Online_Store_Jsp_Servlet/client/static/img/brand-3.png"
						alt="">
				</div>
				<div class="brand-item">
					<img src="/Online_Store_Jsp_Servlet/client/static/img/brand-4.png"
						alt="">
				</div>
				<div class="brand-item">
					<img src="/Online_Store_Jsp_Servlet/client/static/img/brand-5.png"
						alt="">
				</div>
				<div class="brand-item">
					<img src="/Online_Store_Jsp_Servlet/client/static/img/brand-6.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Brand End -->

	<!-- Footer -->

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