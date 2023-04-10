<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

</head>

<body>
<div style="position:fixed; button:1px; right:35px; bottom: 20px;">
<a href="#header"><img src="${pageContext.request.contextPath}/resources/img/t.png" title="위로가기"></a>
</div>

	<header id="header">
		<div class="header">
			<div class="container">
				<h1>
					<a href="${pageContext.request.contextPath}/main"><em><img src="<%=request.getContextPath()%>/resources/img/cinemu_logo2.png"></em>
					</a>
				</h1>


				<div class="mainR">
				<c:choose>
				<c:when test="${sessionScope.sessionID == null }">
					<li><a href="${pageContext.request.contextPath}/member/loginForm"><img src="<%=request.getContextPath()%>/resources/img/upper_menu/login2.png"><br>로그인</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/member/mypage"><img src="<%=request.getContextPath()%>/resources/img/upper_menu/mypage.png"><br>마이페이지</a></li>
					<li><a href="${pageContext.request.contextPath}/member/logout"><img src="<%=request.getContextPath()%>/resources/img/upper_menu/login2.png"><br>로그아웃</a></li>
					</c:otherwise>
					</c:choose>
					<li><a href="${pageContext.request.contextPath}/member/joinForm"><img src="<%=request.getContextPath()%>/resources/img/upper_menu/login1.png"><br>회원가입</a></li>
				
					
					<li><a href="${pageContext.request.contextPath}/qaboard/qalist"><img src="<%=request.getContextPath()%>/resources/img/upper_menu/qnacenter.png"><br>Q&A 게시판</a></li>

				</div>
			</div>
		</div>


	</header>