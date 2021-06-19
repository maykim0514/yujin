<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Inverse by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>관리자 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/mainfixed.css" />
		<link href="images/iconpng.png" rel="icon">
<!-- css 시작 -->
		<style>
			*{margin:0;padding:0;}
			li{list-style:none;}
			.btn,.mix_wrap{width:80%;
							margin:0 auto;}
			.btn{
				margin-top:20px;
				margin-bottom:-15px;
			}
			label{margin-top:10px;}

			.mix{width:32%;
				 height:320px;
				 margin-left:1%;
				 margin-top:1%;
				 background-color:#fff;
				 display:inline-block;
				 text-align:center;
				 border-radius: 5px;
				 border:1px solid #F59A23;
				 }
			.mix:nth-child(0){
				
			}
			.mix h4,.mix span{position:relative;
							  top:80px;}
			button{width:100px;
					height:40px;
					margin:10px;}
			#box_wrap{width:100%;
					height:100%;
					position:fixed;
					top:0;
					background:rgba(0,0,0,0.4);
					display:none;
					z-index:1;}

/* 라이트 박스부분 */
			#light_box{
				width:40%;
				height: 450px;
				position:absolute;
				left:30%;
				top:30%;
				background-color:#F59A23;
				border-radius: 5px;
			}
			#profile_wrap{
				height:29%;
				width:100%;
			}
			#profile{
				width:90px;
				height:90px;
				border-radius:50%;
				background-color:#fff;
				float:left;
				margin:20px 30px;
			}
			#exit{
				float:right;
				width:10px;
				height:10px;
				margin:10px 25px;
				cursor:pointer;
				color:#fff;
			}
			#content{
				height:55%;
				background-color:#fff;
			}
			#pro_btn_wrap{
				height:15%;
				background-color:#fff;
				border-bottom-left-radius: 5px;
				border-bottom-right-radius: 5px;
			}
			#proBtn{
				float:right;
				margin-right:5%;
			}
			#pro_id{
				float:left;
				margin-top:43px;
				color:#fff;
			}
			#pro_date{
				float:right;
				margin-top:20px;
				font-size:16px;
				line-height:20px;
				color:#fff;
			}
/* 라이트 박스부분 */
/* 믹스업 라벨부분 */
			.wrap{width:100%;}
			.search{width:80%;
					margin:0 auto;}
			.li{
				float:left;
				margin-top:10px;
				width:50%;
			}
			.label_mix{
				width:10%;
				font-size:15px;
				height:30px;
				line-height:50px;
				text-align:center;
				float:left;
				margin-top:15px;
			}
			.sort{
				width:90%;
			}
			#report {
			  display: none;
			}

			.checkbox_list {
			  -webkit-transition: height .5s ease;
			  height: 0;
			  overflow: hidden;
			  width: 80%;
			  background: none;
			  margin-top: 10px;
			  margin: 0 auto;
			}

			
			#report_btn {
			  margin-bottom: 23.5px;
			  cursor: pointer;
			  display: inline-block;
			  width:80%;
			  height:3.25rem;
			  line-height:3.25rem;
			  border: 1px solid;
			  border-radius: 5px;
			  background: #F59A23;
			  color: #fff;
			  margin-top:20px;
			  text-align:center;
			  font-size:15px;
			  position:relative;
			  left:10%;
			  -webkit-transition: opacity .3s;
			}
			input:checked + .checkbox_list {
			  height: 490px;
			}
			#report_btn:hover {
			  opacity:0.4;
			}
			.conbox{
				margin-top:-5px;
				border-left:1px solid #ddd;
				border-right:1px solid #ddd;
			}
			header h2{
				font-size:30px;
				color:black;
				text-align:center;
				position:absolute;
				width:50%;
				left:25%;
				margin-top:-10px;
			}
			.tab_content{
				width:80%;
				margin:0 auto;
			}
			input[type="radio"]{display:none;}
			input[type="radio"] + label{
				display:inline-block;
				padding:20px;
				width:150px;
				text-align:center;
				background-color:#F59A23;
				color:#fff;
				font-size:14px;
				line-height:30px;
				cursor:pointer;
				opacity:0.4;
				height: 65px;
				border-radius: 5px;
				
			}
			input[type="radio"]:checked + label{
				opacity:1;
			}
			.conbox{
				background-color:#fff;
				display:none;
				margin-top:-16px;
			}
			input[id="tab01"]:checked ~ .con1 {display:block;}
			input[id="tab02"]:checked ~ .con2 {display:block;}
			div .conbox{
				margin-top:-20px;
				border-top-right-radius:5px;
			}
			.rep_d_cnt{
				width:100%;
				height:40px;
				background-color:#F59A23;
				border-top-right-radius:5px;
				border-top-left-radius:5px;
				color:#fff;
			}
			.rep_d_cnt p{
				width:50%;
				float:left;
				height:30px;
			}
			.rep_pro{
				width:100%;
				height:100px;
				float:left;
			}
			.control{
				width:49.5%;
				height:150px;
				border-radius:5px;
				background-color:#fff;
				display:block;
				margin:0 auto;
				margin-top:1%;
				margin-left:1%;
				float:left;
			}
			.control:hover{
				background-color:#F59A23;
			}
			.control p{
				font-size:20px;
				line-height:150px;
				width:100%;
				height:100%;
			}
			.control p:hover{
				color:#fff;
			} 
			.control:nth-child(2n+1){margin-left:0;} 
			textarea{resize:none;}
			.order{
				padding: 0 0 !important;
				margin: 0 !important;
				margin-top:20px !important;
				width:49.5% !important;
				height: 3.25rem;
			}
			.profile{
				border:1px solid #ddd;
			}
