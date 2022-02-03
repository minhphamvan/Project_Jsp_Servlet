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
				<li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
				<li class="breadcrumb-item active">Chi tiết</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Product Detail Start -->
	<div class="product-detail">
		<div class="container-fluid">
			<div class="row">
				<!-- Sidebar -->
				<jsp:include page="/client/common/sidebar.jsp"></jsp:include>

				<div class="col-lg-9">
					<div class="product-detail-top">
						<div class="row align-items-center">
							<div class="col-md-5">
								<div class="product-slider-single normal-slider">
									<img
										src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
										alt="Product Image"> <img
										src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
										alt="Product Image">
								</div>

								<div class="product-slider-single-nav normal-slider">
									<div class="slider-nav-img">
										<img
											src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
											alt="Product Image">
									</div>
									<div class="slider-nav-img">
										<img
											src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
											alt="Product Image">
									</div>

								</div>
							</div>

							<div class="col-md-7">
								<div class="product-content">
									<div class="title">
										<h2>${product.name}</h2>
									</div>

									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>

									<div class="price">
										<h4>Giá:</h4>
										<p>
											$ ${product.price} <span>$149</span>
										</p>
									</div>

									<div class="quantity">
										<h4>Số lượng:</h4>
										<div class="qty">
											<button class="btn-minus">
												<i class="fa fa-minus"></i>
											</button>
											<input type="text" value="1">
											<button class="btn-plus">
												<i class="fa fa-plus"></i>
											</button>
										</div>
									</div>

									<div class="p-color">
										<h4>Màu:</h4>
										<div class="btn-group btn-group-sm">
											<button type="button" class="btn">Đen</button>
											<button type="button" class="btn">Trắng</button>
											<button type="button" class="btn">Xanh</button>
										</div>
									</div>

									<div class="action">
										<a class="btn" href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i class="fa fa-shopping-cart"></i>Thêm
											vào giỏ</a> <a class="btn" href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i
											class="fa fa-shopping-bag"></i>Mua ngay</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row product-detail-bottom">
						<div class="col-lg-12">
							<ul class="nav nav-pills nav-justified">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="pill" href="#description">Mô tả</a></li>

								<li class="nav-item"><a class="nav-link" data-toggle="pill"
									href="#reviews">Đánh giá</a></li>
							</ul>

							<div class="tab-content">
								<div id="description" class="container tab-pane active">
									<h4>Mô tả</h4>
									<p>${product.description}</p>
								</div>

								<div id="reviews" class="container tab-pane fade">
									<div class="reviews-submitted">
										<div class="reviewer">
											Minh Pham - <span>15/02/2020</span>
										</div>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<p>. . .</p>
									</div>

									<div class="reviews-submit">
										<h4>Gửi đánh giá:</h4>
										<div class="ratting">
											<i class="far fa-star"></i> <i class="far fa-star"></i> <i
												class="far fa-star"></i> <i class="far fa-star"></i> <i
												class="far fa-star"></i>
										</div>
										<div class="row form">
											<div class="col-sm-9">
												<textarea placeholder="Đánh giá"></textarea>
											</div>

											<div class="col-sm-12">
												<button>Gửi đi</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="product">
						<div class="section-header">
							<h1>Sản phẩm nổi bật</h1>
						</div>

						<div
							class="row align-items-center product-slider product-slider-3">
							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="#">Tên sản phẩm</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="/Online_Store_Jsp_Servlet/client/static/img/product-10.jpg"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>99
										</h3>
										<a class="btn" href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>

							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="#">Tên sản phẩm</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="/Online_Store_Jsp_Servlet/client/static/img/product-10.jpg"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>99
										</h3>
										<a class="btn" href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>

							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="#">Tên sản phẩm</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="/Online_Store_Jsp_Servlet/client/static/img/product-10.jpg"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>99
										</h3>
										<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>

							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="#">Tên sản phẩm</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="/Online_Store_Jsp_Servlet/client/static/img/product-10.jpg"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>99
										</h3>
										<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>

							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="#">Tên sản phẩm</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="/Online_Store_Jsp_Servlet/client/static/img/product-10.jpg"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>99
										</h3>
										<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Detail End -->

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