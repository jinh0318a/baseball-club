<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/053f0cac61.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<div style="padding: 8px; margin: auto; width: 1140px;">
		<div
			style="display: flex; justify-content: space-between; align-items: center;">
			<div
				style="display: flex; justify-content: space-between; gap: 40px;">
				<div class="no-deco-link">
					<a href="${pageContext.servletContext.contextPath }/index"> <i
						class="fa-solid fa-baseball-bat-ball fa-3x no-deco-link"></i>
					</a>
				</div>
			</div>
			<div>
				<form action="${pageContext.servletContext.contextPath}/search">
					<input type="text" class="srch-bar" placeholder="검색어를 입력하세요"
						size=60 style="padding: 8px; height: 20px; border-radius: 10px"
						name="word">
				</form>
			</div>
			<div>
				<c:choose>
					<c:when test="${sessionScope.authUser == null }">
						<a href="${pageContext.servletContext.contextPath }/login"
							class="no-deco-link">로그인</a> | 
					<a href="${pageContext.servletContext.contextPath }/join"
							class="no-deco-link">회원가입</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.servletContext.contextPath }/mypage"
							class="no-deco-link">마이페이지</a> | 
					<a href="${pageContext.servletContext.contextPath }/logout"
							class="no-deco-link">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div
			style="align-items: center; display: flex; justify-content: space-around; margin-top: 10px; margin-bottom: 10px;">
			<a href="${pageContext.servletContext.contextPath }/team-ranking"
				class="no-deco-link">순위</a> <a
				href="${pageContext.servletContext.contextPath }/schedule"
				class="no-deco-link">경기일정</a> <a
				href="${pageContext.servletContext.contextPath }/record"
				class="no-deco-link">기록실</a> <a
				href="${pageContext.servletContext.contextPath }/board/list"
				class="no-deco-link">자유게시판</a> <a
				href="${pageContext.servletContext.contextPath }/board/club"
				class="no-deco-link">구단게시판</a> <a
				href="${pageContext.servletContext.contextPath }/board/event"
				class="no-deco-link">이벤트게시판</a>
		</div>
	</div>
</body>
</html>