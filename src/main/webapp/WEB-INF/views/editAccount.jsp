<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1.0">
    <title>Add Account</title>
    <!-- Bootstrap CSS -->
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Add Account</h2>
                <form action="updateaccount" method="post">
                
                    <input type="hidden" name="id" value="${account.id}">
                    <!-- Title Field -->
                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" class="form-control" value="${account.title}"
							id="title" name="title" placeholder="Enter account title"
							required>
                    </div>

                    <!-- Amount Field -->
                    <div class="mb-3">
                        <label for="amount" class="form-label">Amount</label>
                        <input type="number" step="0.01" value="${account.amount}"
							class="form-control" id="amount" name="amount"
							placeholder="Enter amount" required>
                    </div>

                    <!-- Description Field -->
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" 
							name="description" rows="3"
							placeholder="Enter account description">${account.description}</textarea>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary w-100">Update Account</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for interactive components) -->
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

</body>
</html>