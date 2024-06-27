<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/053f0cac61.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div class="">
		<div class="mypage">
			<div class="inbox">
				<h2>마이페이지</h2>
				<a href="${pageContext.servletContext.contextPath }/modify"
					class="no-deco-link">
					<button type="button" class="button button2">회원정보수정</button>
				</a> <a href="${pageContext.servletContext.contextPath }/following"
					class="no-deco-link">
					<button type="button" class="button button2">팔로잉</button>
				</a> <a href="${pageContext.servletContext.contextPath }/withdraw"
					class="no-deco-link">
					<button type="button" class="button button2">회원탈퇴</button>
				</a>
			</div>
		</div>
	</div>

</body>
</html>