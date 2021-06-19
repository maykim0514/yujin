<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>ez마켓</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
<link href="../images/iconpng.png" rel="icon">
</head>
<style>
body {
	overflow-x: hidden;
}

#header {
	position: fixed;
}

.is-preload {
	align: center !important;
}

.wrap {
	align: center;
	padding-top: 180px;
	width: 1070px;
	margin: 0 auto;
}

.inner_box {
	margin: 50px 0 0 100px;
}

p, form, label, ul, h6 {
	margin: 0 0 0 0;
}

th, td {
	text-align: left;
	font-weight: normal;
	vertical-align: middle;
	background-color: #fff;
	border-color: white;
}

td {
	margin: 0 0 0 0;
	padding: 0 100px 0 0;
}

.table {
	width: 100%;
	font-size: 16px;
	margin-left: 110px;
}

.table th {
	width: 250px;
	padding: 15px 0px 15px 10px;
	margin-right: 150px;
	color: #333333;
}

.table td {
	width: 1000px;
}

.table p .last-item {
	padding: 0px;
	margin: 0px;
}

.edit_myinfo .sub_title {
	text-align: center;
	font-size: 40px;
	padding: 40px 0 20px 0;
}

.text_area input, select {
	width: 470px;
	height: 55px;
	display: inline-block;
	margin-right: 20px;
}

.text_area_e input, select {
	width: 200px;
	height: 55px;
	display: inline-block;
	margin-right: 10px;
}

.text_area_p input, select {
	width: 150px;
	height: 55px;
	display: inline-block;
	margin-right: 10px;
}

.text_area_pl {
	margin-left: 10px;
	width: 100px;
}

.text_area_pm {
	margin-left: 10px;
}

.text_area_addr input, select {
	width: 350px;
	height: 55px;
	display: inline-block;
}

.is-preload * {
	border-width: 0px;
}

input[type="submit"].primary, input[type="reset"].primary, input[type="button"].primary,
	button.primary, .button.primary {
	background: #0028B0;
	box-shadow: none;
	color: #ffffff !important;
}

#confirm_btn {
	width: 100%;
	position: relative;
	left: 37.5%;
}

#confirm_btn a {
	display: inline-block;
}

select {
	text-align-last: center;
	width: 200px;
}
</style>


<!-- Header -->
<header id="header">
	<a class="logo" href="${pageContext.request.contextPath}/index.jsp"
		style="width: 10%;"> <img src="../images/logo.png" alt=""
		style="width: 100%; margin-left: 215%;" /></a>

	<nav id="nav" style="margin-right: 380px;">
		<ul>
			<li><a href="">마이페이지</a></li>
			<li><a href="">로그아웃</a></li>
		</ul>
	</nav>
</header>


