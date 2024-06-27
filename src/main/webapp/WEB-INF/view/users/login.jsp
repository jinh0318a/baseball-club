<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/053f0cac61.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px; margin:auto; width:540px;">
		<form action="${pageContext.servletContext.contextPath }/login-handle"
			method="post">
			<input type="text" name="userId" placeholder="아이디"> <input
				type="password" name="password" placeholder="비밀번호">
			<button type="submit">로그인</button>
		</form>
		<a href="${pageContext.servletContext.contextPath }/join"
			class="no-deco-link">회원가입 </a>
	</div>
	<section class="login">
		<div class="login_box">
			<div class="left">
				<div class="top_link">
					<a href="${pageContext.servletContext.contextPath }/index"> <i
						class="fa-solid fa-baseball-bat-ball fa-1x no-deco-link"></i>
					</a> <a href="${pageContext.servletContext.contextPath }/join"
						class="no-deco-link"">회원가입</a>
				</div>
				<div class="contact">
					<form
						action="${pageContext.servletContext.contextPath }/login-handle"
						method="post">
						<h3>로그인</h3>
						<input type="text" name="userId" placeholder="아이디"> <input
							type="password" name="password" placeholder="비밀번호">
						<button class="submit">로그인</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>