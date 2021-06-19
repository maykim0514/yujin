<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기 - 아이디 입력</title>
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
	width: 100%;
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
.step{
	font-size: 1.5em;
}
.step > span{
	margin-right: 10%;
}
#step1{
	color: #0028B0;
	font-weight: bolder;
}
#step3{
	margin-right: 0px !important;
}
#guide{
	text-align: center;
}
#demo-name{
	margin-left: 25%;
	width: 50%;
}
.actions{
	margin-left: 40% !important;
}
#find_id{
	margin-left: 39.5%;
}
table tbody tr {
	background-color: white !important;
}
@media screen and (max-width: 736px) {
	#step3{
		display: none;
	}
	#step2{
		display: none;
	}
	#step1 {
    	margin-left: 0 !important;
    	font-size: 20px;
	}
	.actions{
		margin-left: 0px !important;
	}
	#find_id{
		margin-left: 37.8px !important;
	}
	#demo-name {
	    margin-left: 0;
	    width: 100%;
	}
	#find_id {
	    margin-left: 10px !important;
	}
}
</style>
</head>
<body class="is-preload">
<%
		String result = request.getParameter("result");
		
		if(result!=null && result.equals("false")){
	%>
			<script>alert("정보가 일치하는 계정이 없습니다.")</script>
	<%
		}
	%>
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
					<br><br>
					<span class="step">
						<span id="step1">01. 아이디 입력</span>
						<span id="step2">02. 본인 확인</span>
						<span id="step3">03. 비밀번호 재설정</span>
					</span>
					
					<br>
					<br>
					<br>
					<br>
					<p id="guide">비밀번호를 찾고자 하는 아이디를 입력해주세요.</p>
					<input type="text" name="userid" id="demo-name" value=""
								placeholder="아이디" /><br>
					<ul class="actions" id="button">
					<li><a href="javascript:sendit();" class="button primary">확 인</a></li>
				</ul><br>
					<a href="${pageContext.request.contextPath}/find_id.me" id="find_id">아이디 찾기 바로가기</a>
				</div>
				<br><br><br><br>
			</div>
		</section>
	</div>
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
<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

//입력값 확인
function sendit() {
	if ($('input[name=userid]').val() == "" || $('input[name=userid]').val() == null) {
		alert("아이디를 입력하세요.")
		$('input[name=userid]').focus();
		return false;
		}
	
	location.href = "${pageContext.request.contextPath}/member/pw1.me?userid="+$('input[name=userid]').val();
}
</script>
</html>