<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

    <div class="container wrapper">
    <div class="container">
		<div class="page-header">
			<h1>All Products</h1>
			
			<p class="lead">Checkout all the awesome products</p>
			
			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Photo Thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th></th>
					</tr>
				</thead>
				<c:forEach items="${productList}" var="product">
				<tr>
					<td><img alt="image" src="#"></td>
					<td>${product.productName}</td>
					<td>${product.productCategory}</td>
					<td>${product.productCondition}</td>
					<td>${product.productPrice} /-</td>
					<td><a href='<s:url value="/productList/viewProduct/${product.productId}"></s:url>'><span class="glyphicon glyphicon-info-sign"></span></a>
				</tr>
				</c:forEach>
			</table>
		</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>