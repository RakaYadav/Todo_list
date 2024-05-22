<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	/* background-color: #f4f4f4; */
}

nav {
	background-color: red;
	padding: 10px 20px;
}

nav div {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

nav a {
	color: #ffc107;
	text-decoration: none;
	margin: 0 10px;
	transition: color 0.3s ease;
}

nav a:hover {
	color: pink;
}
</style>
</head>

<body>
	<nav>
		<div>
			<h2>ToDO-List App</h2>
			<div class="rightNav">
				<h2>
					<a href="./login.jsp">Login</a>
				</h2>
				<h2>
					<a href="./register.jsp"> Signup </a>
				</h2>

			</div>
		</div>
	</nav>
</body>
</html>