/* 믹스업 라벨부분 */
		</style>
<!-- css 끝 -->
		<script src="../jquery-3.5.1.js" type="text/javascript" text="javascript"></script>
		<script src="mixitup.min.js" type="text/javascript" text="javascript"></script>
<!-- 자바스크립트 시작 -->
		<script>
	//믹스
			$(function(){
				var mixer = mixitup(".mix_wrap",{
					"animation":{
						"duration" : 250,
						"nudge" : false,
						"reverseOut":false,
						"effects" : "fade translateX(20%) stagger(100ms)"
					}
				});

				//filter
				$("#filter").change(function(){
					var $val = $(this).val();

					mixer.filter($val)
				});

				//sort
				$("#sort").change(function(){
					var $val = $(this).val();

					mixer.sort($val);
				
				});
				
			});
	//믹스 끝
	//라이트 박스
			$(function(){
			var $btn = $(".mix_wrap div");
			var $taget = $("#box_wrap");
			var $tagetImg = $taget.find(".mix_wrap div");
			var $proBtn = $("#proBtn");
			var $exit = $("#exit");

			$btn.click(function(a){
				a.preventDefault();
				$taget.fadeIn();
				$("body").css("overflow","hidden");
			});

			$proBtn.click(function(){
				$taget.fadeOut();
				$("body").css("overflow","auto");
			});
			$exit.click(function(){
				$taget.fadeOut();
				$("body").css("overflow","auto");
			});
		});
	//라이트 박스 끝
	  </script>
