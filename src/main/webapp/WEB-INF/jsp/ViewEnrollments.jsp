<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Enrollments</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #f6d365, #fda085);
	padding: 40px;
}

.container {
	background: white;
	padding: 30px;
	border-radius: 16px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 30px;
	font-weight: 600;
	color: #2c3e50;
}

.btn-back {
	background-color: #007bff;
	color: white;
	border-radius: 20px;
	padding: 8px 24px;
	font-size: 15px;
}

.btn-back:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div class="container">
		<h2>All Enrollments</h2>

		<c:if test="${empty enrollments}">
			<div class="alert alert-info text-center">No enrollments found.</div>
		</c:if>

		<c:if test="${not empty enrollments}">
			<table class="table table-bordered table-striped">
				<thead class="table-light">
					<tr>
						<th>#</th>
						<th>Student Name</th>
						<th>Student Email</th>
						<th>Course Code</th>
						<th>Course Name</th>
						<th>Enrolled Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="enroll" items="${enrollments}" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${enroll.student.s_name}</td>
							<td>${enroll.student.s_email}</td>
							<td>${enroll.course.c_code}</td>
							<td>${enroll.course.c_name}</td>
							<td>${enroll.enrolledOn}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<form action="/admin/dashboard" method="post" class="text-center mt-4">
			<button type="submit" class="btn btn-back">Return to
				Dashboard</button>
		</form>
	</div>

</body>
</html>
