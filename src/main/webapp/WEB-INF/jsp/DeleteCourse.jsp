<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Delete Courses</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style>
body {
	background: linear-gradient(135deg, #6dd5ed, #2193b0);
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: flex-start;
	padding: 40px 10px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.card {
	background-color: #fff;
	padding: 30px 40px;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
	width: 100%;
	max-width: 1100px;
}

h2 {
	text-align: center;
	font-weight: 700;
	margin-bottom: 30px;
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	font-size: 15px;
}

th, td {
	padding: 12px 15px;
	border: 1px solid #dee2e6;
	vertical-align: middle;
	text-align: left;
}

th {
	background-color: #f8f9fa;
	font-weight: 600;
	color: #495057;
	text-transform: uppercase;
}

tr:hover {
	background-color: #e9ecef;
}

input[type="submit"] {
	padding: 12px 30px;
	font-size: 16px;
	font-weight: 600;
	border-radius: 25px;
	border: none;
	cursor: pointer;
	box-shadow: 0 3px 8px rgba(0, 0, 0, 0.1);
	transition: background-color 0.3s ease;
	margin-right: 15px;
}

/* Delete button - red */
input[type="submit"].delete-btn {
	background-color: #dc3545;
	color: white;
}

input[type="submit"].delete-btn:hover {
	background-color: #b02a37;
}

/* Return button - blue */
input[type="submit"].return-btn {
	background-color: #0d6efd;
	color: white;
}

input[type="submit"].return-btn:hover {
	background-color: #084298;
}

.button-container {
	text-align: center;
	margin-top: 25px;
}
</style>

<script>
        function validateSelection() {
            const checkboxes = document.getElementsByName("courseIds");
            let isChecked = false;
            for (let box of checkboxes) {
                if (box.checked) {
                    isChecked = true;
                    break;
                }
            }
            if (!isChecked) {
                alert("No courses selected to delete.");
                return false;
            }
            return true;
        }
    </script>
</head>

<body>
	<div class="card">
		<h2>Select Courses to Delete</h2>

		<form action="deleteMultipleCourses" method="post"
			onsubmit="return validateSelection();">
			<table>
				<thead>
					<tr>
						<th>Select</th>
						<th>Course Code</th>
						<th>Course Name</th>
						<th>Credits</th>
						<th>Instructor</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="course" items="${courses}">
						<tr>
							<td><input type="checkbox" name="courseIds"
								value="${course.c_id}" /></td>
							<td>${course.c_code}</td>
							<td>${course.c_name}</td>
							<td>${course.credits}</td>
							<td>${course.instructor}</td>
							<td>${course.c_description}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="button-container">
				<input type="submit" class="delete-btn"
					value="Delete Selected Courses" />
			</div>
		</form>

		<form action="dashboard" method="post" class="button-container">
			<input type="submit" class="return-btn" value="Return to Dashboard" />
		</form>
	</div>
</body>
</html>
