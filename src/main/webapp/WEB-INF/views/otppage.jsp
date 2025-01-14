<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>OTP Input Form</title>
    <style>
        .otp-input {
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 24px;
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Enter OTP</h2>
        <form action="checkotp" method="post">
            <div class="d-flex justify-content-center">
            	<input type="hidden" name="email" value="${email}">
                <input type="text" class="otp-input form-control" maxlength="1" name="otp" id="otp1" required />
                <input type="text" class="otp-input form-control" maxlength="1" name="otp" id="otp2" required />
                <input type="text" class="otp-input form-control" maxlength="1" name="otp" id="otp3" required />
                <input type="text" class="otp-input form-control" maxlength="1" name="otp" id="otp4" required />
                <input type="text" class="otp-input form-control" maxlength="1" name="otp" id="otp5" required />
                <input type="text" class="otp-input form-control" maxlength="1" name="otp" id="otp6" required />
            </div>
            <button type="submit" class="btn btn-primary mt-3">Submit OTP</button>
        </form>
    </div>

    <script>
        const inputs = document.querySelectorAll('.otp-input');

        inputs.forEach((input, index) => {
            input.addEventListener('input', (e) => {
                if (e.target.value.length === 1 && index < inputs.length - 1) {
                    inputs[index + 1].focus();
                }
            });

            input.addEventListener('keydown', (e) => {
                if (e.key === 'Backspace' && index > 0 && e.target.value.length === 0) {
                    inputs[index - 1].focus();
                }
            });
        });
	</script>
</body>
</html>