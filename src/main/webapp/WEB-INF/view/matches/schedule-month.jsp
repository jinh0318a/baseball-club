<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 일정</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px;">
		<div class="board-list">
			<div style="margin: auto; text-align: center; margin-bottom: 8px;">
				<a href="${pageContext.servletContext.contextPath }/schedule"
					class="no-deco-link">주간 일정</a> | <span style="color: hotpink">월별
					일정</span> | <a
					href="${pageContext.servletContext.contextPath }/schedule-team"
					class="no-deco-link">팀별 일정</a>

			</div>
			<div style="margin: auto; text-align: center;">
				<a
					href="${pageContext.servletContext.contextPath }/schedule-month?month=${previous }"
					class="no-deco-link">&lt;</a> <span style="color: blue;">${month }</span>월
				일정 <a
					href="${pageContext.servletContext.contextPath }/schedule-month?month=${next }"
					class="no-deco-link">&gt;</a>
			</div>
			<c:choose>
				<c:when test="${size != 0 }">
					<table
						style="margin-left: auto; margin-right: auto; text-align: center; margin-top: 0;">
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