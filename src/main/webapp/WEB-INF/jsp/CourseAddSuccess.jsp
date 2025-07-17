<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.SpringBoot.Entities.Courses"%>
<%
Courses course = (Courses) request.getAttribute("course");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Course Added Successfully</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background: linear-gradient(135deg, #6dd5ed, #2193b0);
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.card {
	padding: 30px 40px;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
	background-color: #fff;
	text-align: center;
	width: 90%;
	max-width: 600px;
}

.card h2 {
	color: #28a745;
}

.course-details {
	text-align: left;
	margin-top: 20px;
}

.course-details th, .course-details td {
	padding: 6px 12px;
}

.btn-group {
	margin-top: 20px;
}
</style>
</head>
<body>

	<div class="card">
		<h2>Course Added Successfully!</h2>
		<h3 class="mt-3">Course Details</h3>

		<c:if test="${not empty course}">
			<div class="course-details">
				<table class="table table-bordered">
					<tr>
						<th>Code</th>
						<td>${course.c_code}</td>
					</tr>
					<tr>
						<th>Name</th>
						<td>${course.c_name}</td>
					</tr>
					<tr>
						<th>Description</th>
						<td>${course.c_description}</td>
					</tr>
					<tr>
						<th>Credits</th>
						<td>${course.credits}</td>
					</tr>
					<tr>
						<th>Hours</th>
						<td>${course.hours}</td>
					</tr>
					<tr>
						<th>Instructor</th>
						<td>${course.instructor}</td>
					</tr>
					<tr>
						<th>Pre-requisites</th>
						<td>${course.prerequisites}</td>
					</tr>
					<tr>
						<th>Seats Available</th>
						<td>${course.c_seats}</td>
					</tr>
				</table>
			</div>
		</c:if>

		<form action="/admin/dashboard" class="btn-group" method="post">
			<button type="submit" class="btn btn-primary">Return to
				Admin Dashboard</button>
		</form>
	</div>

</body>
</html>
