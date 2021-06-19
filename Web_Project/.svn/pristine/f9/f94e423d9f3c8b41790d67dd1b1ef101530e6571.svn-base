<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기 - 새로운 비밀번호</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
<link href="${pageContext.request.contextPath}/images/iconpng.png"
	rel="icon">
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

.step {
	font-size: 1.5em;
}

.step>span {
	margin-right: 10%;
}

#step3 {
	color: #0028B0;
	font-weight: bolder;
}

#step3 {
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
	margin-left: 40% !important;
}

#find_id {
	margin-left: 40%;
}

table tbody tr {
	background-color: white !important;
}

@media screen and (max-width: 736px) {
	#step1 {
		display: none;
	}
	#step2 {
		display: none;
	}
	#step3 {
		margin-left: 0px !important;
		font-size: 17.9px;
	}
	#demo-name {
		margin: 0px;
		width: 100%;
	}
	#button {
		margin-left: 0px !important;
		width: 100% !important;
	}
	.actions {
		margin-left: 0px !important;
	}
}

#newPw {
	margin: 0;
}
</style>
</head>
<body class="is-preload">
	<c:set var="member" value="${requestScope.member}" />
	<%-- <h3>${member.getUsername()}</h3> --%>
	<!-- Header -->
	<header id="header" class="alt">
		<a class="logo" href="${pageContext.request.contextPath}/index.jsp"
			style="width: 10%;"><img
			src="${pageContext.request.contextPath}/images/logo.png"
			alt="ez-market" style="width: 100%; margin-left: 200%;" /></a>
		<nav id="nav" style="margin-right: 20%">
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
					<br> <br> <span class="step"> <span id="step1">01.
							아이디 입력</span> <span id="step2">02. 본인 확인</span> <span id="step3">03.
							비밀번호 재설정</span>
					</span> <br> <br> <br> <br>
					<p id="guide">
						아이디 : <b>${userid}</b>
					</p>
					<form name="newPw" id="newPw">
						<input type="password" name="newUserpw" id="demo-name" value=""
							placeholder="새 비밀번호" />
						<input style="display: none;" type="text" name="userid" id="userid" value="${member.getUsername()}"/>
						<br>
					</form>
					<input type="password" name="newUserrepw" id="demo-name" value=""
						placeholder="새 비밀번호 확인" /><br> <br>
					<ul class="actions" id="button">
						<li><a href="javascript:sendit();" class="button primary">완
								료</a></li>
					</ul>
				</div>
			</div>
		</section>
	</div>
	<br>
	<br>
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
<script
	src="${pageContext.request.contextPath}//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sendit() {
		// A~Z, a~z, 0~9, 특수문자들이 포함되어 있는 8글자인지 검사하는 정규식
		var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^*-]).{8,}$/;
		// 한글이 포함되어 있는지 검사하는 정규식
		var hangle = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if ($('input[name=newUserpw]').val() == ""
				|| $('input[name=newUserpw]').val() == null) {
			alert("새로운 비밀번호를 입력하세요.");
			$('input[name=newUserpw]').focus();
			return false;
		} else {
			if (!reg.test($('input[name=newUserpw]').val())) {
				alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
				$('input[name=newUserpw]').focus();
				return false;
				// 4개의 같은 문자가 연속되어 있는지 검사하는 정규식
			} else if (/(\w)\1\1\1/.test($('input[name=newUserpw]').val())) {
				alert("비밀번호는 같은 문자를 4번 이상 사용할 수 없습니다.")
				$('input[name=newUserpw]').focus();
				return false;
				// 공백이 포함되어 있는지 검사하는 정규식
			} else if ($('input[name=newUserpw]').val().search(/\s/) != -1) {
				alert("비밀번호에 공백을 포함할 수 없습니다.");
				$('input[name=newUserpw]').focus();
				return false;
			} else if (hangle.test($('input[name=newUserpw]').val())) {
				alert("비밀번호에 한글을 사용할 수 없습니다.");
				$('input[name=newUserpw]').focus();
				return false;
			} else if ($('input[name=newUserrepw]').val() == ""
					|| $('input[name=newUserrepw]').val() == null) {
				alert("비밀번호 확인을 입력하세요.");
				$('input[name=newUserrepw]').focus();
				return false;
			} else if ($('input[name=newUserrepw]').val() != $(
					'input[name=newUserpw]').val()) {
				alert("비밀번호를 일치시켜주세요.");
				$('input[name=newUserrepw]').focus();
				return false;
			}
		}
		const newPwForm = document.newPw;
		newPwForm.method = "post";
		newPwForm.action = "${pageContext.request.contextPath}/member/newPw.me";
		newPwForm.submit();
	}
</script>
</html>