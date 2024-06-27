<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<div style="padding: 8px; margin: auto; width: 1140px; margin:auto; width:540px;">
<a href="${pageContext.servletContext.contextPath }/modify" class="no-deco-link">정보수정</a>
<a href="${pageContext.servletContext.contextPath }/following" class="no-deco-link">팔로잉</a>
<a href="${pageContext.servletContext.contextPath }/withdraw" class="no-deco-link">회원탈퇴</a>
</div>
</body>
</html>