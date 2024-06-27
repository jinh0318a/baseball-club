<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팔로잉</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px; margin:auto; width:540px;">
		<div>
			팔로어 목록 ${follower }명
			<c:forEach var="i" items="${followers }">
				<a
					href="${pageContext.servletContext.contextPath }/profile?userId=${i.followerId }"
					class="no-deco-link">${i.followerId }</a>
			</c:forEach>
		</div>
		<div>
			팔로잉 목록 ${following }명
			<c:forEach var="i" items="${followings }">
				<a
					href="${pageContext.servletContext.contextPath }/profile?userId=${i.followingId }"
					class="no-deco-link">${i.followingId }</a>
			</c:forEach>
		</div>
	</div>
</body>
</html>