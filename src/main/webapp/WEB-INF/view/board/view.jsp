<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h3>${board.title }</h3>
		<div style="float: left; text-indent: 10px">
			<span>작성자</span>
			<c:if test="${empty board.writerId }">
				<span>탈퇴한회원</span>
			</c:if>
			<span><a href="${pageContext.servletContext.contextPath }/profile?userId=${board.writerId }">${board.writerId }</a></span>
		</div>
		<div>
			<span>작성일</span> <span>${board.writedAt}<span> | <span>조회</span>
					<span>${board.views }</span>
		</div>
		<p
			style="padding: 60px 10px 30px 10px; border-bottom: 1px solid #ccc;">
			${board.body }</p>
	</div>
	<div>
	<form action="${pageContext.servletContext.contextPath }/comment-new" method="post">
	<input type="hidden" name="boardId" value="${board.boardId }">
	<textarea rows="" cols="" name="commentBody"></textarea>
	<button type="submit">작성</button>
	</form>	
	</div>
	<div>
	<c:forEach var="i" items="${comments }">
	<p>작성자 ${i.writerId } 내용 ${i.body } 날짜 ${i.writedAt }
	<c:if test="${sessionScope.authUser != null && i.writerId != sessionScope.authUser.userId }">
	<a href="${pageContext.servletContext.contextPath }/comment-like?commentId=${i.commentId }">좋아요 ${i.like }</a>
	</c:if>
	<c:if test="${sessionScope.authUser.userId == i.writerId }">
	<a href="${pageContext.servletContext.contextPath }/comment-delete?commentId=${i.commentId }"><button type="button">삭제</button></a>
	</c:if>
	</p>
	</c:forEach>
	</div>
	<div style="text-align: right;">
		<c:if test="${sessionScope.authUser.userId == board.writerId}">
			<a href="${pageContext.servletContext.contextPath }/board/delete?boardId=${board.boardId }">
				<button type="button">삭제</button>
			</a>
			<a href="${pageContext.servletContext.contextPath }/board/update?boardId=${board.boardId }">
				<button type="button">수정</button>
			</a>
		</c:if>
		<a href="${pageContext.servletContext.contextPath }/board/list">
			<button type="button" class="bt bt2">목록</button>
		</a>
	</div>
</body>
</html>