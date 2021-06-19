<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기 - 일치하는 아이디</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
<link href="${pageContext.request.contextPath}/images/iconpng.png" rel="icon">
<style>
.real .inner {
	margin-left: 38% !important;
	width: 100%;
}

#findheader {
	width: 50%;
    margin-left: 25%;
}

#findheader > table{
	border: 0;
}

#head_btn {
	width: 100%;
}

.is-preload {
	align: center !important;
}

td {
	align: center !important;
	text-align: center;
}

.l {
	height: 20px;
}

#imgtd {
	padding: 0 !important;
	margin: 0 !important;
}

#findcontent .inner {
	width: 60% !important;
	align: center !important;
}

.step {
	font-size: 1.5em;
}

.step>span {
	margin-right: 10%;
}

#step3 {
	color: #0028B0;
	font-weight: bolder;
	margin-right: 0px !important;
}

#guide {
	text-align: center;
}

#demo-name {
	margin-left: 25%;
	width: 50%;
}

.actions {
	margin-left: 20% !important;
}

#find_id {
	margin-left: 40%;
}

table tbody tr {
	background-color: white !important;
}

.button {
	width: 10rem !important;
}

@media screen and (max-width: 736px) {
	#findcontent .inner {
		margin: 0 !important;
		width: 300px !important;
		align: center !important;
	}
	.in {
		margin-left: 51px !important;
		align: center !important;
	}
	#step1 {
		display: none;
	}
	#step2 {
		display: none;
	}
	#findheader{
		margin-top: 100px !important;
	}
	.phone_none{
		display: none;
	}
	.actions {
	margin-left: 0% !important;
	}
}
</style>
</head>
<body class="is-preload">
<c:set var="userid" value="${requestScope.userid}" />
	<!-- Header -->
	<header id="header" class="alt">
		<a class="logo" href="${pageContext.request.contextPath}/index.jsp"
			style="width: 10%;"><img
			src="${pageContext.request.contextPath}/images/logo.png"
			alt="ez-market" style="width: 100%; margin-left: 200%;" /></a>
		<nav id="nav" style="margin-right:20%">
			<ul>
				<li><a href="${pageContext.request.contextPath}/login.me">로그인</a></li>
				<li><a href="${pageContext.request.contextPath}/join.me">회원가입</a></li>
			</ul>
		</nav>
	</header>
	<!-- =============================================================== -->
	<div id="container" class="inner">

		<section id="findcontent">
			<div class="inner">
				<div class="in">
					<section id="findheader">
						<table>
							<tr>
								<td>고객님의 정보와 일치하는 아이디입니다.</td>
							</tr>
						</table>
					</section>
					<br class="phone_none"><br class="phone_none"><br class="phone_none">
					<table id="table">
						<tr style="border: hidden;">
							<c:choose>
								<c:when test="${userid!=null}">
									<td>정보와 일치하는 아이디 : " ${userid} "</td>
								</c:when>
								<c:otherwise>
									<td>정보와 일치하는 아이디가 없습니다.</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</table>
					<br class="phone_none">
					<br class="phone_none">
					<br class="phone_none">
					<br class="phone_none">
					<ul class="actions" id="button">
						<li id="login_btn"><a
							href="${pageContext.request.contextPath}/login.me"
							class="button primary">로그인</a></li>
						<li><a href="${pageContext.request.contextPath}/find_pw1.me"
							class="button">비밀번호 찾기</a></li>
					</ul>
				</div>
			</div>
		</section>
	</div>
	<br><br><br><br>
	<!-- =============================================================== -->
	<!-- Footer -->
	<div id="footer">
					<div class="copyright" style="background:#353535;color:#fff;">
						<div style="width:100%;height:50px;">
							<ul class = "footer_list" style="width:55%;height:50px;list-style:none;text-align:center;margin: 0 auto;">
								<li><a href="#">회사소개</a></li>
								<li><a href="#">광고문의</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">개인정보처리방침</a></li>
								<li><a href="#">고객센터</a></li>
							
							</ul>
						</div>	
						&copy; Untitled. All rights reserved. Lorem ipsum dolor sit amet.
					</div>
				</div>
</body>
<!-- Scripts -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>