<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 전송</title>
</head>
<body>
	<h2 align="center">폼에 데이터를 입력한 후 '전송' 버튼을 클릭하세요.</h2>
	<form action="viewparameter.jsp" method="get">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" size="10" name="name"></td>
			</tr>

			<tr>
				<td>직업</td>
				<td><select name=job>
						<option selected>무직</option>
						<option>회사원</option>
						<option>전문직</option>
						<option>학생</option>
				</select></td>
			</tr>
			<tr>
				<td>좋아하는 스포츠</td>
				<td><input type="checkbox" name="sports" value="baseball">야구
					<input type="checkbox" name="sports" value="soccer">축구 <input
					type="checkbox" name="sports" value="basketball">농구 <input
					type="checkbox" name="sports" value="volleyball">배구</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type=submit value="확인">
					&nbsp; <input type=reset value="취소"></td>
			</tr>
		</table>
	</form>
</body>
<style>
table {
	margin-left: auto;
	margin-right: auto;
	border: 1px solid black;
	border-spacing: 5px;
}
</style>
</html>