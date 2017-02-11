<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

    <div class="container wrapper">
    <div class="container">
		<div class="page-header">
			<h1>Admin Page</h1>
			
			<p class="lead">This is the Administrator Page</p>
			
		</div>
		
		<h3>
			<a href='<c:url value="/admin/productInventory"></c:url>'>Product Inventory</a>
		</h3>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>