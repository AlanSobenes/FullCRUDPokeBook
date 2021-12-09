<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Edit My Task</title>
</head>
<body>
	<div class="container" style="margin-top:20px">
		<div class=" d-flex justify-content-between">
			<h1 class="shadow p-3 mb-5 bg-body rounded text-success">Edit Expense</h1> 
			<a href="/"><button class="btn btn-primary">Go back</button></a>
		</div>
		<div class="form-group">
			<form:form action="/${expense.id }" method="post" modelAttribute="expense">
				<input type="hidden" name="_method" value="put" />
			   <p>
			       <form:label path="name" class="text-info">Expense</form:label>
			       <form:errors path="name" class="text-danger"/>
			       <form:input path="name" class="form-control"/>
			   </p>
			   <p>
			       <form:label path="vendor" class="text-info">Vendor</form:label>
			       <form:errors path="vendor" class="text-danger"/>
			       <form:input path="vendor" class="form-control"/>
			   </p>
			   <p>
			       <form:label path="amount" class="text-info">Amount</form:label>
			       <form:errors path="amount" class="text-danger"/>
			       <form:input  path="amount" class="form-control"/>
			   </p>
			   <p>
			       <form:label path="description" class="text-info">Description</form:label>
			       <form:errors path="description" class="text-danger"/>     
			       <form:input type="text-area" path="description" class="form-control"/>
			   </p>    
			   <input type="submit" class="btn btn-outline-info">
			</form:form> 
		</div>   
	
	
	
	</div>

</body>
</html>