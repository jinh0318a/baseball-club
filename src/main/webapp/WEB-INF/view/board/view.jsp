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
		<div class="board">
			<div class="board_box">
				<div
					style="padding: 60px 10px 30px 10px; border-bottom: 1px solid #ccc; margin-bottom: 10px;">
					<h2 style="text-align: center">
						<c:out value="${board.title }" />
					</h2>
					<div style="display: flex; justify-content: space-between;">
						<div style="text-indent: 10px">
							<span>작성자</span>
							<c:if test="${empty board.writerId }">
								<span>탈퇴한회원</span>
							</c:if>
							<span><a
								href="${pageContext.servletContext.contextPath }/profile?userId=${board.writerId }"
								class="no-deco-link">${board.writerId }</a></span>
						</div>
						<div style="text-indent: 10px">
							<span>작성일</span> <span>${board.writedAt}<span> | <span>조회</span>
									<span>${board.views }</span>
						</div>
					</div>
					<div>
						<pre>
					<c:out value="${board.body }" />
				</pre>
					</div>
					<h3 style="text-align: center;">현재 참여 인원 : ${capactiy }</h3>
					<c:if test="${!r }">
						<div
							style="display: flex; justify-content: center; text-align: center;">
							<c:if test="${clubEvent && !duplicate}">
								<a
									href="${pageContext.servletContext.contextPath }/participant?boardId=${board.boardId}">
									<button type="button" style="margin-left: 10px">참가신청</button>
								</a>
							</c:if>
							<c:if test="${clubEvent && duplicate }">
								<a
									href="${pageContext.servletContext.contextPath }/participant/cancel?boardId=${board.boardId}">
									<button type="button"
										style="margin-left: 10px; background-color: #FE2E2E">참가취소</button>
								</a>
							</c:if>
						</div>
					</c:if>
					<div style="display: flex; justify-content: space-between;">
						<div>
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
						</div>
						<div>
							<a href="${pageContext.servletContext.contextPath }/board/new">
								<button type="button" class="bt bt2" style="margin-right: 10px;">글쓰기</button>
							</a> <a href="${pageContext.servletContext.contextPath }/board/list">
								<button type="button" class="bt bt2">목록</button>
							</a>
						</div>
					</div>
				</div>

				<c:if test="${board.type != '공지사항' }">

					<form
						action="${pageContext.servletContext.contextPath }/comment-new"
						method="post" style="display: flex; align-items: stretch;">
						<input type="hidden" name="boardId" value="${board.boardId }">
						<textarea name="commentBody"
							style="border-line: 1px;; resize: none; flex: 2; padding: 8px;"></textarea>
						<button type="submit" class="p-2 fs-4 border-rounded"
							style="margin-left: 8px;">작성</button>
					</form>
					<b>댓글 (${count })</b>
					<div>
						<c:forEach var="i" items="${comments }">
							<p>
								${i.writerId } |
								<c:out value="${i.body }" />
								| ${i.writedAt } | 추천수 ${i.like }
								<c:if
									test="${sessionScope.authUser != null && i.writerId != sessionScope.authUser.userId }">
									<a
										href="${pageContext.servletContext.contextPath }/comment-like?commentId=${i.commentId }"
										class="no-deco-link"><button type="button">추천</button></a>
								</c:if>
								<c:if test="${sessionScope.authUser.userId == i.writerId }">
							| <a
										href="${pageContext.servletContext.contextPath }/comment-delete?commentId=${i.commentId }"><button
											type="button" style="background-color: #FE2E2E">삭제</button></a>
								</c:if>
							</p>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>