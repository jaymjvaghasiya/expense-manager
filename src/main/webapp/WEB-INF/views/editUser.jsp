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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	 <style>
        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ccc;
        }
        .upload-icon {
            bottom: 5px;
            right: 5px;
            background-color: #007bff;
            color: #fff;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 16px;
        }
        .upload-icon:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body class="bg-primary d-flex justify-content-center align-items-center vh-100">
    <div class="container bg-white rounded shadow p-4" style="max-width: 400px;">
        <h2 class="text-center mb-4">Edit Profile</h2>
        <form action="updateprofile" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="userId" value="${user.userId}">
        	<div class="position-relative d-flex justify-content-center mb-4">
                <img src="${user.profile_path}" alt="Profile Image" class="profile-image" id="profileImagePreview">
                <label for="user-image" class="upload-icon position-absolute">
                    <i class="fa-solid fa-pen"></i>
                </label>
                <input type="file" id="user-image" name="profilePic" class="d-none" accept="image/*">
            </div>
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
            <a href="forgetpassword" class="btn btn-warning w-100" style="margin: 1rem 0;">Change Password</a>
            <button type="submit" class="btn btn-primary w-100">Update</button>
            <div class="d-flex justify-content-between mt-3">
                <a href="dashboard" class="text-decoration-none">Back</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>