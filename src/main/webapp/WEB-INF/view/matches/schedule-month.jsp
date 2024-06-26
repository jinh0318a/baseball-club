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
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<div>
<a href="${pageContext.servletContext.contextPath }/schedule" class="no-deco-link">주간 일정</a> |
월별 일정 | 
<a href="${pageContext.servletContext.contextPath }/schedule-team" class="no-deco-link">팀별 일정</a>

</div>
	<a href="${pageContext.servletContext.contextPath }/schedule-month?month=${previous }" class="no-deco-link">&lt;</a>
 	${month }월 일정
	<a href="${pageContext.servletContext.contextPath }/schedule-month?month=${next }" class="no-deco-link">&gt;</a>
	
	<c:choose>
	<c:when test="${size != 0 }">
	<c:forEach var="i" items="${matches }">
	<p>경기일 ${i.matchDate }
	경기장 ${i.location }
	대진 ${i.summary }
	</p>
	</c:forEach>
	</c:when>
	<c:otherwise>
	경기 일정이 없습니다.
	</c:otherwise>
	</c:choose>
	
</body>
</html>