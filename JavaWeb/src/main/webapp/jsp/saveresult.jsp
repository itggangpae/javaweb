<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>저장 결과 페이지</title>
</head>
<body>
	<%
		String result = request.getParameter("result");
		if(result.equals("true")){
			out.println("저장 성공");
		}
		else{
			out.println("저장 실패");
		}
	%>
</body>
</html>