<!-- 자바스크립트 끝 -->
<!-- HTML시작 -->
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header" class="alt" style="z-index:0;">
				<a class="logo" href="${pageContext.request.contextPath}/index.jsp" style="width:10%;margin-left:16%;"><img src="images/logo.png" alt="" style="width:100%;"/></a>
				<h2>관리자 페이지</h2>
				<nav id="nav" style="margin-right:16%;">
					<ul>
						<li><a href="#" style="border:none;border-radius:50%;background-color:#ddd;"></a></li>
						<li><a href="#">로그아웃</a></li>
						<!--<li><a href="elements.html">Elements</a></li> -->
					</ul>
				</nav>
			</header>
	<!-- 믹스업 -->
		<div class="btn">
	<!-- 아이디 체크 -->
			<div class="wrap">
					<div class="search">
						<input type="text" name="searchTerm" id="search" placeholder="아이디를 검색해주세요."
							style="width:70%; height:65px; border: 1px solid #ddd;color:black;float:left;"/>
						<a href="#" class="button primary icon solid fa-search" onclick="checkId()" style="width:15% !important;height:65px !important;float:left;"></a>
						<button type="button" data-filter="all" style="margin:0 !important;width:15% !important;height:65px !important;"><p>초기화</p></button>
					</div>
			</div>
			<div id="idCh" style="display:none;">
				<label for="" class="label_mix">아이디</label>
				<select name="" id="filter" class="clearfix li sort">
					<option value="all">All</option>
					<option value=".apple">apple</option>
					<option value=".admin">admin</option>
					<option value=".adam">adam</option>
					<option value=".jack">jack</option>
				</select>
			</div>
			
	<!-- 아이디 체크 -->
	<!-- 시간순 체크 -->
			<div style="width:100%;">
				<div style="width:80% !important;margin:0 auto;">			
					<button type="button" class="order" style="float:left;" data-sort="default:asc">최신순</button>
		            <button type="button"  class="order" style="float:right;" data-sort="default:desc">옛날순</button>
				</div>
			</div>
			
	<!-- 시간순 체크 -->
	<!-- 신고 내용 체크 -->
			
			<input id="check" type="checkbox" id="report">
			<div class="checkbox_list clearfix">
					<button type="button" class="control" data-filter="all" ><p>초기화</p></button>

					<button type="button" class="control" data-filter=".ad"><p>광고 (상점 및 타사이트 홍보)</p></button>

					<button type="button" class="control" data-filter=".fraud"><p>사기의심</p></button>

					<button type="button" class="control" data-filter=".ban"><p>거래 금지 품목</p></button>

					<button type="button" class="control" data-filter=".lie"><p>허위매물</p></button>

					<button type="button" class="control" data-filter=".info"><p>상품 정보 부정확</p></button>
			</div>
			<label id="report_btn" for="check">신고 내용</label>
		  </div>
	<!-- 신고 내용 체크 --> 
	<!-- 신고 박스 -->
			<div class="tab_content" style="padding-left:8%;padding-right:8%;">
		<!-- 미처리 처리 탭 선택 -->
				<input type="radio" name="tabmenu" id="tab01" checked>
				<label for="tab01" ><p>신고 미처리</p></label>
				<div style="border-top-right-radius:5px;margin-top:-16px;height:40px;background-color:#fff;border-left:1px solid #ddd;
				border-right:1px solid #ddd;border-top:1px solid #ddd;"></div>
		<!-- 미처리 처리 탭 선택 -->
		<!-- 미처리 -->
				<div class="conbox con1">
					<div class="mix_wrap">
				<!-- 신고 예시 -->
						<div class="mix apple profile fraud info ad" data-order="1">
							<div class="rep_d_cnt">
								<p>2021-05-09</p>
								<p style="text-align:left;">신고 누적 횟수: 01</p>
							</div>
							<div style="height:85px;font-size:10px;width:90%;">

								<div style="width:60px;height:60px;border-radius:50%;background-color:#ddd;margin:0px 30px;margin-bottom:15px;float:left;">프</div>
								<div style="font-size:16px;float:left;line-height:60px;">apple</div>
								<div style="float:right;font-size:16px;line-height:60px;">신뢰도 : 51%</div>
							</div>
							<div class="field" style="width:90%;margin:0 auto; margin-top:-10px;">
								<textarea name="message" id="message" rows="4" style="font-size:14px;" readonly>광고 (상점 및 타사이트 홍보)&#10;사기의심&#10;상품 정보 부정확</textarea>
							</div>
						</div>
				<!-- 신고 예시 -->
					</div>
				</div>		    
		<!-- 미처리 -->
			</div>
		</div>
	<!-- 신고 박스 -->
	<!-- conbox연장선 -->
		<div style="width:64%;height:30px;background-color:#fff;margin:0 auto;border-left:1px solid #ddd;border-right:1px solid #ddd;"></div>
	<!-- conbox연장선 -->
	<!-- footer -->
		<footer style="width:100%;line-height:100px;color:#fff;height:100px;background-color:#353535;text-align:center;">
			© Untitled. All rights reserved. Lorem ipsum dolor sit amet.
		</footer>
	<!-- footer -->
<!-- 라이트 박스 -->
		<div id="box_wrap">
  			<div id="light_box">
				<div id="profile_wrap">
					<div id="profile"></div>
					<div id="pro_id">apple</div>
					<div id="exit"><p>X</p></div>
					<ul id="pro_date">
						<li>2021-05-09</li>
						<li>신고 누적 횟수 : 01</li>
					</ul>					
				</div>
				<div style="width:100%;height:6%;background-color:#fff;margin-bottom:-2%;"></div>
				<div id="content">
					<div class="field" style="width:90%;margin:0 auto;">
						<textarea name="message" id="message" rows="7" style="font-size:13px;margin-top:10px;" readonly>광고 (상점 및 타사이트 홍보)&#10;사기의심&#10;상품 정보 부정확</textarea>
					</div>
				</div>
				<div id="pro_btn_wrap">
					<a href="#" class="button small" id="proBtn" onclick="check()">완료</a>
					<label for="" style="float:left;width:10%;font-size:20px;height:25px;margin-left:41%;line-height:25px;text-align:center;">정지</label>
					<select name="filter" id="filter" style="float:right;width:30% !important;height:50px;margin-right:1%;">
						<option value="" selected disabled>--선택--</option>
						<option value="1">1주</option>
						<option value="2">1달</option>
						<option value="3">영구</option>
					</select>
					
				</div>				
			</div>
		</div>
<!-- 라이트 박스 -->
<!-- Scripts -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script> 
			function check(){
				alert("처리 완료");
				$(".mix").css('display','none');
				
			}
			function checkId(){
				if($("#search").val()=="apple"){
					if($(".mix").css("display")=="none"){
						alert("아이디가 존재하지 않습니다.");
					}
				}else{
					alert("아이디가 존재하지 않습니다.");
				}
				
			}
			</script>
<!-- Scripts -->
	</body>
</html>
<!-- HTML끝 -->