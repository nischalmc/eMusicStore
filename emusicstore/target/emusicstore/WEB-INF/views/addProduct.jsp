<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

    <div class="container wrapper">
    <div class="container">
		<div class="page-header">
			<h1>Add Product</h1>
			
			<p class="lead">Here is the detail information of the product</p>
			
		</div>
		
		<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product" enctype="multipart/form-data">
			<div class="form-group">
				<label for="Name">Name</label>
				<form:input path="productName" id="name" class="form-Control"></form:input>
			</div>
			
			<div class="form-group">
				<label for="Category">Category</label>
				<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
				<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record"/>Record</label>
				<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accesory"/>Accessory</label>
			</div>
			
			<div class="form-group">
				<label for="description">Description</label>
				<form:input path="productDescription" id="description" class="form-Control"></form:input>
			</div>
			
			<div class="form-group">
				<label for="price">Price</label>
				<form:input path="productPrice" id="price" class="form-Control"></form:input>
			</div>
			
			<div class="form-group">
				<label for="condition">Condition</label>
				<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>
				<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Used</label>
			</div>
			
			<div class="form-group">
				<label for="status">Status</label>
				<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>Active</label>
				<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive"/>Inactive</label>
			</div>
			
			<div class="form-group">
				<label for="unitInStock">Unit in Stock</label>
				<form:input path="unitInStock" id="unitInStock" class="form-Control"></form:input>
			</div>
			
			
			<div class="form-group">
				<label for="manufacturer">Manufacturer</label>
				<form:input path="productManufacturer" id="manufacturer" class="form-Control"></form:input>
			</div>
			
			<div class="form-group">
				<label for="control-label" for="productImage">Upload Picture</label>
				<form:input path="productImage" id="produuctImage" type="file" class="form:input-large"></form:input>
			</div>
			
			<input type="submit" value="submit" class="btn btn-default">
			<a href='<s:url value="/admin/productInventory"></s:url>' class="btn btn-default">Cancel</a>
		</form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>