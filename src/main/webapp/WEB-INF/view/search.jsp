<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
	<div>${word }검색결과</div>
	<div>
		경기 일정
		<c:choose>
			<c:when test="${matchsize != 0 }">
				<c:forEach var="i" items="${matches }">
					<p>경기일 ${i.matchDate } 경기장 ${i.location } 대진 ${i.summary }</p>
				</c:forEach>
			</c:when>
			<c:otherwise>
	<p>경기 일정이 없습니다.</p>
	</c:otherwise>
		</c:choose>
	</div>
	<div>
		게시판
		<c:choose>
		<c:when test="${boardsize != 0 }">
		<c:forEach var="one" items="${boards }">
			<p>
				${one.boardId } ${one.type } ${one.category } <a
					href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }" class="no-deco-link">
					${one.title } </a> ${one.writerId }
			</p>
		</c:forEach>
		</c:when>
		<c:otherwise>
		<p>게시판 검색 결과가 없습니다.</p>
		</c:otherwise>
		</c:choose>
	</div>

</body>
</html>