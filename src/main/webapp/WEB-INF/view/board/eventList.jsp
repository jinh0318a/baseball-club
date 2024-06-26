<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
		<%@ include file="/WEB-INF/view/common/header.jsp"%>
	</div>
	<div>
		<a href="${pageContext.servletContext.contextPath }/board/new">새글작성</a>
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
			<c:forEach var="one" items="${eventBoard }">
				<tr>
					<td>${one.boardId }</td>
					<td>${one.type }</td>
					<td>${one.category }</td>
					<td><a
						href="${pageContext.servletContext.contextPath }/board?boardId=${one.boardId }">
							${one.title } </a></td>
					<td>${one.writerId }</td>
					<td>${one.writedAt }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>