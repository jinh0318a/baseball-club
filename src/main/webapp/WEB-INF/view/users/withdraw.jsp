<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<form action="${pageContext.servletContext.contextPath }/withdraw-handle" method="post">
	<input type="password" name="password">
	<button type="submit">회원탈퇴</button>
	</form>	
</body>
</html>