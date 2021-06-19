<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
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
	margin-left: 36% !important;
}

.is-preload {
	align: center !important;
}

textarea {
	width: 50% !important;
}

ul.actions.fit {
	width: 50%;
}

#txtMobile1 {
	width: 11% !important;
	display: inline;
	margin-right: 1%;
}

#txtMobile2 {
	width: 20.5% !important;
	display: inline;
	margin-left: 1%;
}

.msg {
	margin-left: 1%;
	width: 14% !important;
	text-align: center;
}

#sample6_postcode {
	width: 10% !important;
	display: inline;
	margin-right: 1%;
}

#sample6_address {
	width: 23.5% !important;
	display: inline;
}

#sample6_btn {
	width: 14% !important;
}

.select {
	width: 49% !important;
}

.margin0 {
	margin-bottom: 0;
}

#cate {
	margin-right: 4.5%;
}

#button {
	align: center;
	padding: 0px;
	clear: left;
}

#logo {
	width: 350px !important;
}

.row.gtr-uniform>* {
	padding-top: 10px;
	padding-bottom: 2rem;
}

.margin0 {
	margin-bottom: 2rem;
}

#confilmNumber {
	width: 34.5%;
	display: inline;
}

@media screen and (max-width: 736px) {
	.real .inner {
		margin-left: 10% !important;
		width: 80%;
	}
	#txtMobile1 {
		width: 29% !important;
	}
	#txtMobile2 {
		width: 34.5% !important;
	}
	#mobileConfim {
		margin-left: 15px !important;
		width: 28% !important;
		align-content: center;
		padding: 0px;
	}
	#sample6_postcode {
		display: none;
		margin-left: 0 !important;
	}
	#sample6_address {
		width: 70% !important;
		font-size: small;
	}
	#sample6_btn {
		margin-left: 0 !important;
		width: 27% !important;
		padding: 0px;
	}
	.select {
		width: 99% !important;
		float: left;
		font-size: x-small;
	}
	#cate {
		margin-right: 5%;
	}
	#logo {
		width: 200px !important;
	}
	#useremail, #confilmNumber, #confilmNumber_email {
		width: 70% !important;
		font-size: small;
		border-radius: 5px 0 0 5px;
	}
	#mobileConfim {
		margin-top: 10px;
		margin-left: 0 !important;
		width: 27% !important;
		padding: 0px;
	}
}

#mobileConfim {
	border-radius: 0 5px 5px 0;
}

