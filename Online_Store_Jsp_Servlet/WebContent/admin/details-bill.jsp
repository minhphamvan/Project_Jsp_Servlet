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
						<p class="right__desc">Xem chi tiết đơn hàng</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>Mã</th>
											<th>Tên sản phẩm</th>
											<th>Hình ảnh</th>
											<th>Giá sản phẩm</th>
											<th>Số lượng</th>
											<th>Tổng tiền</th>

										</tr>
									</thead>

									<tbody>
										<tr>
											<td></td>
											<td><a> </a></td>

											<td><a><img alt="Image Product"
													style="width: 100px; height: 100px"></a></td>

											<td  ></td>
											<td ></td>
											<td  ></td>
										</tr>

									</tbody>
								</table>

								<a  class="right__tableMore">
									Xem tất cả đơn hàng<img
									src="/Online_Store_Jsp_Servlet/admin/static/assets/icon-return.svg" alt="">
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