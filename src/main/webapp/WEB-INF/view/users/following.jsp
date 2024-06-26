<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팔로잉</title>
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<div>
팔로어 목록 ${follower }명
<c:forEach var="i" items="${follwers }">
<a href="${pageContext.servletContext.contextPath }/profile?userId=${i.followerId }">${i.followerId }</a>
</c:forEach>
</div>
<div>
팔로잉 목록 ${following }명
<c:forEach var="i" items="${followings }">
<a href="${pageContext.servletContext.contextPath }/profile?userId=${i.followingId }">${i.followingId }</a>
</c:forEach>
</div>

</body>
</html>