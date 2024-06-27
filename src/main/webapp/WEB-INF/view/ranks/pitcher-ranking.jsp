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
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px;">
		<div style="margin: auto; text-align: center; margin-bottom: 8px;">
			<a href="${pageContext.servletContext.contextPath }/hitter-ranking"
				class="no-deco-link">타자 순위</a> | <span style="color: hotpink;">투수
				순위</span>
		</div>
		<div>
			<table
				style="margin-left: auto; margin-right: auto; text-align: center">
				<tr>
					<th style="width: 5%;">순위</th>
					<th style="width: 5%;">선수명</th>
					<th style="width: 5%;">팀명</th>
					<th style="width: 5%;">방어율</th>
					<th style="width: 5%;">경기수</th>
					<th style="width: 5%;">승</th>
					<th style="width: 5%;">패</th>
					<th style="width: 5%;">세이브</th>
					<th style="width: 5%;">홀드</th>
					<th style="width: 8%;">이닝</th>
					<th style="width: 5%;">피안타</th>
					<th style="width: 5%;">피홈런</th>
					<th style="width: 5%;">볼넷</th>
					<th style="width: 5%;">삼진</th>
					<th style="width: 5%;">실점</th>
					<th style="width: 5%;">WHIP</th>
				</tr>
				<c:forEach var="i" items="${pitcherRanking }">
					<tr>
						<td>${i.rank }</td>
						<td>${i.name }</td>
						<td>${i.team }</td>
						<td>${i.era }</td>
						<td>${i.game }</td>
						<td>${i.win }</td>
						<td>${i.lose }</td>
						<td>${i.save }</td>
						<td>${i.hold }</td>
						<td>${i.ip }</td>
						<td>${i.hit }</td>
						<td>${i.hr }</td>
						<td>${i.bb }</td>
						<td>${i.so }</td>
						<td>${i.r }</td>
						<td>${i.whip }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>