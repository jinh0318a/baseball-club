<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/053f0cac61.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>주간 일정</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div class="container">
		<div style="margin: auto; text-align: center; margin-bottom: 8px;">
			<span style="color: hotpink;">주간 일정</span> | <a
				href="${pageContext.servletContext.contextPath }/schedule-month"
				class="no-deco-link">월별 일정</a> | <a
				href="${pageContext.servletContext.contextPath }/schedule-team"
				class="no-deco-link">팀별 일정</a>

		</div>
		<div style="margin: auto; text-align: center;">
			<a
				href="${pageContext.servletContext.contextPath }/schedule?week=${lastWeek }"
				class="no-deco-link"><i class="fa-solid fa-caret-left fa-xl"></i></a> <span
				style="color: blue;">${thisWeek }</span> ~ <span
				style="color: blue;">${endDate }</span> 일정 <a
				href="${pageContext.servletContext.contextPath }/schedule?week=${nextWeek }"
				class="no-deco-link"><i class="fa-solid fa-caret-right fa-xl"></i></a>
		</div>
		<div>
			<c:choose>
				<c:when test="${size != 0 }">
					<table
						style="margin-left: auto; margin-right: auto; text-align: center">
						<tr>
							<th style="width: 25%">경기일</th>
							<th style="width: 25%">경기</th>
							<th style="width: 25%">경기장</th>
						</tr>
						<c:forEach var="i" items="${matches }" varStatus="status">
							<c:set var="show"
								value="${status.index == 0 || matches[status.index-1].matchDate != i.matchDate}" />
							<tr>

								<td><c:if test="${show }">
									${i.matchDate }
								</c:if></td>
								<td>${i.summary }</td>
								<td>${i.location }</td>
							</tr>
						</c:forEach>
					</table>
				</c:when>
				<c:otherwise>
	경기 일정이 없습니다.
	</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>