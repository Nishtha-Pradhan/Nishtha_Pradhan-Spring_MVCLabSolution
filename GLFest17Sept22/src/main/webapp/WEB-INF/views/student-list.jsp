<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List | GL Fest 2022</title>
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
		<div class="container">
			<h2>Student List</h2>
			<p>Following is the participant list of the GL Fest:</p>
			<table
				class="table table-dark table-bordered table-striped table-hover">
				<thead>
					<tr>
						<th>Sr. No.</th>
						<th>Name</th>
						<th>Department</th>
						<th>Country</th>
						<th>Action</th>
					</tr>
				</thead>
				<c:forEach var="student" items="${students}" varStatus="c">
					<tbody>
						<tr>
							<td>${c.count}</td>
							<td>${student.name}</td>
							<td>${student.department}</td>
							<td>${student.country}</td>
							<td><a class="btn btn-info" href="update?id=${student.id}">Update</a>  <a
								class="btn btn-danger" href="delete?id=${student.id}"
								onclick="if(!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>