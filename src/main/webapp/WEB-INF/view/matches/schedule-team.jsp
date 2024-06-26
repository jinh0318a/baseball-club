<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀별 경기 일정</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<div>
<a href="${pageContext.servletContext.contextPath }/schedule" class="no-deco-link">주간 일정</a> | 
<a href="${pageContext.servletContext.contextPath }/schedule-month" class="no-deco-link">월별 일정</a> | 
팀별 일정
</div>
	<div>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=LG" class="no-deco-link">LG</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=KT" class="no-deco-link">KT</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=SSG" class="no-deco-link">SSG</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=NC" class="no-deco-link">NC</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=두산" class="no-deco-link">두산</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=KIA" class="no-deco-link">KIA</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=롯데" class="no-deco-link">롯데</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=삼성" class="no-deco-link">삼성</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=한화" class="no-deco-link">한화</a> |
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=키움" class="no-deco-link">키움</a>
	</div>
	<div>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=${teamName }&month=${previous }" class="no-deco-link">&lt;</a>
		${month }월 일정 <a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=${teamName }&month=${next }" class="no-deco-link">&gt;</a>
	</div>
	<div>
		<c:choose>
			<c:when test="${size != 0 }">
				<c:forEach var="i" items="${matches }">
					<p>경기일 ${i.matchDate } 경기장 ${i.location } 대진 ${i.summary }</p>
				</c:forEach>
			</c:when>
			<c:otherwise>
	경기 일정이 없습니다.
	</c:otherwise>
		</c:choose>
	</div>
</body>
</html>