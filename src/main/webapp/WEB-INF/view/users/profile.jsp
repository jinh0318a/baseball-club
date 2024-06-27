<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/053f0cac61.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>프로필</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div class="profile">
		<div class="text-right">
			<a href="${pageContext.servletContext.contextPath }/following"> <i
				class="fa-solid fa-user-plus no-deco-link"></i>
			</a>
		</div>
		<div class="text-center fs-3">
			<h2 class=" fw-b">프로필</h2>
		</div>
		<div>
			<p class="fs-4">
				아이디 <span class="fw-b">${foundUser.userId }</span>
			</p>
			<p class="fs-4">
				닉네임 <span class="fw-b">${foundUser.nickname }</span>
			</p>
			<p class="fs-4">
				선호구단 <span class="fw-b">${foundUser.club }</span>
			</p>
			<p class="fs-4">
				팔로워 <span class="hash fw-b">${follower }</span> 팔로잉<span
					class="hash fw-b"> ${following }</span>
			</p>
		</div>
		<div>
			<c:choose>
				<c:when test="${!followed }">
					<a
						href="${pageContext.servletContext.contextPath }/following-handle?userId=${foundUser.userId }"
						class="no-deco-link"><button type="button"
							class="b-1 justify-right">팔로우</button></a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageContext.servletContext.contextPath }/following-delete?userId=${foundUser.userId }"

						class="no-deco-link"><button type="button"
							class="b-1 float-right">언팔로우</button></a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>