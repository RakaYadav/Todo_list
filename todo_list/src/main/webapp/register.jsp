<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	display: flex;
	justify-content: center;
}

fieldset {
	border: 2px solid #343a40;
	border-radius: 8px;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 100%;
	display: flex;
	justify-content: center;
	text-align: center;
}

legend {
	padding: 0 5px;
	font-weight: bold;
	color: #343a40;
}

label, input {
	display: block;
}

input {
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 2px;
}

input[type="submit"] {
	background-color: #343a40;
	color: #fff;
	border: none;
	cursor: pointer;
	display: flex;
}

input[type="submit"]:hover {
	background-color: #495057;
}

.submit {
	display: flex;
	justify-content: center;
}
</style>
</head>
<body>
	<jsp:include page="./header.jsp"></jsp:include>
	<div class="container">
		<fieldset>
			<legend>
				<h2>User Register Form</h2>
			</legend>


			<div>
				<div class="alert alert-success center" role="alert">
					<%
					String massage = (String) request.getAttribute("massage");
					if (massage != null && !massage.isEmpty()) {
					%>
					<div style="color: red;"><%=massage%></div>
					<%
					}
					%>
				</div>
				<form action="register" method="post">
					<label for="fname">First Name:</label><br> <input type="text"
						id="fname" autofocus="autofocus" name="firstName"
						placeholder="user First name"><br> <label for="lname">Last
						Name:</label><br> <input type="text" id="lname" autofocus="autofocus"
						name="lastName" placeholder="user Last name"><br> <label
						for="emial">Email:</label><br> <input type="email" id="email"
						autofocus="autofocus" name="email"
						placeholder="ex: admin123@gmail.com"><br> <label
						for="password">Password:</label><br> <input type="password"
						id="password" autofocus="autofocus" name="password"
						placeholder="ex: Admin@123"><br>
					<button type="submit" value="submit">submit</button>
				</form>

			</div>
		</fieldset>
	</div>
	<jsp:include page="./footer.jsp"></jsp:include>

</body>
</html>