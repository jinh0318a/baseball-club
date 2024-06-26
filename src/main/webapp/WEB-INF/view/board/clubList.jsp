<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구단 게시판</title>
</head>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
<body>
<div>
		<%@ include file="/WEB-INF/view/common/header.jsp"%>
	</div>
	<div>
		<a href="${pageContext.servletContext.contextPath }/board/new" class="no-deco-link">새글작성</a>
	</div>
	<div>
		<table>
			<tr>
				<th>번호</th>
				<th>게시판</th>
				<th>말머리</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:forEach var="one" items="${clubBoard }">
				<tr>
					<td>${one.boardId }</td>
					<td>${one.type }</td>
					<td>${one.category }</td>
					<td><a
						href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }" class="no-deco-link">
							${one.title } </a></td>
					<td>${one.writerId }</td>
					<td>${one.writedAt }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>