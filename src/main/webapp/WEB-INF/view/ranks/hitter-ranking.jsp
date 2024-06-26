<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타자 순위</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
	<c:forEach var="i" items="${hitterRanking }">
	<p>
	순위 ${i.rank }
	선수명 ${i.name }
	팀명 ${i.teamName }
	타율 ${i.average }
	경기수 ${i.game }
	타석 ${i.pa }
	타수 ${i.atBats }
	득점 ${i.score }
	안타 ${i.hit }
	홈런 ${i.homerun }
	RBI ${i.rbi }
	볼넷 ${i.bb }
	삼진 ${i.so }
	OPS ${i.ops }
	</p>
	</c:forEach>
</body>
</html>