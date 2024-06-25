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
				<input style="" type="text" placeholder="검색어를 입력하세요" name=""/>
				<i class="fa-solid fa-magnifying-glass icon-search"></i>
				<button type="button">검색</button>
			</form>
		</div>
		<div style="justify-content:space-between; gap: 10px;">
			<c:choose>
				<c:when test="${sessionScope.auth == null }">
					<a href="">로그인</a>
					<a href="">회원가입</a>
				</c:when>
				<c:otherwise>
					<a href="">마이페이지</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div style="align-items: center;">
		<a>순위</a>
		<a>경기일정</a>
		<a>기록실</a>
		<a>전체게시판</a>
		<a>구단게시판</a>
		<a>거래게시판</a>
	</div>
</body>
</html>