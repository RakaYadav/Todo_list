<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add todo_list</title>
</head>
<body>
	<jsp:include page="./header.jsp"></jsp:include>
<% 
    String message = (String) request.getAttribute("message");
    if (message != null && !message.isEmpty()) { 
%>
    <div style="color:green;"><%= message %></div>
<% 
    } 
%>
	<h2>todolist</h2>
	<jsp:include page="./footer.jsp"></jsp:include>

</body>
</html>