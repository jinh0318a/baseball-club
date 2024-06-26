<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기록실</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
	<a href="${pageContext.servletContext.contextPath }/hitter-ranking" class="no-deco-link">타자 순위</a>
	<a href="${pageContext.servletContext.contextPath }/pitcher-ranking" class="no-deco-link">투수 순위</a>
</body>
</html>