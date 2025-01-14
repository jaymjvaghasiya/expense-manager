<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div>
		<a href="addaccount">Add acount + </a> | <a href="dashboard">Back</a>
	</div>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col"></th>
				<th scope="col">#</th>
				<th scope="col">Title</th>
				<th scope="col">Amount</th>
				<th scope="col">Description</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${accounts}" var="a" varStatus="status">
				<tr>
					<td><input type="radio" name="primaryAccount" value="${a.id}"
						<c:if test="">checked</c:if> /></td>
					<th scope="row">${status.index + 1}</th>
					<td>${a.title}</td>
					<td>${a.amount}</td>
					<td>${a.description}</td>
					<td>
						<a href="editaccount?accountId=${a.id}">Update</a> | 
						<a href="deleteaccount?accountId=${a.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- Bootstrap JS (Optional for interactive components) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>