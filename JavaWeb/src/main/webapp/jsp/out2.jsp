<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out 객체</title>
</head>
<body>
	<% int grade = -11;
		if(grade >= 0){
	%>
	<p><%=grade %></p>
	<%} else { %>
	<p><%= grade*-1 %></p>
	<% }%>
	<% 
		if(grade >= 0)
			out.println("<p>" + grade + "</p>");
		else
			out.println("<p>" + grade*-1 + "</p>");
	%>
</body>
</html>