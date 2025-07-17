<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Enrollment Failed</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">

		<div class="alert alert-danger text-center">
			<h2>Enrollment Failed</h2>
			<p class="lead">
				Sorry, <strong>${student.s_name}</strong>. We couldn’t complete your
				enrollment request.
			</p>
		</div>

		<h4 class="mt-4">Reason(s)</h4>
		<ul class="list-group">
			<c:forEach var="msg" items="${messages}">
				<li class="list-group-item list-group-item-danger">${msg}</li>
			</c:forEach>
		</ul>

		<div class="text-center mt-4">
			<a href="/index.html" class="btn btn-primary">Try Again</a>
		</div>

	</div>

</body>
</html>
