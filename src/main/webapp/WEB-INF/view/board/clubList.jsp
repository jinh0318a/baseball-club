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
	<div class="container">
		<div class="board-list">
			<p>구단게시판</p>
			<table>
				<thead>
					<tr>
						<th>게시판</th>
						<th>말머리</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<c:forEach var="one" items="${announcement }">

					<tr>
						<td>📢</td>
						<td class="warning">${one.category }</td>
						<td class="dark"><a
							href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }"
							class="no-deco-link fw-b"> ${one.title } </a></td>
						<td>${one.writerId }</td>
						<td>${one.writedAt }</td>
						<td>${one.views }</td>
					</tr>
				</c:forEach>
				<c:forEach var="one" items="${clubBoard }">
					<tr>
						<td>${one.board.type }</td>
						<td>${one.board.category }</td>
						<td><a
							href="${pageContext.servletContext.contextPath }/board?boardId=${one.board.boardId }"
							class="no-deco-link"> ${one.board.title } (${one.commentCount })</a></td>
						<td>${one.board.writerId }</td>
						<td>${one.board.writedAt }</td>
						<td>${one.board.views }</td>
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