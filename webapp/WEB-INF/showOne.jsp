<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Show Expense</title>
</head>
<body>
	<div class="container" style="margin-top:20px">
		<div class=" d-flex justify-content-between">
			<h1 class="shadow p-3 mb-5 bg-body rounded text-success">Expense Details</h1> 
			<a href="/" ><button class="btn btn-primary">Go back</button></a>
		</div>
		<table class="table">
			<tr>
				<td>Expense Name:</td>
				<td><c:out value="${expense.name }"/></td>
			</tr>
			<tr>
				<td>Expense description:</td>
				<td><c:out value="${expense.description }"/></td>
			</tr>
			<tr>
				<td>Vendor:</td>
				<td><c:out value="${expense.vendor }"/></td>
			</tr>
			<tr class="table-danger">
				<td>Amount Spent:</td>
				<td>$<c:out value="${expense.amount }"/></td>
			</tr>
		
		
		
		</table>
		
		
	</div>

</body>
</html>