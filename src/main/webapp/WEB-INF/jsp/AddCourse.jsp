<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Course</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2 class="mb-4">Add New Course</h2>
		<form action="/admin/saveCourse" method="post">
			<div class="mb-3">
				<label class="form-label">Course Name</label> <input type="text"
					name="c_name" class="form-control" required />
			</div>
			<div class="mb-3">
				<label class="form-label">Course Code</label> <input type="text"
					name="c_code" class="form-control" required />
			</div>
			<div class="mb-3">
				<label class="form-label">Credits</label> <input type="number"
					name="credits" class="form-control" required />
			</div>
			<div class="mb-3">
				<label class="form-label">Hours</label> <input type="number"
					name="hours" class="form-control" required />
			</div>
			<div class="mb-3">
				<label class="form-label">Instructor</label> <input type="text"
					name="instructor" class="form-control" required />
			</div>
			<div class="mb-3">
				<label class="form-label">Pre-requisites</label> <input type="text"
					name="prerequisites" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Description</label>
				<textarea name="c_description" class="form-control"></textarea>
			</div>
			<div class="mb-3">
				<label class="form-label">Seats Available</label> <input
					type="number" name="c_seats" class="form-control" required />
			</div>
			<button type="submit" class="btn btn-success">Save Course</button>
		</form>
	</div>
</body>
</html>