<!-- main -->
<body class="is-preload">
<%
		String result = request.getParameter("result");
		
		if(result!=null && result.equals("false")){
	%>
			<script>alert("비밀번호가 일치하지 않습니다.")</script>
	<%
		}
	%>
	<div class="wrap">
		<div class="inner">
			<form id="updateForm" name="updateForm"
				action="/Mypage/MypageEditOk.me" method="post">
				<div class="edit_myinfo">
					<h3 class="sub_title">개인정보 수정</h3>
					<div class="edit_myinfo_content">
						<table class="table">
							<colgroup>
								<col width="150px">
								<col width="*">
							</colgroup>
							<tbody>
								<!-- 닉네임 또는 아이디 -->
								<tr>
									<th scope="row">아이디</th>
									<td class="text_area"><input id="userid" name="userid"
										type="text" value="${session_id.getUserid()}" readonly>
									</td>
								</tr>

								<tr>
									<th scope="row">닉네임</th>
									<td class="text_area"><input type="text" name="NickName"
										id="NickName" value="apple"></td>
								</tr>

								<!-- 현재 비밀번호 확인 -->
								<tr>
									<th scope="row">현재 비밀번호
										<h6>(수정 시 필수)</h6>
									</th>
									<td class="text_area"><input type="password" name="pswd"
										id="pswd" class="" maxlength="20">
										<p>
											<span style="color: red;"></span>
										</p></td>
								</tr>

								<!-- 새 비밀번호 -->
								<tr>
									<th scope="row">새 비밀번호
										<h6>(변경 시)</h6>
									</th>
									<td class="text_area"><input type="password"
										name="newpswd" id="newpswd" class="" maxlength="20">
										<p>
											<span style="color: red;"></span>
										</p></td>
								</tr>
								<!-- 새 비밀번호 확인 -->
								<tr>
									<th scope="row">새 비밀번호 확인
										<h6>(변경 시)</h6>
									</th>
									<td class="text_area"><input type="password"
										name="pswd_check" id="pswd_check" class="" maxlength="20">
										<p>
											<span style="color: red;"></span>
										</p></td>
								</tr>

								<!-- 주소 정보 -->

								<!-- 우편번호 -->
								<tr>
									<th scope="row">우편번호</th>
									<td class="text_area_addr"><input type="text" class=""
										id="sample4_postcode" placeholder="우편번호" name="sample4_postcode"
										style="margin-right: -5px; border-radius: 0px;" readonly value="${session_id.getUserpostcode()}">
										<input type="button" onclick="sample4_execDaumPostcode()"
										style="width: 122px; border-radius: 0 5PX 5PX 0; margin: 0px; padding: 0px; display: unset; height: 55px; line-height: 50px; position: relative; top: -1px; font-size: 17px; background: #0028B0; box-shadow: none; color: #fff !important"
										value="우편번호 찾기"></td>
								</tr>
								<!-- 메인 주소 -->
								<tr>
									<th scope="row">주소</th>
									<td class="text_area_addr"><input type="text"
										id="sample4_roadAddress" name="sample4_roadAddress"
										style="width: 470px;" placeholder="도로명 주소" class="" value="${session_id.getUseraddr()}" readonly>
									</td>
								</tr>


								<!-- 이메일 -->
								<tr>
									<th scope="row">이메일 (E-mail)</th>
									<td class="text_area_e"><input name="email1" type="text"
										style="width: 120px;"> @ <input type="text"
										name="email2" ID="email2"
										style="margin-left: 10px; width: 140px;" readonly> <select
										ID="Select_Title" NAME="Select_Title"
										style="border-width: 1px; width: 180px; text-align-last: unset;"
										onchange="InsertTitle(this.value)">
											<option value=" " selected>선택</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="">사용자 입력</option>
									</select></td>
								</tr>
								<tr>
									<th>이메일 수신 여부</th>
									<td>
										<li><input type="radio" id="email_Y" name="email_ch"
											value="1" checked="checked" onclick="email_check();">
											<label for="email_Y">수신</label> <input type="radio"
											id="email_N" name="email_ch" value="0"
											onclick="email_check();"> <label for="email_N">수신
												거부</label></li>
									</td>
								</tr>

								<!-- 전화번호 -->
								<tr>
									<th scope="row">전화번호</th>
									<td class="text_area_p"><select name="ph_f" id="ph_f"
										class="" style="width: 130px; border-width: 1px;">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
									</select> ─ <input type="text" name="ph_m" id="ph_m" maxlength="4"
										value="" class="text_area_pm" style="width: 135px;"> ─

										<input type="text" name="ph_l" id="ph_l" maxlength="4"
										value="" class="text_area_pl" style="width: 135px;"></td>
								</tr>
								<tr>
									<th>SMS 수신 여부</th>
									<td>
										<li><input type="radio" id="sms_Y" name="sms_ch"
											value="1" checked="checked" onclick="sms_check();"> <label
											for="sms_Y">수신</label> <input type="radio" id="sms_N"
											name="sms_ch" value="0" onclick="sms_check();"> <label
											for="sms_N">수신 거부</label></li>
										</ul>
										</div>
									</td>
								</tr>
							</tbody>


						</table>
			</form>
			<div id="confirm_btn">
				<a href="../index.jsp" class="button primary">취소</a> <a
					href="javascript:sendit();" class="button primary"
					style="margin: 0 0 0 20px;">완료</a>
			</div>

		</div>
	</div>


	</div>
	</div>
</body>


<!-- Footer -->
<div id="footer">
	<div class="copyright" style="background: #353535; color: #fff;">
		<div style="width: 100%; height: 55px;">
			<ul class="footer_list"
				style="width: 55%; height: 55px; list-style: none; text-align: center; margin: 0 auto;">
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



<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sendit() {
		const updateform = document.updateForm;
		if (updateform.userid.value == "" || updateform.userid.value == null) {
			alert("아이디를 입력하세요.");
			updateform.userid.focus();
			return false;
		} else if (updateform.NickName.value == "" || updateform.NickName.value == null) {
			alert("닉네임을 입력하세요.");
			updateform.NickName.focus();
			return false;

		} else if (updateform.pswd.value == "" || updateform.pswd.value == null) {
			alert("비밀번호를 입력하세요.");
			updateform.pswd.focus();
			return false;
		} else if (updateform.newpswd.value == "" || updateform.newpswd.value == null) {
			alert("새 비밀번호를 입력하세요.");
			updateform.newpswd.focus();
			return false;
		} else if (updateform.pswd.value == updateform.newpswd.value) {
			alert("다른 비밀번호를 입력해주세요.");
			updateform.newpswd.focus();
			return false;
		} else if (updateform.pswd_check.value != updateform.newpswd.value) {
			alert("비밀번호확인을 일치시켜주세요.");
			updateform.pswd_check.focus();
			return false;
		}
		updateform.submit();

	}

	function InsertTitle(str) {
		if (str != "") {
			document.getElementById("email2").value = str;
			document.getElementById("email2").readOnly = true;
			document.getElementById("email2").style.background = "#DFDFDF";
		} else {
			document.getElementById("email2").value = "";
			document.getElementById("email2").readOnly = false;
			document.getElementById("email2").style.background = "#FFFFFF";
			document.getElementById("email2").focus();
		}

	}

	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						var roadAddr = data.roadAddress; // 도로명 주소 변수

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress;

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
						}
					}
				}).open();

	}
</script>

</html>