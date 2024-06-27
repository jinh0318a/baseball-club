<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/053f0cac61.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>마이페이지 | 정보수정</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<section class="sign">
		<div class="sign_box">
			<div class="in">
				<div class="top_link">
					<a href="${pageContext.servletContext.contextPath }/index"> <i
						class="fa-solid fa-baseball-bat-ball fa-1x no-deco-link"></i> 
					</a>
					<a href="${pageContext.servletContext.contextPath }/mypage"> 
						<i class="fa-solid fa-user no-deco-link mx-2"></i>
					</a>
				</div>
				<div class="contacts">
					<form
						action="${pageContext.servletContext.contextPath }/modify-handle"
						method="post">
						<h3>정보수정</h3>
						<div class="my-5">
							<span>아이디</span> <span class="fw-2 fs-3 kbo">${sessionScope.authUser.userId }</span>

						</div>
						<div>
							<label for="password-input">비밀번호</label> <input type="password"
								name="password" id="password-input">
						</div>
						<div>
							<label for="nickname-input">닉네임</label> <input type="text"
								name="nickname" id="nickname-input"
								placeholder=" ${sessionScope.authUser.nickname }">
						</div>
						<div class="my-5">
							<span>생년월일</span> <span>${sessionScope.authUser.birth }</span>
						</div>
						<div class="my-5">
							<span>성별</span> <span>${sessionScope.authUser.gender }</span>
						</div>
						<div>
							<label for="email-input">이메일</label> <input type="text"
								name="email" id="email-input"
								placeholder=" ${sessionScope.authUser.email }">
						</div>
						<div>
							선호구단
							<div class="d-flex align-center g-05">
								<input type="radio" name="club" value="LG트윈스" id="lg-radio"><label
									for="lg-radio">LG</label> <input type="radio" name="club"
									value="KT위즈" id="kt-radio"><label for="kt-radio">KT</label>
								<input type="radio" name="club" value="SSG랜더스" id="ssg-radio"><label
									for="ssg-radio">SSG</label> <input type="radio" name="club"
									value="NC다이노스" id="nc-radio"><label for="nc-radio">NC</label>
								<input type="radio" name="club" value="두산베어스" id="dosan-radio"><label
									for="dosan-radio">두산</label> <input type="radio" name="club"
									value="KIA타이거즈" id="kia-radio"><label for="kia-radio">KIA</label>
								<input type="radio" name="club" value="롯데자이언츠" id="lotte-radio"><label
									for="lotte-radio">롯데</label> <input type="radio" name="club"
									value="삼성라이온즈" id="samsung-radio"><label
									for="samsung-radio">삼성</label> <input type="radio" name="club"
									value="한화이글스" id="hanhwa-radio"><label
									for="hanhwa-radio">한화</label> <input type="radio" name="club"
									value="키움히어로즈" id="kiwoom-radio"><label
									for="kiwoom-radio">키움</label>
							</div>
						</div>
						<button class="submit">수정</button>
					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>