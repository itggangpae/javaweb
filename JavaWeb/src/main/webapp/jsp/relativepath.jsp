<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.URL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상대 경로를 이용한 자원 읽기</title>
</head>
<body>
	<%
	String resourcePath = "./Git_Token.txt";
	char[] buff = new char[512];
	int len = -1;
	try (BufferedReader br = new BufferedReader(
			new InputStreamReader(
					new FileInputStream(resourcePath)));) {
		while ((len = br.read(buff)) != -1) {
			out.print(new String(buff, 0, len));
		}
	} catch (IOException ex) {
		out.println("예외 발생: " + ex.getMessage());
	}
	%>

</body>
</html>