<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀별 경기 일정</title>
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<div>
<a href="${pageContext.servletContext.contextPath }/schedule">주간 일정</a>
<a href="${pageContext.servletContext.contextPath }/schedule-month">월별 일정</a> | 
팀별 일정 | 
</div>
	<div>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=LG">LG</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=KT">KT</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=SSG">SSG</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=NC">NC</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=두산">두산</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=KIA">KIA</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=롯데">롯데</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=삼성">삼성</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=한화">한화</a>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=키움">키움</a>
	</div>
	<div>
		<a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=${teamName }&month=${previous }">&lt;</a>
		${month }월 일정 <a
			href="${pageContext.servletContext.contextPath }/schedule-team?teamName=${teamName }&month=${next }">&gt;</a>
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