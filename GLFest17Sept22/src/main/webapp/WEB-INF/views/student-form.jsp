<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration | GL Fest 2022</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
h1 {
	text-align: center;
}

h2 {
	text-align: center;
}

hr {
	background-color: white;
	height: 1px;
}
</style>

</head>
<body>
	<div class="container p-3 my-3 bg-dark text-white">
		<h1>Great Learning Courses</h1>
		<hr>
		<h2>Welcome to GL Fest 2022!</h2>
		<hr>
		<p>
			Find the existing participants of GL Fest <a href="list"
				class="btn btn-outline-warning btn-lg">Here</a>
		</p>
		<hr>
		<div class="container">
			<h2>Fest Registration Form</h2>
			<form action="save" method="post">
				<div class="form-group">
					<input type="hidden" class="form-control"
						name="id" value="${student.id}">
				</div>
				<div class="form-group">
					<label for="name">Enter Name</label> <input type="text"
						class="form-control" placeholder="Enter name" name="name"
						value="${student.name}">
				</div>
				<div class="form-group">
					<label for="department">Enter Department</label> <input type="text"
						class="form-control" placeholder="Enter Department"
						name="department" value="${student.department}">
				</div>
				<div class="form-group">
					<label for="country">Enter Country</label> <input type="text"
						class="form-control" placeholder="Enter Country" name="country"
						value="${student.country}">
				</div>

				<button type="submit"
					class="btn btn-outline-warning btn-lg">Save</button>
			</form>
		</div>

	</div>
</body>
</html>