<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Side Bar Start -->
<div class="col-lg-3 sidebar">

	<div class="sidebar-widget category">
		<h2 class="title">Danh mục</h2>
		<nav class="navbar bg-light">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fa fa-female"></i>Danh mục</a> <a class="nav-link" href="#"><i
						class="fa fa-female"></i>Danh mục</a> <a class="nav-link" href="#"><i
						class="fa fa-female"></i>Danh mục</a></li>

			</ul>
		</nav>
	</div>

	<div class="sidebar-widget widget-slider">
		<div class="sidebar-slider normal-slider">

			<c:forEach var="product" items="${listProduct}">

				<div class="product-item">
					<div class="product-title">
						<a
							href="/Online_Store_Jsp_Servlet/product/details?id=${product.id}">${product.name}</a>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
					</div>

					<div class="product-image">
						<a
							href="/Online_Store_Jsp_Servlet/product/details?id=${product.id}">
							<img
							src="/Online_Store_Jsp_Servlet/show-image?image=${product.image}"
							alt="Product Image">
						</a>
						<div class="product-action">
							<a href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i
								class="fa fa-cart-plus"></i></a> <a href="#"><i
								class="fa fa-heart"></i></a> <a
								href="/Online_Store_Jsp_Servlet/product/details?id=${product.id}"><i
								class="fa fa-search"></i></a>
						</div>
					</div>

					<div class="product-price">
						<h3>
							<span>$</span>${product.price}
						</h3>
						<a class="btn"
							href="/Online_Store_Jsp_Servlet/add-to-cart?id=${product.id}"><i
							class="fa fa-shopping-cart"></i>Mua ngay</a>
					</div>
				</div>

			</c:forEach>

		</div>
	</div>


	<div class="sidebar-widget brands">
		<h2 class="title">Thương hiệu</h2>
		<ul>
			<li><a href="#">Thương hiệu 1 </a><span>(45)</span></li>
			<li><a href="#">Thương hiệu 2</a><span>(34)</span></li>
			<li><a href="#">Thương hiệu 2</a><span>(67)</span></li>
		</ul>
	</div>


	<div class="sidebar-widget tag">
		<h2 class="title">Từ khóa tìm kiếm</h2>
		<a href="#">Từ khóa 1</a> <a href="#">Từ khóa 2</a> <a href="#">Từ
			khóa 3</a> <a href="#">Từ khóa 4</a> <a href="#">Từ khóa 5</a> <a
			href="#">Từ khóa 6</a>
	</div>
</div>
<!-- Side Bar End -->