<%@page import="com.jsp.todo_list.controller.UserController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
div{
display: flex;
justify-content: center;
text-align: center;


}
fieldset {
border: 2px solid black;
border-radius: 2%;
width: 100%;
margin: 30px;

	
}
</style>
</head>
<body>
<%UserController userController= new UserController(); %>
<jsp:include page="./header.jsp"></jsp:include>
<div><form action="login" method="post">
<fieldset>
<legend>Login Here</legend>
<label for="email">Email: </label><br>
<input type="email" name="email" id="email"><br><br>
<label for="password">Password: </label><br>
<input type="password" name="password" id="password"><br><br>
<button type="submit"> submit </button>
</fieldset>
</form>
</div>
<% 
    String notification = (String) request.getAttribute("notification");
    if (notification != null && !notification.isEmpty()) { 
%>
    <div style="color:red;"><%= notification %></div>
<% 
    } 
%>
<jsp:include page="./footer.jsp"></jsp:include>





</body>
</html>