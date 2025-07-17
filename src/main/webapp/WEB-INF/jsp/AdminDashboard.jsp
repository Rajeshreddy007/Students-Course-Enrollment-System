<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f8;
	min-height: 100vh;
	padding-top: 60px;
}

.dashboard-container {
	max-width: 900px;
	margin: auto;
	background: #fff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.05);
	position: relative;
}

.dashboard-title {
	font-size: 28px;
	margin-bottom: 50px;
	text-align: center;
	font-weight: 600;
	color: #2c3e50;
}

.btn-dashboard {
	padding: 15px 25px;
	font-size: 16px;
	width: 100%;
	margin-bottom: 20px;
}

.logout-btn {
	position: absolute;
	top: 20px;
	right: 20px;
}
</style>
</head>
<body>

	<div class="container dashboard-container">

		<!-- Logout Button -->
		<div class="logout-btn">
			<a class="btn btn-outline-danger btn-sm" href="/index.html">Logout</a>
		</div>

		<!-- Title and Welcome -->
		<h2 class="dashboard-title">
			Welcome to Admin Dashboard, <strong>${admin.a_name}</strong>!
		</h2>

		<!-- Actions -->
		<div class="row">
			<div class="col-md-6">
				<form action="/admin/addCourse" method="post">
					<button type="submit" class="btn btn-success btn-dashboard">
						Add New Course</button>
				</form>
			</div>
			<div class="col-md-6">
				<form action="/admin/manageCourses" method="post">
					<button type="submit" class="btn btn-warning btn-dashboard">
						Delete Courses</button>
				</form>
			</div>
			<div class="col-md-6">
				<form action="/admin/viewStudents" method="post">
					<button type="submit" class="btn btn-primary btn-dashboard">
						View Students</button>
				</form>
			</div>
			<div class="col-md-6">
				<form action="/admin/viewEnrollments" method="post">
					<button type="submit" class="btn btn-info btn-dashboard">
						View Enrollments</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
