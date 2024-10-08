<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그공놀 | 팀 순위</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css">
</head>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<div style="padding: 8px; margin: auto; width: 1140px;">
		<div class="board-list">
			<div style="text-align: center; margin: auto; margin-top: 10px;">
				<table style="margin-left: auto; margin-right: auto;">
					<thead>
						<tr>
							<th style="width: 6%">순위</th>
							<th colspan="2" style="width: 15%">팀명</th>
							<th style="width: 10%">경기수</th>
							<th style="width: 10%">승</th>
							<th style="width: 10%">패</th>
							<th style="width: 10%">무</th>
							<th style="width: 10%">승률</th>
							<th style="width: 10%">게임차</th>
							<th style="width: 8%">연속</th>
						</tr>
					</thead>
					<c:forEach var="i" items="${teamRanking }">
						<tr>
							<td>${i.rank }</td>
							<td colspan="2">
								<div
									style="display: flex; justify-content: center; text-align: center;">
									<c:if test="${i.name == 'KIA'}">
										<img
											src="img/kia-tigers.jpg"
											witdth="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == '키움'}">
										<img
											src="img/kiwoon-heros.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == '한화'}">
										<img
											src="img/hanhwa-eagles.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == '삼성'}">
										<img
											src="img/samsung-lions.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == '롯데'}">
										<img
											src="img/lotte-giants.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == '두산'}">
										<img
											src="img/doosan-bears.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == 'LG'}">
										<img
											src="img/lg-twins.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == 'KT'}">
										<img
											src="img/kt-wiz.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == 'SSG'}">
										<img
											src="img/ssg-landers.jpg"
											width="30px" height="30px" />
									</c:if>
									<c:if test="${i.name == 'NC'}">
										<img
											src="img/nc-dinos.png"
											width="30px" height="30px" />
									</c:if>
									<span style="margin-left: 10px;">${i.name }</span>
								</div>
							</td>
							<td>${i.games }</td>
							<td>${i.win }</td>
							<td>${i.lose }</td>
							<td>${i.draw }</td>
							<td>${i.winningPercentage }</td>
							<td>${i.gameBehind }</td>
							<td>${i.stream }</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
</body>
</html>