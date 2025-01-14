<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - Expense Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-primary d-flex justify-content-center align-items-center vh-100">
    <div class="container bg-white rounded shadow p-4" style="max-width: 400px;">
        <h2 class="text-center mb-4">Forgot Password</h2>
        <form action="sendotp" method="post">
            <div class="mb-3">
                <label for="email-forgot" class="form-label">Email</label>
                <input type="email" id="email-forgot" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Reset Password</button>
            <div class="d-flex justify-content-between mt-3">
                <a href="login.html" class="text-decoration-none">Back to Login</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
