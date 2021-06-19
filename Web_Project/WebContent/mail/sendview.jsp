<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE HTML>
<!--
	Inverse by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
	<title>쪽지 보내기</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
	<link href="../images/iconpng.png" rel="icon">
</head>
<style>
	.fakeheader{
		width:100%;
		height:20%;
		vertical-align:center;
		text-align:center;
		border-bottom: 1px solid #ddd;
	}
	textarea{
		resize:none;
	}
	.content-wrapper{
		/* width:100%; */
		margin-left: 34% !important; 
	}
	.content-wrapper > .buttons{
		margin : 0 70px;
	}
	#space{
		line-height:130%; 
		font-size:12px; 
		font-family:돋움;
	}
	@media(max-width:600px){
	/* 팝업창 크기 : width=600px, height=630px */
		.fakeheader{
		 	height:80px
		}
		#logo{
			top:10%
		}
		.content-wrapper{
			margin-left:28% !important;
			width:100%
		}
		.content-wrapper > .buttons{
			margin : 0 50px ;
			
		}
		
	}
</style>
<body>

	<c:if test="${session_id eq null}">
		<script>
			alert("로그인 후 이용하세요!")
			location.replace("${pageContext.request.contextPath}/member/MemberLogin.me");
		</script>
	</c:if>

	<div class="fakeheader">
		<img src="../images/logo.png" id="logo" alt="ez마켓" style="width:17.5%; position: relative; vertical-align:center;"/>
	</div>
	<div class="content-wrapper">
		<form action="${pageContext.request.contextPath}/mail/MailWriteOk.ma" method="post" name="mailcontentForm">
			<div class="row gtr-uniform">
				<div class="col-6 col-12-xsmall">
					<input name="userid" type="hidden" value="${session_id.getUserid()}"/>
					<br>
					받는 사람<input type="text" name="targetid" id="targetid" onkeyup="checkID()" value="" placeholder="아이디를 입력하세요.">
					<span style="color:red;" id="checkID"></span>
					<div id="space"><br></div>
					<textarea name="mailcontent" id="content" rows="10" cols="40"></textarea>
					<p id="content_cnt" style="float:right; margin:0;">0/100자</p><br>
					<div id="space"><br></div>
					<div class="buttons" style="text-align:center">
						<a href="javascript:sendit()" class="button primary small">보내기</a>
						<a href="javascript:saveMail()" class="button primary small" style="width: 80px; padding: 0px 0px;">임시 저장</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
	
	<script>
		//Ajax					
		function checkID() {
			const targetidTag = document.mailcontentForm.targetid;
			var targetid = targetidTag.value;
			var checkID = document.getElementById("checkID");
			
			if(targetid == null || targetid == '') {
				checkID.innerHTML = "";
			}else{
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "${pageContext.request.contextPath}/mail/CheckID.ma", true);
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				xhr.send("userid=" + targetid);
				xhr.onreadystatechange = function() {
					if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
						if(xhr.responseText.trim() == "ok") {
							checkID.innerHTML = "존재하지 않는 아이디입니다.";
						}else{
							checkID.innerHTML = "";
						}
					}
				}
			}
		}
		
		//존재하는 아이디한테만 보낼수있어야한다.
		function sendit(){
			const targetid = document.mailcontentForm.targetid;
			const mailcontent = document.mailcontentForm.mailcontent
			var checkID = document.getElementById("checkID");
			/* var mailnum = $('input[name=mailnum]').val();
			var mailval = $("#checkval").val();
			
			console.log("이건?")
			console.log(mailnum)
			console.log(mailval) */
			
			
			if(targetid.value == '' || targetid.value == null){
				alert("받는사람을 지정해주세요.");
				targetid.focus();
				return false;
			}
			if(checkID.innerHTML == "존재하지 않는 아이디입니다.") {
				alert("존재하지 않는 아이디로는 쪽지를 보낼 수 없습니다.");
				targetid.focus();
				return false;
			}
			if(mailcontent.value == '' || mailcontent.value == null){
				var sendConfirm = confirm("내용없이 쪽지를 보내시겠습니까?");
				if(!sendConfirm){
					mailcontent.focus();
					return false;
				}
			}
			/* if(mailnum == null || mailnum == ""){
				mailnum = "0";
			} */
			document.mailcontentForm.submit()
		}
		
		//textarea 숫자 제한
		$(document).ready(function(){
			$('#content').on('keyup', function(){
				$('#content_cnt').html($(this).val().length+"/100자");
				
				if($(this).val().length > 100){
					$(this).val($(this).val().substring(0,100));
					$('#content_cnt').html("100/100자");
				}
			});
		});
		
		function saveMail(){
			const targetid = document.mailcontentForm.targetid;
			const mailcontent = document.mailcontentForm.mailcontent
			var checkID = document.getElementById("checkID");
			
			if(targetid.value == '' || targetid.value == null){
				alert("받는사람을 지정해주세요.");
				targetid.focus();
				return false;
			}
			if(checkID.innerHTML == "존재하지 않는 아이디입니다.") {
				alert("존재하지 않는 아이디로는 쪽지를 보낼 수 없습니다.");
				targetid.focus();
				return false;
			}
			$("form[name='mailcontentForm']").attr('action',
				"${pageContext.request.contextPath}/mail/SaveMailOK.ma")
			document.mailcontentForm.submit();
		}
		
	</script>
</body>
</html>