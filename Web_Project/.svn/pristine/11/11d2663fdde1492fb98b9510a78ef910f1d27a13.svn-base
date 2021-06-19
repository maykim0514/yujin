<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
<link href="${pageContext.request.contextPath}/images/iconpng.png" rel="icon">
<style>
.real .inner {
	margin-left: 39% !important;
}

.is-preload {
	align: center !important;
}
.button{
	width: 100%;
}

.find{
	margin-right: 5%;
}
.findid{
	margin-left: 9%;
}
.col-12-xsmall{
	width: 40% !important;
}
#logo{
		width: 350px !important;
	}
@media screen and (max-width: 736px) {
	.real .inner {
		margin-left: 28% !important;
	}
	#userid{
		width: 200px !important;
	}
	#userpw{
		width: 200px !important;
	
	}
	.button{
		width: 200px !important;
	}
	.find{
		display: block;
		margin-left: 0;
	}
	#logo{
		width: 200px !important;
		}
	.row.gtr-uniform {
  	  margin-left: -45px;
	}
}
</style>
</head>
<body class="is-preload">
	
	<%
		String check = request.getHeader("Cookie");
		String joinid = "";
		if(check!=null){
			Cookie[] cookies = request.getCookies();
			for(Cookie c : cookies){
				if(c.getName().equals("joinid")){
					System.out.print(c.getValue());
					joinid=c.getValue();
				}
			}
		}
		String result = request.getParameter("result");
		
		if(result!=null && result.equals("false")){
	%>
			<script>alert("로그인 실패")</script>
	<%
		}else if(result!=null && result.equals("lost")){
	%>
			<script>alert("찾기 실패")</script>
	<%
		}else if(result!=null && result.equals("change_pw_fail")){
	%>
			<script>alert("비밀번호 변경 실패")</script>
	<%
		}else if(result!=null && result.equals("change_pw_success")){
	%>
			<script>alert("비밀번호 변경 완료!")</script>
	<%
		}
	%>
	<div class="wrapper real" style='margin-bottom: 180px;'>
		<header class="major">
			<a class="logo" href="${pageContext.request.contextPath}/index.jsp" style="width:10%;"><img id="logo" src="${pageContext.request.contextPath}/images/logo.png" alt="ez-market" style="width:100%;"/></a>
		</header>
		<div class="inner">
			<form action="${pageContext.request.contextPath}/member/MemberLoginOk.me" method="post" name="loginform">
				<div class="row gtr-uniform">
					<div class="col-6 col-12-xsmall">
							아이디 
								<input value="<%=joinid%>" type="text" name="userid" id="userid">
								<div style="line-height:130%; font-size:12px; font-family: 돋움;">
									<br>
								</div>
							비밀번호
								<input type="password" name="userpw" id="userpw">
								<br>
							<input class="button" type="button" value="로그인" onclick="sendit()">
							<br><br>
							<a class="find findid" href="${pageContext.request.contextPath}/find_id.me">아이디 찾기</a>
							<a class="find" href="${pageContext.request.contextPath}/find_pw1.me">비밀번호 찾기</a>
							<a class="find" href="${pageContext.request.contextPath}/join.me">회원가입</a>
							
					</div>
				</div>
			</form>
		</div>
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
	function sendit() {
		const loginform = document.loginform;
		const userid = document.loginform.userid;
		const userpw = document.loginform.userpw;

		if (userid.value == '' || userid.value == null) {
			alert("아이디를 입력하세요.");
			userid.focus();
			return false;
		}
		if (userpw.value == '' || userpw.value == null) {
			alert("비밀번호를 입력하세요.");
			userpw.focus();
			return false;
		}
		loginform.submit();
	}
</script>
</html>