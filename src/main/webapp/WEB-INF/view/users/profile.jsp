<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px; margin:auto; width:540px;">
		<div>
			<p>아이디 ${foundUser.userId }</p>
			<p>닉네임 ${foundUser.nickname }</p>
			<p>선호구단 ${foundUser.club }</p>
			<p>팔로워 ${follower } 팔로잉 ${following }</p>
		</div>

		<div>
			<c:choose>
				<c:when test="${!followed }">
					<a
						href="${pageContext.servletContext.contextPath }/following-handle?userId=${foundUser.userId }"
						class="no-deco-link">팔로우</a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageContext.servletContext.contextPath }/following-delete?userId=${foundUser.userId }"
						class="no-deco-link">팔로우 취소</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>