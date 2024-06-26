<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투수 순위</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
	<c:forEach var="i" items="${pitcherRanking }">
	<p>순위 ${i.rank }
	선수명 ${i.name }
	팀명 ${i.team }
	방어율 ${i.era }
	경기수 ${i.game }
	승 ${i.win }
	패 ${i.lose }
	세이브 ${i.save }
	홀드 ${i.hold }
	이닝 ${i.ip }
	피안타 ${i.hit }
	피홈런 ${i.hr }
	볼넷 ${i.bb }
	삼진 ${i.so }
	실점 ${i.r }
	WHIP ${i.whip }
	</p>
	</c:forEach>
</body>
</html>