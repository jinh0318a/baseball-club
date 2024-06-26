<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<a href="${pageContext.servletContext.contextPath }/modify">정보수정</a>
<a href="${pageContext.servletContext.contextPath }/following">팔로잉</a>
<a href="${pageContext.servletContext.contextPath }/withdraw">회원탈퇴</a>
</body>
</html>