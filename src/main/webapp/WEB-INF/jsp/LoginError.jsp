<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
String error = (String) request.getAttribute("error");
if (error == null) {
	error = "An unexpected error occurred during login.";
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Error</title>
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: linear-gradient(135deg, #ff5f6d, #ffc371);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.error-container {
	background-color: #fff;
	padding: 40px 50px;
	border-radius: 15px;
	box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
	text-align: center;
	width: 90%;
	max-width: 400px;
	animation: fadeIn 0.6s ease-in-out;
}

@
keyframes fadeIn {from { opacity:0;
	transform: scale(0.95);
}

to {
	opacity: 1;
	transform: scale(1);
}

}
.error-container h1 {
	font-size: 28px;
	color: #c62828;
	margin-bottom: 15px;
}

.error-container p {
	font-size: 16px;
	color: #333;
	margin-bottom: 25px;
}

.back-btn {
	background-color: #c62828;
	color: #fff;
	padding: 12px 25px;
	text-decoration: none;
	border: none;
	border-radius: 8px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: background-color 0.3s;
}

.back-btn:hover {
	background-color: #8e0000;
}
</style>
</head>
<body>
	<div class="error-container">
		<h1>Login Failed</h1>
		<p><%=error%></p>
		<form action="/index.html">
			<button class="back-btn">Back to Login</button>
		</form>
	</div>
</body>
</html>
