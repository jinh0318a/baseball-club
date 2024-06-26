<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/053f0cac61.js" crossorigin="anonymous"></script>
</head>
<body>
	<div style="display: flex; justify-content:space-between;">
		<div style="display: flex; justify-content:space-between; gap:40px;">
			<div class="no-deco-link">
				<a href="${pageContext.servletContext.contextPath }/index">
					<i class="fa-solid fa-baseball-bat-ball fa-3x"></i>
				</a>
			</div>
			<form style="" action="${pageContext.servletContext.contextPath }/search">
				<input style="" type="text" placeholder="검색어를 입력하세요" name="word"/>
				<i class="fa-solid fa-magnifying-glass icon-search"></i>
				<button type="submit">검색</button>
			</form>
		</div>
		<div style="justify-content:space-between; gap: 10px;">
			<c:choose>
				<c:when test="${sessionScope.authUser == null }">
					<a href="${pageContext.servletContext.contextPath }/login">로그인</a>
					<a href="${pageContext.servletContext.contextPath }/join">회원가입</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.servletContext.contextPath }/mypage">마이페이지</a>
					<a href="${pageContext.servletContext.contextPath }/logout">로그아웃</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div style="align-items: center;">
		<a href="${pageContext.servletContext.contextPath }/team-ranking">순위</a>
		<a href="${pageContext.servletContext.contextPath }/schedule">경기일정</a>
		<a href="${pageContext.servletContext.contextPath }/record">기록실</a>
		<a href="${pageContext.servletContext.contextPath }/board/list">자유게시판</a>
		<a href="${pageContext.servletContext.contextPath }/board/club">구단게시판</a>
		<a href="${pageContext.servletContext.contextPath }/board/event">이벤트게시판</a>
	</div>
</body>
</html>