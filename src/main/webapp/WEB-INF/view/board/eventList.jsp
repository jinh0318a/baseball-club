<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 게시판</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<div>
		<%@ include file="/WEB-INF/view/common/header.jsp"%>
	</div>
	<div class="container">
		<div class="board-list">
			<p>이벤트게시판</p>
			<table>
				<thead>
					<tr>
						<th>게시판</th>
						<th>말머리</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<c:forEach var="one" items="${announcement }">
					<tr>
						<td>📢</td>
						<td class="warning">${one.category }</td>
						<td class="dark"><a
							href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }">
								${one.title } </a></td>
						<td>${one.writerId }</td>
						<td>${one.writedAt }</td>
					</tr>
				</c:forEach>
				<c:forEach var="one" items="${eventBoard }">
					<tr>
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
			<div class="text-center">
				<a>${totalPages }</a>
			</div>
			<div>
				<a href="${pageContext.servletContext.contextPath }/board/new"
					class="no-deco-link"><button type="button" class="b-1 ">새글작성</button></a>
			</div>
		</div>
	</div>
</body>
</html>