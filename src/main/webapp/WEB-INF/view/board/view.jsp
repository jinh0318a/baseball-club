<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px;">
		<div>
			<h3>${board.title }</h3>
			<div style="float: left; text-indent: 10px">
				<span>작성자</span>
				<c:if test="${empty board.writerId }">
					<span>탈퇴한회원</span>
				</c:if>
				<span><a
					href="${pageContext.servletContext.contextPath }/profile?userId=${board.writerId }"
					class="no-deco-link">${board.writerId }</a></span>
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
			<form action="${pageContext.servletContext.contextPath }/comment-new"
				method="post">
				<input type="hidden" name="boardId" value="${board.boardId }">
				<textarea name="commentBody"
					style="width: 100%; height: 6.25em; border-line:1px; ; resize: none;"></textarea>
				<button type="submit" style="float:right" class="p-2 fs-4 border-rounded">작성</button>
			</form>
		</div>
		<div>
			<c:forEach var="i" items="${comments }">
				<p>
					작성자 ${i.writerId } 내용 ${i.body } 날짜 ${i.writedAt } 좋아요 ${i.like }
					<c:if
						test="${sessionScope.authUser != null && i.writerId != sessionScope.authUser.userId }">
						<a
							href="${pageContext.servletContext.contextPath }/comment-like?commentId=${i.commentId }"
							class="no-deco-link">추천</a>
					</c:if>
					<c:if test="${sessionScope.authUser.userId == i.writerId }">
						<a
							href="${pageContext.servletContext.contextPath }/comment-delete?commentId=${i.commentId }"><button
								type="button">삭제</button></a>
					</c:if>
				</p>
			</c:forEach>

			<div>
				<c:if test="${clubEvent && !duplicate}">
					<span>현재 참여 인원 : ${participantNum }</span>
					<a
						href="${pageContext.servletContext.contextPath }/participant?boardId=${board.boardId}">
						<button type="button">참가신청</button>
					</a>
				</c:if>
				<c:if test="${clubEvent && duplicate }">
					<span>현재 참여 인원 : ${participantNum }</span>
					<a
						href="${pageContext.servletContext.contextPath }/participant/cancel?boardId=${board.boardId}">
						<button type="button">참가취소</button>
					</a>
				</c:if>
			</div>
			<div style="text-align: right;">

				<c:if test="${sessionScope.authUser.userId == board.writerId}">
					<a
						href="${pageContext.servletContext.contextPath }/board/delete?boardId=${board.boardId }">
						<button type="button">삭제</button>
					</a>
					<a
						href="${pageContext.servletContext.contextPath }/board/update?boardId=${board.boardId }">
						<button type="button">수정</button>
					</a>
				</c:if>
				<a href="${pageContext.servletContext.contextPath }/board/list">
					<button type="button" class="bt bt2">목록</button>
				</a>
			</div>
		</div>
</body>
</html>