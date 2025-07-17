<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Course Registration Platform</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-primary mb-4">Welcome to Course Registration
			Platform</h2>
		<hr />

		<h4>Student Details</h4>
		<table class="table table-bordered w-75">
			<tr>
				<th>UID</th>
				<td>${student.s_uid}</td>
			</tr>
			<tr>
				<th>Full Name</th>
				<td>${student.s_name}</td>
			</tr>
			<tr>
				<th>Gender</th>
				<td>${student.gender}</td>
			</tr>
			<tr>
				<th>DOB</th>
				<td>${student.dob}</td>
			</tr>
			<tr>
				<th>Batch</th>
				<td>${student.batch}</td>
			</tr>
			<tr>
				<th>Department</th>
				<td>${student.department}</td>
			</tr>
			<tr>
				<th>Email</th>
				<td>${student.s_email}</td>
			</tr>
			<tr>
				<th>Phone</th>
				<td>${student.phone}</td>
			</tr>
			<tr>
				<th>City</th>
				<td>${student.city}</td>
			</tr>

		</table>

		<hr />

		<h4 class="mt-4">Available Courses</h4>
		<form action="/student/courseEnroll" method="post">
			<input type="hidden" name="studentId" value="${student.s_id}" />
			<table class="table table-striped table-hover">
				<thead class="table-dark">
					<tr>
						<th>Select</th>
						<th>Code</th>
						<th>Name</th>
						<th>Description</th>
						<th>Credits</th>
						<th>Hours</th>
						<th>Instructor</th>
						<th>Prerequisites</th>
						<th>Seats Available</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="course" items="${availableCourses}">
						<tr>
							<td><input type="checkbox" name="selectedCourses"
								value="${course.c_id}"></td>
							<td>${course.c_code}</td>
							<td>${course.c_name}</td>
							<td>${course.c_description}</td>
							<td>${course.credits}</td>
							<td>${course.hours}</td>
							<td>${course.instructor}</td>
							<td>${course.prerequisites}</td>
							<td>${course.c_seats}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button type="submit" class="btn btn-success">Enroll in
				Selected Courses</button>
		</form>
	</div>
</body>
</html>
