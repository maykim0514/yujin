<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	width: 900px;
}
.fakeheader{
		width:100%;
		height:20%;
		vertical-align:center;
		text-align:center;
		border-bottom: 1px solid #ddd;
	}

.step1{
	position: fixed;
	top: 500px;
	left: 20px;
	background-color: #0028B0;
	opacity:1;
}
.step1Ex{
	position:  fixed;
    left: 69px;
}
.step2{
	position: fixed;
	top: 500px;
	left: 190px;
	background-color: #F59A23;
	opacity:1;
}
.step2Ex{
	position:  fixed;
	left: 170px;
}
.step3{
	position: fixed;
	top: 500px;
	left: 360px;
	background-color: #0028B0;
	opacity:1;
}
.step3Ex{
	position:  fixed;
	left: 357px;
}
.step4{
	position: fixed;
	top: 500px;
	left: 530px;
	background-color: #F59A23;
	opacity:1;
}
.step4Ex{
	position:  fixed;
	left: 500px;
}
.step5{
	position: fixed;
	top: 500px;
	left: 700px;
	background-color: #0028B0;
	opacity:1;
}
.step5Ex{
	position:  fixed;
	left: 695px;
}
.step{
	margin-top: -300px;
	width:200px;
	height:200px;
	border-radius: 50%;
	/* border: solid black 1px; */
	text-align: center;
	line-height: 200px;
	display: inline-block;
	z-index: 100;
	font-size: 20px;
	color: white;
}
.stepEx{
    top: 250px;
	display: inline-block;
	padding-bottom: 20px; 
	text-align: center;
	margin-left: 50px;
	font-size: 36px;
	font-weight: 900;
	z-index: 1000;
	color:	white;
}
.step1Ex{
	margin-left: 0px;
}
.box{
	position: fixed;
	bottom: 20px;
	right: 20px;
	font-size: 20px;
}
.box :hover{
	background-color: #c8c8c8	;
}
.step_cont{
	font-size: 20px !important;
	margin-top: 10px;
}
.step4Ex > p{
	padding-right: 15px;
}
</style>
</head>
<body>
	<div class="fakeheader">
		<img src="images/logo.png" id="logo" alt="ez마켓" style="width:17.5%; position: relative; vertical-align:center;"/>
	</div>
	<p style="font-size:30px; font-weight: 900; text-align:center;">이용 안내</p>
	<br><br><br>
	<section>
		<div class="stepEx step1Ex">STEP1<p class="step_cont">로그인 하기</p></div>
		<div class="stepEx step2Ex">STEP2<p class="step_cont">구매/대여/판매<br>선택하기</p></div>
		<div class="stepEx step3Ex">STEP3<p class="step_cont">상품 찾기</p></div>
		<div class="stepEx step4Ex">STEP4<p class="step_cont">쪽지로 소통하기</p></div>
		<div class="stepEx step5Ex">STEP5<p class="step_cont">신뢰도 평가</p></div>
		
		<br> 
		
		<div style="line-height: 5px;" class="step step1"></div>
		<div class="step step2"></div>
		<div class="step step3"></div>
		<div class="step step4"></div>
		<div class="step step5"></div>
	</section>
	<div class="box">
		<input type="checkbox" id="notToday" name="notToday" class="check" onclick="notToday();">
		<label for="notToday">오늘 하루 보지 않기</label>
		
		<input type="checkbox" id="notThis" name="notThis" class="check" onclick="notThis();">
		<label for="notThis">닫기</label>
	</div>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script>
//쿠키 설정
function setCookie(key,value){
	var setTime=new Date();
	//추가한 스크립트의 moment함수를 이용해서 ?? hours ago 라는 문자열이 입력됨
	var cooltime = moment().startOf(setTime).fromNow();
	//지난 시간의 숫자만 가져오고 싶으므로 첫번째 방에 넣음
	var splitTime = cooltime.split(" ")[0]; 
	var cookieStr=key+"="+escape(value)+"="+cooltime;
	document.cookie=cookieStr;
}
function getCookie(key){
	var cookieList=document.cookie.split(";");
	for (var i = 0; i < cookieList.length; i++) {
		//cookie는 내장함수
		//key1=value1; key2=value2; ...
		var entry = cookieList[i].trim();
		var datas = entry.split("="); 
		console.log("모든 쿠키 : "+datas)
		if(datas[0]==key){
			return unescape(datas[1]);
		}
	}
}

	function notToday(){
		setCookie("no-popupToday",'yes');
		self.close();
	}
	function notThis(){
		self.close();
	}
</script>
</html>