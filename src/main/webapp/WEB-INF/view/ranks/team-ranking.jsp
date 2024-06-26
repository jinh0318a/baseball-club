<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 순위</title>
</head>
<body>
	<c:forEach var="i" items="${teamRanking }">
	<p>순위 ${i.rank }
	팀명 ${i.name }
	경기수 ${i.games }
	승 ${i.win }
	패 ${i.lose }
	무 ${i.draw }
	승률 ${i.winningPercentage }
	게임차 ${i.gameBehind }
	연속 ${i.stream }</p>
	</c:forEach>
</body>
</html>