<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Students</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background: linear-gradient(135deg, #e0eafc, #cfdef3);
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
	color: #34495e;
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
		<h2>Students Data</h2>

		<c:if test="${empty students}">
			<div class="alert alert-info text-center">No students found.</div>
		</c:if>

		<c:if test="${not empty students}">
			<table class="table table-bordered table-striped">
				<thead class="table-light">
					<tr>
						<th>#</th>
						<th>UID</th>
						<th>Name</th>
						<th>DOB</th>
						<th>Gender</th>
						<th>Batch</th>
						<th>Department</th>
						<th>Email</th>
						<th>Phone</th>
						<th>City</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="student" items="${students}" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${student.s_uid}</td>
							<td>${student.s_name}</td>
							<td>${student.dob}</td>
							<td>${student.gender}</td>
							<td>${student.batch}</td>
							<td>${student.department}</td>
							<td>${student.s_email}</td>
							<td>${student.phone}</td>
							<td>${student.city}</td>
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
