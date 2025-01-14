<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Expense Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-primary d-flex justify-content-center align-items-center vh-100">
    <div class="container bg-white rounded shadow p-4" style="max-width: 400px;">
        <h2 class="text-center mb-4">Sign Up</h2>
        <form action="updateprofile" method="post">
        	<input type="hidden" name="userId" value="${user.userId}">
            <div class="mb-3">
                <label for="firstname" class="form-label">First Name</label>
                <input type="text" id="firstname" value="${user.firstname}" name="firstname" class="form-control" placeholder="Enter your first name" required>
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">Last Name</label>
                <input type="text" id="lastname" value="${user.lastname}" name="lastname" class="form-control" placeholder="Enter your last name" required>
            </div>
            <div class="mb-3">
                <label for="email-signup" class="form-label">Email</label>
                <input type="email" id="email-signup" value="${user.email}" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile</label>
                <input type="tel" id="mobile" value="${user.mobile}" name="mobile" class="form-control" placeholder="Enter your mobile number" required>
            </div>
            <a href="forgetpassword" class="btn btn-primary w-100" style="margin: 1rem 0;">Change Password</a>
            <button type="submit" class="btn btn-primary w-100">Update</button>
            <div class="d-flex justify-content-between mt-3">
                <a href="dashboard" class="text-decoration-none">Back</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>