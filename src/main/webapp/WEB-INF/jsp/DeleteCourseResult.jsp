<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Course Deletion Result</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background: linear-gradient(135deg, #ffecd2, #fcb69f);
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px;
}

.card {
	background-color: #ffffff;
	padding: 25px 35px;
	border-radius: 16px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
	width: 100%;
	max-width: 900px;
}

.card h2 {
	color: #dc3545;
	font-weight: 700;
	margin-bottom: 15px;
}

.message {
	font-size: 18px;
	font-weight: 500;
	margin-bottom: 20px;
	color: #333;
}

.table th {
	background-color: #f8f9fa;
}

.btn-container {
	text-align: center;
	margin-top: 30px;
}

.btn-dashboard {
	background-color: #007bff;
	color: white;
	padding: 10px 28px;
	font-size: 16px;
	border: none;
	border-radius: 30px;
	transition: background-color 0.3s ease;
}

.btn-dashboard:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div class="card">
		<h2>Course Deletion Result</h2>

		<c:if test="${not empty message}">
			<div class="message">${message}</div>
		</c:if>

		<c:if test="${not empty deletedCourses}">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Course Code</th>
						<th>Course Name</th>
						<th>Credits</th>
						<th>Instructor</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="course" items="${deletedCourses}" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<!-- Serial number -->
							<td>${course.c_code}</td>
							<td>${course.c_name}</td>
							<td>${course.credits}</td>
							<td>${course.instructor}</td>
							<td>${course.c_description}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<div class="btn-container">
			<form action="/admin/dashboard" method="post">
				<button type="submit" class="btn-dashboard">Return to Admin
					Dashboard</button>
			</form>
		</div>
	</div>

</body>
</html>
