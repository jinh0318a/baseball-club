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
	<div style="padding: 8px; margin: auto; width: 1140px;">
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
				<c:forEach var="one" items="${announcement }">
					<tr>
						<td>${one.boardId }</td>
						<td style="color: red">${one.type }</td>
						<td>${one.category }</td>
						<td><a
							href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }">
								${one.title } </a></td>
						<td>${one.writerId }</td>
						<td>${one.writedAt }</td>
					</tr>
				</c:forEach>
				<c:forEach var="one" items="${clubBoard }">
					<tr>
						<td>${one.boardId }</td>
						<td>${one.type }</td>
						<td>${one.category }</td>
						<td><a
							href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }"
							class="no-deco-link"> ${one.title } </a></td>
						<td>${one.writerId }</td>
						<td>${one.writedAt }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<a href="${pageContext.servletContext.contextPath }/board/new"
				class="no-deco-link"><button type="button">새글작성</button></a>
		</div>
	</div>
</body>
</html>