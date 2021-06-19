<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기 - 인증 선택 방법</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
<link href="${pageContext.request.contextPath}/images/iconpng.png" rel="icon">
<style>
.in {
	width: 100% !important;
}
.wid150{
	width: 150px;
}
#findheader {
	width: 50%;
	margin-left:25%;
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

#findcontent .inner {
	width: 85% !important;
	align: center !important;
}
#demo-name {
	margin-left: 2%;
	width: 98%;
}

.phone {
	margin-left: 9px;
    width: 64.09% !important;
    float: left;

}
.email {
	margin-left: 9px;
    width: 64.09% !important;
    float: left;
}

.confirm {
	width: 34% !important;
	text-align: center !important;
	padding: 0 !important;
	clear: both;
	border-radius : 0 5px 5px 0 !important;
}
#userphone, #useremail{
	border-radius :  5px 0 0 5px  !important;
}
#findid_by_phone, #findid_by_email {
	margin-left: 270px;
	width: 500px;
}




#footer {
	clear: both;
}

table tbody tr {
	background-color: white !important;
}

.find_method{
	align: center !important;
	align-content: center !important;
}
.find_method > table{
		margin-left: 0;
		width: 98%;
	}
#findid_by_phone > table{
	width: 650px;
}
#findid_by_email > table{
	width: 650px;
}
.next{
	width: 650px !important;
}
#phone_id{
	width: 325px;
}
#email_id{
	width: 325px;
}
@media screen and (max-width: 736px) {
	body *{
		width: 100%;
	}
	#header > .logo {
	    line-height: 44px;
	    left: 1rem;
	    width: 60px !important;
	}
	#nav{
		height: 20px !important;	
	}
	#findid_by_email, #findid_by_phone{
		margin: 0;
	}
	.wid150{
		display: none;
	}
	.find_method > table {
		width : 300px !important;
	}
	.sameWidth{
		margin: 0 !important;
		width: 200px !important;
	}
	.phone, .email{
		margin: 0 !important;
		width: 150px !important;
	 }
	 .confirm{
		width: 50px !important;
	 }
	#findid_by_phone > table{
		width: 200px;
	}
	#findid_by_email > table{
		width: 200px;
	}
	.next{
		width: 200px !important;
		margin-left: 10px;
		float: left;
	}
	#findid_by_phone, #findid_by_email {
   		width: 220px;
	}
}
</style>
</head>
<body class="is-preload">
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
		<section id="findheader">
			<table>
				<tr>
					<td id="phone_id" onclick="phone_id();" class="head_btn selected default_id"><div style=" color: #0028b0; font-weight: bold; float: right;" id="find_phone">휴대폰으로 찾기</div></td>
					<td id="email_id" style=" border-left: solid #d3d3d3 1px;" onclick="phone_email();" class="head_btn selected"><div id="find_email" style="float: left;">이메일로 찾기</div></td>
				</tr>
			</table>
		</section>
		<br><br>
		<section id="findcontent">
			<div class="inner">
				<div class="in find_method">
					<!-- 핸드폰으로 찾기 -->
					<div id="findid_by_phone">
						<table id="method">
							<tr>
								<td class="wid150">이름</td>

								<td><input class="sameWidth" type="text" name="username1"
									id="demo-name" value="" placeholder="name" /></td>
							</tr>
							<tr>
								<td class="wid150">휴대폰 번호</td>
								<td><input type="text" onkeypress="onlyNumber();"
									class="phone" name="userphone" id="userphone" value=""
									placeholder="phone" /><input type="button" class="confirm"
									value="인증" onclick="confilm_by_phone();"></td>
							</tr>
							<tr>
								<td class="wid150">인증번호</td>
								<td><input class="sameWidth" type="text" name="confirm1"
									id="demo-name" value="" placeholder="인증번호" /></td>
							</tr>
						</table>
						<ul class="actions fit">
							<li><a href="javascript:sendit_1();"
								class="button primary fit next">확 인</a></li>
						</ul>
					</div>
					<!-- 이메일로 찾기 -->
					<div id="findid_by_email" style="display: none;">
						<table>
							<tr>
								<td class="wid150">이름</td>
								<td><input class="sameWidth" type="text" name="username2"
									id="demo-name" value="" placeholder="name" /></td>
							</tr>
							<tr>
								<td class="wid150">이메일</td>
								<td><input type="text" class="phone" name="useremail"
									id="useremail" value="" placeholder="email" /><input
									type="button" class="confirm" value="인증"  onclick="confilm_by_email();"></td>
							</tr>
							<tr>
								<td class="wid150">인증번호</td>
								<td><input class="sameWidth" type="text" name="confirm2"
									id="demo-name" value="" placeholder="인증번호" /></td>
							</tr>
						</table>
						<ul class="actions fit">
							<li><a href="javascript:sendit_2();"
								class="button primary fit next">확 인</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<br><br><br><br>
	<!-- =============================================================== -->
	<!-- Footer -->
	<div id="footer">
		<div class="copyright" style="background: #353535; color: #fff;">
			<div style="width: 100%; height: 50px;">
				<ul class="footer_list"
					style="width: 55%; height: 50px; list-style: none; text-align: center; margin: 0 auto;">
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