#sample6_btn {
	border-radius: 0 5px 5px 0 !important;
}
</style>
</head>
<body class="is-preload">


	<div id="main">
		<div class="wrapper real">
			<header class="major">
				<a class="logo" href="${pageContext.request.contextPath}/index.jsp"
					style="width: 10%;"><img id="logo"
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="ez-market" style="width: 100%;" /></a>
			</header>
			<div class="inner">
				<!-- Form -->
				<form method="post"
					action="${pageContext.request.contextPath}/member/MemberJoinOk.me"
					name="userInfo">
					<h3>아이디</h3>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="text" name="userid" id="userid" value=""
								placeholder="ID" onkeyup="checkId()" /> <span
								style="color: red;" id="checkText"></span>
						</div>
					</div>
					<h3>비밀번호</h3>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="password" name="userpw" id="demo-name" value=""
								placeholder="PW" />
						</div>
					</div>
					<h3>비밀번호 확인</h3>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="password" name="userre_pw" id="demo-name" value=""
								placeholder="PW" />
						</div>
					</div>
					<h3>이름</h3>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="text" name="username" id="demo-name" value=""
								placeholder="Name" />
						</div>
					</div>
					<h3 style="margin-bottom: 10px;">전화번호</h3>
					<select class="margin0" id="txtMobile1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select> - <input type="text" id="txtMobile2" name="userphone" size="8"
						onkeypress="onlyNumber();" maxlength='9' /> <a
						href="javascript: confilm_by_phone();" id="mobileConfim"
						class="button primary fit msg" style="margin-left: -5px;">인증
						요청</a> <br> 
					<input
						style="display: none; margin-bottom: 20px; padding-bottom: 1px;"
						type="text" id="confilmNumber" class=" confilm_by_phone"
						name="confilmNumber" size="8" maxlength='9' placeholder="인증 번호" />
					<a href="checkPhoneCode();"
						style="display: none; margin-left: -5px;" id="mobile_Confim"
						class=" confilm_by_phone button primary fit msg">인증</a>
					<!-- 이메일 -->
					<h3 style="margin-bottom: 0px;">이메일</h3>
					<input type="email" id="useremail" name="useremail"
						style="width: 423px; padding-bottom: 1px; display: inline; margin-bottom: 2rem;" />
					<a href="javascript: confilm_by_email();" id="emailConfim"
						class="button primary fit msg" style="margin-left: -5px;">인증
						요청</a>
						 <br>
					<input
						style="display: none; margin-bottom: 20px; padding-bottom: 1px;"
						type="text" id="confilmNumber_email" class="confilm_by_email"
						name="confilmNumber_email" size="8" maxlength='9'
						placeholder="인증 번호" /> 
					<a href="checkEmailCode();"
						style="display: none; margin-left: -5px;" id="email_Confim"
						class=" confilm_by_email button primary fit msg">인증</a>
					<!-- 주소 찾기 api -->
					<h3 style="margin-bottom: 10px;">우편번호</h3>
					<input class="margin0" type="text" name="userpostcode"
						id="sample6_postcode" placeholder="우편번호" readonly> <input
						type="text" name="useraddr" id="sample6_address" placeholder="주소"
						style="padding-bottom: 2.5px;" readonly> <input
						type="button" style="margin-left: -5px;"
						class="button primary fit msg" id="sample6_btn" name="findaddr"
						onclick="sample6_execDaumPostcode()" value="우편번호">

					<div>
						<h3 style="margin-bottom: 10px;">카테고리 선택</h3>
						<select name="usercategory" class="select" id="cate">
							<option value="">::선택해주세요::</option>
							<option value="여성의류">여성의류</option>
							<option value="남성의류">남성의류</option>
							<option value="패션잡화">패션잡화</option>
							<option value="디지털 / 가전">디지털 / 가전</option>
							<option value="도서 / 티켓 / 취미 / 애완">도서 / 티켓 / 취미 / 애완</option>
							<option value="생활 / 문구 / 가구">생활 / 문구 / 가구</option>
							<option value="스포츠 / 레저">스포츠 / 레저</option>
							<option value="뷰티 / 미용">뷰티 / 미용</option>
							<option value="유아동 / 출산">유아동 / 출산</option>
							<option value="기타물품">기타물품</option>
						</select>
					</div>
				</form>
				<!-- submit -->
				<br> <br> <br>
				<ul class="actions fit button_ul" id="button">
					<li><a href="index.jsp" id="cancle" class="button fit">취
							소</a></li>
					<li style="padding-top: 0px;" id="button_li"><a
						href="javascript:sendit();" id="confirm"
						class="button primary fit">확 인</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- =============================================================== -->
	<!-- Footer -->
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
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	
	// 전화번호 숫자만 입력받게 하는 방법
		var cnt=0;
	function onlyNumber() {
	    if ((event.keyCode < 48) || (event.keyCode > 57)){
		    if(event.keyCode == 8){
	    		cnt-=1;
	    }
	        alert("숫자만 입력해주세요.");
	        event.returnValue = false;
	    }
	    	else{
	    	//숫자를 입력했을 때
	        if(cnt==4){
	        }

	    	cnt+=1;
	    }
	    
	    
	}

	function CheckForm() {
	    if (document.getElementById("txtMobile1").value == "") {
	        window.alert("휴대폰 번호를 선택하세요.");
	        return false;
	    }
	}
	//주소 찾기 api
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_postcode")
								.focus();
					}
				}).open();
	}
	//입력값 확인
		function sendit() {
		const joinform = document.userInfo;
		if (joinform.userid.value == "" || joinform.userid.value == null) {
			alert("아이디를 입력하세요.");
			joinform.userid.focus();
			return false;
		}
		if (checkText.innerHTML == "중복된 아이디입니다.") {
			alert("중복검사를 확인해주세요.");
			joinform.userid.focus();
			return false;
		}
		if (joinform.userpw.value == "" || joinform.userpw.value == null) {
			alert("비밀번호를 입력하세요.");
			joinform.userpw.focus();
			return false;
			
		//정규식 사용해보기
		}else {
			// A~Z, a~z, 0~9, 특수문자들이 포함되어 있는 8글자인지 검사하는 정규식
			var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^*-]).{8,}$/;
			// 한글이 포함되어 있는지 검사하는 정규식
			var hangle = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			if (!reg.test(joinform.userpw.value)) {
				alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
				return false;
				// 4개의 같은 문자가 연속되어 있는지 검사하는 정규식
			} else if (/(\w)\1\1\1/.test(joinform.userpw.value)) {
				alert("비밀번호는 같은 문자를 4번 이상 사용할 수 없습니다.")
				return false;
				// 공백이 포함되어 있는지 검사하는 정규식
			} else if (joinform.userpw.value.search(/\s/) != -1) {
				alert("비밀번호에 공백을 포함할 수 없습니다.");
				return false;
			} else if (hangle.test(joinform.userpw.value)) {
				alert("비밀번호에 한글을 사용할 수 없습니다.");
				return false;
			}
		}
		if (joinform.userre_pw.value == "" || joinform.userre_pw.value == null) {
			alert("비밀번호확인을 입력하세요.");
			joinform.userre_pw.focus();
			return false;
		}else if(joinform.userpw.value!=joinform.userre_pw.value){
				alert("비밀번호를 일치시켜주세요.");
				joinform.userre_pw.focus();
				return false;
			}
	
		//
		if (joinform.username.value == "" || joinform.username.value == null) {
			alert("이름을 입력하세요.");
			joinform.username.focus();
			return false;
		}
		if (joinform.txtMobile2.value == "" || joinform.txtMobile2.value == null) {
			alert("핸드폰 번호를 입력하세요.");
			joinform.txtMobile2.focus();
			return false;
		}
		if (joinform.confilmNumber.value == "" || joinform.confilmNumber.value == null) {
			alert("인증번호를 입력하세요.");
			return false;
		}
		if (joinform.useremail.value == "" || joinform.useremail.value == null) {
			alert("이메일을 입력하세요.");
			joinform.useremail.focus();
			return false;
		}
		if (joinform.confilmNumber_email.value == "" || joinform.confilmNumber_email.value == null) {
			alert("인증번호를 입력하세요.");
			return false;
		}
		if(joinform.userpostcode.value=="" || joinform.userpostcode.value==null){
			alert("우편번호를 입력하세요");
			joinform.findaddr.focus();
			return false;
		}
		if(joinform.useraddr.value=="" || joinform.useraddr.value==null){
			alert("주소를 입력하세요");
			joinform.findaddr.focus();
			return false;
		}
		if($("#cate option:selected").val()=="" || $("#cate option:selected").val()==null){
			alert("카테고리를 골라주세요");
			joinform.category.focus();
			return false;
		}
		joinform.submit();
	}
	//전화번호 인증을 눌렀을 때
	function confilm_by_phone(){
		$(".confilm_by_phone").css("display","");
		
		
		var phoneNumber =  $("#txtMobile1").val()+$("#txtMobile2").val(); // 010-0000-0000
		if ($("#txtMobile2").val() == null || $("#txtMobile2").val() == '') {
			alert("휴대폰 번호를 입력해주세요.")
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
	//전화번호 인증 확인 눌렀을 때
	 $('#mobile_Confim').on("click",function(e){
		e.preventDefault();
		const phoneCode = $("#confilmNumber").val();
		if (phoneCode == null || phoneCode == '') {
			alert("인증번호를 입력해주세요");
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
					} else {
						alert("인증번호가 일치하지 않습니다.");
					}
				}
			}
		}
	})
	//이메일 인증을 눌렀을 때
	function confilm_by_email(){
		$(".confilm_by_email").css("display","inline-block");
		$(".confilm_by_email").css("width","425px");
		
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
	//이메일 인증 확인 눌렀을 때
	 $('#email_Confim').on("click",function(e){
		e.preventDefault();
		const emailCode = $("#confilmNumber_email").val();
		if (emailCode == null || emailCode == '') {
			alert("인증번호를 입력해주세요");
		} else {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${pageContext.request.contextPath}/member/confilmNumber_email.me", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("emailCode=" + emailCode);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
					if (xhr.responseText.trim() == "ok") {
						alert("이메일 인증 완료!")
						console.log("이메일 인증 완료!");
					} else {
						alert("인증번호가 일치하지 않습니다.");
					}
				}
			}
		}
	})
	//Ajax
	function checkId() {
		const useridTag = document.userInfo.userid;
		var id = useridTag.value;// apple
		var checkText = document.getElementById("checkText");
		if (id == null || id == '') {
			checkText.innerHTML = "";
		} else {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${pageContext.request.contextPath}/member/CheckId.me", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("userid=" + id);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
					if (xhr.responseText.trim() == "ok") {
						checkText.innerHTML = "사용할 수 있는 아이디입니다."
					} else {
						checkText.innerHTML = "중복된 아이디입니다."
					}
				}
			}

		}
	}
	</script>
</html>
