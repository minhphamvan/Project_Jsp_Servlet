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
				<li class="breadcrumb-item"><a>Trang chủ</a></li>
				<li class="breadcrumb-item active">Đăng nhập</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Login -->
	<div class="login">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-3"></div>

				<div class="col-lg-6">
					<div class="login-form">
						<form action="" method="post">
							<div class="row">

								<div class="col-md-3"></div>

								<div class="col-md-6">
									<label>Tên đăng nhập</label> <input class="form-control"
										type="text" name="username" placeholder="Tên đăng nhập">
								</div>
								<div class="col-md-3"></div>

								<div class="col-md-3"></div>
								<div class="col-md-6">
									<label>Mật khẩu</label> <input class="form-control" type="text"
										name="password" placeholder="Mật khẩu">
								</div>
								<div class="col-md-3"></div>

								<div class="col-md-3"></div>
								<div class="col-md-6">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="newaccount"> <label class="custom-control-label"
											for="newaccount">Lưu tài khoản</label>
									</div>
								</div>
								<div class="col-md-3"></div>

								<div class="col-md-3"></div>
								<div class="col-md-6">
									<button class="btn" type="submit">Đăng nhập</button>
								</div>
								<div class="col-md-3"></div>
							</div>
						</form>

					</div>
				</div>

				<div class="col-lg-3"></div>

			</div>
		</div>
	</div>
	<!-- Login End -->

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