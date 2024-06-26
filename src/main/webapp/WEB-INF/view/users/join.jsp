<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<div>
		<form action="${pageContext.servletContext.contextPath }/join-handle"
			method="post">
			<div>
				아이디 <input type="text" name="userId">
			</div>
			<div>
				비밀번호 <input type="password" name="password">
			</div>
			<div>
				닉네임 <input type="text" name="nickname">
			</div>
			<div>
				생년월일 <input type="date" name="birth">
			</div>
			<div>
				성별 <input type="radio" name="gender" value="남" />남 <input
					type="radio" name="gender" value="여" />여
			</div>
			<div>
				이메일 <input type="text" name="email">
			</div>
			<div>
				선호구단 <input type="radio" name="club" value="LG트윈스">LG <input
					type="radio" name="club" value="KT위즈">KT <input
					type="radio" name="club" value="SSG랜더스">SSG <input
					type="radio" name="club" value="NC다이노스">NC <input
					type="radio" name="club" value="두산베어스">두산 <input
					type="radio" name="club" value="KIA타이거즈">KIA <input
					type="radio" name="club" value="롯데자이언츠">롯데 <input
					type="radio" name="club" value="삼성라이온즈">삼성 <input
					type="radio" name="club" value="한화이글스">한화 <input
					type="radio" name="club" value="키움히어로즈">키움
			</div>
			<div>
				<button type="submit">회원가입</button>
			</div>
		</form>
	</div>

</body>
</html>