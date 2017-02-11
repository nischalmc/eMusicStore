<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

    <div class="container wrapper">
    <div class="container">
		<div class="page-header">
			<h1>Product Detail</h1>
			
			<p class="lead">Here is the detail information of the product</p>
			
		</div>
		<div class="container" ng-app = "cartApp">
			<div class="row">
				<div class="col-md-5">
					<img alt="image" src="#" style="width:100% height:300px">
				</div>
				
				<div class="col-md-5">
					<h3>${product.productName}</h3>
					<p>${product.productDescription}</p>
					<p>
						<strong>Manufacturer</strong> : ${product.productManufacturer}</p>
					<p>
						<strong>Category</strong> : ${product.productCategory}</p>
					<p>
						<strong>Condition</strong> : ${product.productCondition}</p>
					<p><h4>${product.productPrice} /-</h4></p>	
					
					<br>
					<c:set var="url" scope="page" value="/productList"></c:set>	
					
					<p ng-controller="cartCtrl">
						<a href='<c:url value="${url}"></c:url>' class="btn btn-default">Back</a>
						<a href="#" class="btn btn-warning btn-large" 
							ng-click="addToCart('${product.productId}')">
								<span class="glyphicon glyphicon-shopping-cart"></span>Order Now</a>
						<a href='<s:url value="/cart"></s:url>' class="btn btn-default">
						<span class="glyphicon glyphicon-hand-right"></span>View Cart
						</a>
					</p>
				</div>
			</div>
		</div>
		
<script src='<c:url value="/resources/js/controller.js"></c:url>'></script>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>