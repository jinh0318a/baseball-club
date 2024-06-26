<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<form action="${pageContext.servletContext.contextPath }/login-handle" method="post">
<input type="text" name="userId" placeholder="아이디">
<input type="password" name="password" placeholder="비밀번호">
<button type="submit">로그인</button>
</form>
<a href="${pageContext.servletContext.contextPath }/join">회원가입
</a>

</body>
</html>