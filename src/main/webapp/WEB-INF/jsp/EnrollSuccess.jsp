<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Enrollment Result</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">

		<div class="alert alert-success text-center">
			<h2>Enrollment Status</h2>
			<p class="lead">
				Thank you, <strong>${student.s_name}</strong>! Here are the results
				of your enrollment:
			</p>
		</div>

		<h4 class="mt-4">Student Details</h4>
		<table class="table table-bordered">
			<tr>
				<th>ID</th>
				<td>${student.s_uid}</td>
			</tr>
			<tr>
				<th>Name</th>
				<td>${student.s_name}</td>
			</tr>
			<tr>
				<th>Email</th>
				<td>${student.s_email}</td>
			</tr>
			<tr>
				<th>Department</th>
				<td>${student.department}</td>
			</tr>
			<tr>
				<th>Batch</th>
				<td>${student.batch}</td>
			</tr>
		</table>

		<h4 class="mt-4">Enrollment Results</h4>
		<ul class="list-group">
			<c:forEach var="msg" items="${messages}">
				<li
					class="list-group-item 
                <c:if test="${fn:contains(msg, 'Enrolled in')}">list-group-item-success</c:if>">
					${msg}</li>
			</c:forEach>
		</ul>

		<div class="text-center mt-4">
			<a href="/index.html" class="btn btn-primary">Back to Home</a>
		</div>

	</div>

</body>
</html>