<script>
	//입력값 확인
	function sendit_1() {
		if ($('input[name=username1]').val() == ""
				|| $('input[name=username1]').val() == null) {
			alert("이름을 입력하세요.")
			$('input[name=username1]').focus();
			return false;
		}
		if ($('input[name=userphone]').val() == ""
				|| $('input[name=userphone]').val() == null) {
			alert("전화번호를 입력하세요.")
			$('input[name=userphone]').focus();
			return false;
		}
	/* 	if ($('input[name=confirm1]').val() == ""
				|| $('input[name=confirm1]').val() == null) {
			alert("인증번호를 입력하세요.")
			$('input[name=confirm1]').focus();
			return false;
		} */
		
		const phoneCode = $("input[name=confirm1]").val();
		if (phoneCode == null || phoneCode == '') {
			alert("인증번호를 입력해주세요");
			return false;
		} else {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${pageContext.request.contextPath}/member/confilmNumber.me", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("phoneCode=" + phoneCode);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
					if (xhr.responseText.trim() == "ok") {
						alert("전화번호 인증 완료!")
						console.log("전화번호 인증 완료!");
						location.href = "${pageContext.request.contextPath}/member/find_id_phone.me?username="+$("input[name=username1]").val()+"&userphone="+$("#userphone").val()+"&page=find_id";
					} else {
						alert("인증번호가 일치하지 않습니다.");
					}
				}
			}
		}
		
	}
	function sendit_2() {
		if ($('input[name=username2]').val() == ""
				|| $('input[name=username2]').val() == null) {
			alert("이름을 입력하세요.")
			$('input[name=username2]').focus();
			return false;
		}
		if ($('input[name=useremail]').val() == ""
				|| $('input[name=useremail]').val() == null) {
			alert("이메일 주소를 입력하세요.")
			$('input[name=useremail]').focus();
			return false;
		}
		/* if ($('input[name=confirm2]').val() == ""
				|| $('input[name=confirm2]').val() == null) {
			alert("인증번호를 입력하세요.")
			$('input[name=confirm2]').focus();
			return false;
		} */
		const emailCode = $("input[name=confirm2]").val();
		if (emailCode == null || emailCode == '') {
			alert("인증번호를 입력해주세요");
			return false;
		} else {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${pageContext.request.contextPath}/member/confilmNumber_email.me", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("emailCode=" +emailCode);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
					if (xhr.responseText.trim() == "ok") {
						alert("이메일 인증 완료!")
						console.log("이메일 인증 완료!");
						location.href = "${pageContext.request.contextPath}/member/find_id_email.me?username="+$("input[name=username2]").val()+"&useremail="+$("#useremail").val()+"&page=find_id";
					} else {
						alert("인증번호가 일치하지 않습니다.");
					}
				}
			}
		}
		
	}
	//전화번호 숫자만 입력받게 하는 방법
	var cnt = 0;
	function onlyNumber() {
		if ((event.keyCode < 48) || (event.keyCode > 57)) {
			if (event.keyCode == 8) {
				cnt -= 1;
			}
			alert("숫자만 입력해주세요.");
			event.returnValue = false;
		} else {
			//숫자를 입력했을 때
			if (cnt == 4) {
			}

			cnt += 1;
		}

	}
	if(matchMedia("screen and (max-width:736px)").matches){
		$("#find_phone").css("font-size","15px");
		$("#find_phone").css("margin-right","0px");
		$("#find_email").css("font-size","10px");
		$("#find_email").css("margin-left","0px");
		$("#find_email").css("padding-bottom","0px");
	}else{
		$("#find_phone").css("font-size","30px");
		$("#find_phone").css("margin-right","40px");
		$("#find_email").css("font-size","20px");
		$("#find_email").css("margin-left","40px");
		$("#find_email").css("padding-bottom","12px");
	}
	
			$("#find_phone").css("color","#0028b0");
			$("#find_phone").css("font-weight","bold");
			$("#find_phone").css("padding-bottom","0");
			$("#findid_by_phone").css("display","");
			$("#find_email").css("color","black");
			$("#find_email").css("font-weight","inherit");
			$("#findid_by_email").css("display","none");
	function phone_id(){
		if(matchMedia("screen and (max-width:736px)").matches){
			$("#find_phone").css("font-size","15px");
			$("#find_email").css("font-size","10px");
			$("#find_email").css("padding-bottom","0px");
		}else{
			$("#find_phone").css("font-size","30px");
			$("#find_email").css("font-size","20px");
			$("#find_email").css("padding-bottom","12px");
		}
			$("#find_phone").css("color","#0028b0");
			$("#find_phone").css("font-weight","bold");
			$("#findid_by_phone").css("display","");
			$("#find_phone").css("padding-bottom","0");
			
			$("#find_email").css("color","black");
			$("#find_email").css("font-weight","inherit");
			$("#findid_by_email").css("display","none");
		}
		
	
	function phone_email(){
		if(matchMedia("screen and (max-width:736px)").matches){
			$("#find_email").css("font-size","15px");
			$("#find_phone").css("font-size","10px");
			$("#find_email").css("padding-bottom","0px");
		}else{
			$("#find_email").css("font-size","30px");
			$("#find_phone").css("font-size","20px");
			$("#find_phone").css("padding-bottom","12px");
		}
			$("#find_email").css("color","#0028b0");
			$("#find_email").css("font-weight","bold");
			$("#findid_by_email").css("display","");
			$("#find_email").css("padding-bottom","0");
			/* $('#find_by_email').removeAttr("style"); */
			
			$("#find_phone").css("color","black");
			$("#find_phone").css("font-weight","inherit");
			$("#findid_by_phone").css("display","none");
		}
		
	//전화번호 인증을 눌렀을 때
	function confilm_by_phone(){
		var phoneNumber =  $("#userphone").val(); // 010-0000-0000
		if ($("#userphone").val() == null || $("#userphone").val() == '') {
			alert("휴대폰 번호를 입력해주세요.");
		} else {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${pageContext.request.contextPath}/member/sendSms.me", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("to=" + phoneNumber);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
					if (xhr.responseText.trim() == "ok") {
						console.log("휴대폰으로 인증 코드 보내기 성공");
					} else {
						console.log("실패");
					}
				}
			}
		} 
	}
	//이메일 인증을 눌렀을 때
	function confilm_by_email(){
		var userEmail =  $("#useremail").val();
		if (userEmail == null || userEmail == '') {
			alert("이메일을 입력해주세요.");
		} else {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${pageContext.request.contextPath}/member/sendEmail.me", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("userEmail=" + userEmail);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
					if (xhr.responseText.trim() == "ok") {
						console.log("이메일로 인증 코드 보내기 성공");
					} else {
						console.log("실패");
					}
				}
			}
		} 
	}
</script>
</html>