<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃 처리</title>
<script>
	document.addEventListener('keydown', (e) => {
		alert(e.which);
		//F5 - 새로 고침을 눌렀을 때 처리
		if (e.which == 116)
			return false;
	});
	
	window.addEventListener('beforeunload', (e) => {
		var request = new XMLHttpRequest();
		request.open('GET', 'logout.jsp');
		request.send('');
	});
	
</script>
</head>
<body>
	<%
		session.setAttribute("test", "sample");
	%>
</body>
</html> 
	