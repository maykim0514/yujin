<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>ez마켓</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
	<link href="../images/iconpng.png" rel="icon">
</head>
<style>
		#header {
			position: fixed;
		}
		
		#nav ul li {
			
			padding: 0;
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
		
		.userprofile_box {
			margin-top: 50px;
			border: 1px solid #F59A23;
			height: 300px;
			background: #F59A23;
		}
		
		.inner_box {
			margin: 50px 0 0 100px;
		}
		
		.userphoto {
			display: inline;
			float: left;
			margin-right: 50px;
			margin-top: -8px;
		 	
		}
		
		.userphoto img {
			border-radius: 100px;
		}
		
		.username {
			display: flex;
			font-size: 30px;
			font-weight: bold;
			color: #fff;
		}
		
		.trust_percent {
			font-size: 25px;
			margin-bottom: 10px;
			font-weight: 400;
			color: #fff;
		}
		
		.trust_percent span {
			text-decoration: underline;
			font-weight: bold;
		}
		
		.report {
			color: #fff;
			font-size: 16px;
			font-weight: 400;
			float: right;
			margin-right: 10px;
		}
		
		.search {
			display: flex;
			width: 40%;
			position: relative;
			z-index: 1;
		}
		
		.search #search { 
			border-radius: 5px 0 0 5px; margin-left: 45%; width: 100%; height: 55px;
		}
		
		
		.searchButton {
			width: 20%;
			height: 55px;
			border: 1px solid #0028B0;
			background: #0028B0;
			text-align: center;
			color: #fff;
			border-radius: 0 5px 5px 0;
			cursor: pointer;
			font-size: 20px;
			float: right; margin-right:-10%;
		}
		
		.floating {
			position: fixed; 
			top: 230px; 
			right: 280px; 
			width: 110px; 
			z-index: 100;
			border: 1px solid #dbdbdb;
			text-align: center;
		}
		
		.floating .recent_prod_title { 
			font-size: 15px;
			font-weight: 500;
			margin-bottom: -35px;
			
		}
		
		.floating hr {
			margin-bottom: 10px;
		}
		
		.floating a {
			display: block;
		}
		
		.floating2{
			position: fixed; 
			top: 605px; 
			right: 280px; 
			width: 110px; 
			z-index: 100;
			border: 1px solid #dbdbdb;
			text-align: center;
			background: #fff
		}
	
		.floating2 a:hover {
			color: black;
		}
			
		.tab_content {
			margin-top: 30px;
		}
		
		.tab_content hr {
			margin-top: -20px;
			background-color:#F59A23;
		}
		
		input[type="radio"]{
			display:none;
			
		}
		
		input[type="radio"] + label{
			display:inline-block;
			padding:20px;
			width:357.5px;
			text-align:center;
			background-color:#F59A23;
			color:#fff;
			font-size:16px;
			font-weight: 400;
			line-height:30px;
			cursor:pointer;
			opacity:0.4;
			height: 65px;
			margin-right: -5px;
		}
		
		input[type="radio"]:checked + label{
			opacity:1;
		}
		
		
		section {
			display: none;
			
		}
		
		.tab_content section hr {
			margin-top: 0px;
			background-color: #dbdbdb;
		} 
		
		.tab_content section div.title {
			font-size: 25px;
			font-weight: 400;
			margin-left: 25px;
			margin-bottom: 10px;
		}
		
		#tab01:checked ~ #content1,
		#tab02:checked ~ #content2,
		#tab03:checked ~ #content3 {
			display: block;
		}
		
		.selling_list li {
			width: 196px;
			height: 300px;
 			border: 1px solid #dbdbdb;
			padding-left: 0px;
			list-style: none; 
			line-height: 30px;
			float: left;
			margin: 0 11px 11px 0;
		}
		
		.selling_list dd {
			margin-left: 0;
		}
		
		.selling_list a {
			color: #000000;
			width: 100%;
		}
		
		.selling_list a:hover {
			color: #000000;
		}
		
		.selling_list dd#product_name {
			margin-left: 10px;
			margin-right: 10px;
			font-size: 16px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		.selling_list dd#price {
			margin-left: 10px;
		}
		
		.selling_list dd#location {
			margin-left: 10px;
		}	

		.rental_list li {
			width: 196px;
			height: 300px;
 			border: 1px solid #dbdbdb;
			padding-left: 0px;
			list-style: none; 
			line-height: 30px;
			float: left;
			margin: 0 11px 11px 0;
		}
		
		.rental_list dd {
			margin-left: 0;
		}
		
		.rental_list a {
			color: #000000;
			width: 100%;
		}
		
		.rental_list a:hover {
			color: #000000;
		}
		
		.rental_list dd#product_name {
			margin-left: 10px;
			margin-right: 10px;
			font-size: 16px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		.rental_list dd#price {
			margin-left: 10px;
		}
		
		.rental_list dd#location {
			margin-left: 10px;
		}	
		/* radio button 없애기 */
		input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before {
   			border-color: #0028B0;
   			color: #0028B0;
   			display:none;
		}
		/* 신뢰도 평가 퍼센트 */
		.single-chart, .explain, .circle_wrap{
		  height:170px;
		  float:left;
		}
		.single-chart {
		  width: 50%;  
		  margin-top:20px;
		}
		.explain{
			width:69%;
			line-height:170px;
			font-size:18px;
			margin-left:1%;
			font-weight:bold;
		}
		.circle_wrap{
		  float:left;
		  width:30%;  
		}
		.circular-chart {
		  display: block;
		  margin: 10px auto;		  
		}
		
		.circle-bg {
		  fill: none;
		  stroke: #eee;
		  stroke-width: 3.8;
		}
		
		.circle {
		  fill: none;
		  stroke-width: 2.8;
		  stroke-linecap: round;
		  animation: progress 1s ease-out forwards;
		}
		
		@keyframes progress {
		  0% {
		    stroke-dasharray: 0 100;
		  }
		}
		
		.circular-chart.orange .circle {
		  stroke: #ff9f00;
		}
		
		.percentage {
		  fill: #666;
		  font-family: sans-serif;
		  font-size: 0.5em;
		  text-anchor: middle;
		}
		      /* 라이트 박스 */
      #box_wrap{
      	width:100%;
		height:100%;
		position:fixed;
		top:0;
		background:rgba(0,0,0,0.4);
		display:none; 
		z-index:101;
	  }
	  #light_box{
		width:525px;
		height: 500px;
		position:absolute;
		left:38%;
		top:30%;
		background-color:#fff;
		border-radius: 5px;
	  }
	  #li_box_head,#li_box_con{
	  	width:80%;
	  	margin:0 auto;
	  	margin-top:20px;
	  }
	  #li_box_head{
	  	height:70px;
	  }
	  #li_box_head h4{
	  	font-size:25px;
	  	line-height:60px;
	  }
	  #li_box_title{float:left;}
	  #li_box_exit{
	  	float:right;
	  	cursor:pointer;
	  	height:10px;
	  }
	  #li_box_exit:hover{
	  	font-weight:bold;
	  }
	  #li_box_con input[type="checkbox"]:checked + label:before{
   		border-color: #0028B0;
   		color: #0028B0;
   		display:inline-block;
	  }
</style>
<script src="../jquery-3.5.1.js" type="text/javascript" text="javascript"></script>
<script>
	//라이트 박스
			$(function(){
			var $btn = $(".rpt_btn");
			var $taget = $("#box_wrap");
			var $tagetImg = $taget.find(".mix_wrap div");
			var $proBtn = $(".rpt_confirm_btn");
			var $exit = $("#li_box_exit");

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
<body>

	<!-- Header -->
			<header id="header" style="z-index:5;">
				<a class="logo" href="${pageContext.request.contextPath}/index.jsp" style="width:10%;">
				<img src="../images/logo.png" alt="" style="width:100%; margin-left:215%; display: inline-block;
				position: relative; z-index: 2;"/></a>
				<!-- Search -->
 				<div class="search">
					<input id="search" name="search" type="text" value="" placeholder="상품을 검색해주세요."/>
					<a href="#" class="searchButton">
        				<i class="fa fa-search"></i>
        			</a>
				</div>
				
				<nav id="nav" style="margin-right:380px;">
					<ul>
						<li><a href="${pageContext.request.contextPath}/Mypage/Mypage.jsp">마이페이지</a></li>
						<li><a href="">로그아웃</a></li>
					</ul>
				</nav>
			</header>
        
		
		

        <div class="wrap" >
 			<div class="inner" >
 	
 	<!-- User Profile -->
 				<div class="userprofile_box">
 					<div class="inner_box">
						<div class="userphoto">
							<img src="../images/userpic.jpg" width="210" height="210" alt="프로필 이미지"> 
						</div>	
						<div class="username">닉네임</div>
						<div class="trust_percent">회원님의 신뢰도는 <span>100%</span>입니다.</div>
						<div class="buttons">
							<a href="trustevaluation.jsp" class="button primary small">신뢰도 평가하기</a>
							<a href="${pageContext.request.contextPath}/inbox/sendinboxview.jsp" class="button primary small"
							onClick="window.open(this.href,'_blank','width=600px, height=630px,left=1200px,top=500px');return false;">
							쪽지하기</a>
						</div>
						<div class="report"><br><a href="#" style="color:#fff" class="rpt_btn">
						<img src="../images/report.png" width="15" height="15">&nbsp;신고하기</a></div>
					</div>		
				</div>
				
				
				
	<!--  Tab content -->
				<div class="tab_content">
					
					<input type="radio" name="tabmenu" id="tab01" checked >
					<label for="tab01" ><p>판매 상품</p></label>
						
					<input type="radio" name="tabmenu" id="tab02">
					<label for="tab02"><p>대여 상품</p></label>
					
					<input type="radio" name="tabmenu" id="tab03">
					<label for="tab03" ><p>받은 신뢰도 평가</p></label>
						
					
					
					<hr>
					
					
						<section id="content1">
							<div class="title">판매 상품</div>
							<hr>
							<ul class="selling_list">
							<% for(int i = 0; i < 8 ; i++){  %>
								<li>
									<dl>
										<dd><a href="#"><img src="../images/sample2.jpg" width="194" height="194" alt="상품 이미지"></a></dd>
										<dd class="" id="product_name"><a href="#">제목입니다</a></dd>
										<dd class="" id="price" style="font-weight:bold; font-size:20px"><a href="#">50,000</a></dd>
										<dd class="" id="location"><a href="#" style="font-size:15px">마포구</a></dd>	
									</dl>
								</li>
							<%} %>
							</ul>	
						</section>
					
						<section id="content2">
							<div class="title">대여 상품</div>
							<hr>
							<ul class="rental_list">
							<% for(int i = 0; i < 8 ; i++){  %>
								<li>
									<dl>
										<dd><a href="#"><img src="../images/sample3.jpg" width="194" height="194" alt="상품 이미지"></a></dd>
										<dd class="" id="product_name"><a href="#">제목입니다</a></dd>
										<dd class="" id="price" style="font-weight:bold; font-size:20px"><a href="#">50,000</a></dd>
										<dd class="" id="location"><a href="#" style="font-size:15px">마포구</a></dd>	
									</dl>
								</li>
							<%} %>
							</ul>	
						</section>
						
						<section id="content3">
							<div class="single-chart">
								<div class="circle_wrap">
								    <svg viewBox="0 0 36 36" class="circular-chart orange">
								      <path class="circle-bg"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <path class="circle"
								        stroke-dasharray="30, 100"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <text x="19" y="21.35" class="percentage">30%</text>
								    </svg>
							    </div>
							    <div class="explain">시간 약속을 잘 지켰어요</div>
							  </div>
							  <div class="single-chart">
								<div class="circle_wrap">
								    <svg viewBox="0 0 36 36" class="circular-chart orange">
								      <path class="circle-bg"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <path class="circle"
								        stroke-dasharray="30, 100"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <text x="19" y="21.35" class="percentage">30%</text>
								    </svg>
							    </div>
							    <div class="explain">친절하고 매너가 좋아요</div>
							  </div>
							  <div class="single-chart">
								<div class="circle_wrap">
								    <svg viewBox="0 0 36 36" class="circular-chart orange">
								      <path class="circle-bg"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <path class="circle"
								        stroke-dasharray="30, 100"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <text x="19" y="21.35" class="percentage">30%</text>
								    </svg>
							    </div>
							    <div class="explain">제가 원하는 장소에서 거래할 수 있었어요</div>
							  </div>
							  <div class="single-chart">
								<div class="circle_wrap">
								    <svg viewBox="0 0 36 36" class="circular-chart orange">
								      <path class="circle-bg"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <path class="circle"
								        stroke-dasharray="30, 100"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <text x="19" y="21.35" class="percentage">30%</text>
								    </svg>
							    </div>
							    <div class="explain">좋은 상품을 저렴하게 판매(대여)해요</div>
							  </div>
							  <div class="single-chart">
								<div class="circle_wrap">
								    <svg viewBox="0 0 36 36" class="circular-chart orange">
								      <path class="circle-bg"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <path class="circle"
								        stroke-dasharray="30, 100"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <text x="19" y="21.35" class="percentage">30%</text>
								    </svg>
							    </div>
							    <div class="explain">상품 상태가 설명한 것과 같아요</div>
							  </div>
							  <div class="single-chart">
								<div class="circle_wrap">
								    <svg viewBox="0 0 36 36" class="circular-chart orange">
								      <path class="circle-bg"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <path class="circle"
								        stroke-dasharray="30, 100"
								        d="M18 2.0845
								          a 15.9155 15.9155 0 0 1 0 31.831
								          a 15.9155 15.9155 0 0 1 0 -31.831"
								      />
								      <text x="19" y="21.35" class="percentage">30%</text>
								    </svg>
							    </div>
							    <div class="explain">상품 설명이 자세해요</div>
							  </div>
						</section>			
     			</div>	
				
				
				
 	
 	<!-- Floating -->
				<div class="floating">
					<div class="recent_prod_title">최근 본 상품</div>
					<hr>
					<div class="recent_prod_list">
						<a href="#"><img src="../images/sample6.jpg" width="90" height="90" alt="상품 이미지"></a>
						<a href="#"><img src="../images/sample2.jpg" width="90" height="90" alt="상품 이미지"></a>
						<a href="#"><img src="../images/sample3.jpg" width="90" height="90" alt="상품 이미지"></a>
					</div>
				</div>
				
				<div class="floating2">
					<div><a href="#" onclick="history.go(0);" class="top">TOP</a></div>
				</div>
				
				
				
 			</div>
 		</div>
		<!-- 라이트 박스 -->
		<div id="box_wrap">
  			<div id="light_box">
	  			<div id="li_box_head">  			
		  			<div id="li_box_title"><h4>신고하기</h4></div>
		  			<div id="li_box_exit"><p>X</p></div>
	  			</div>
	  			<div id="li_box_con">  				
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-one" name="lightbox-one">
						<label for="lightbox-one">광고 (상점 및 타사이트 홍보)</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-two" name="lightbox-two">
						<label for="lightbox-two">사기의심</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-three" name="lightbox-three">
						<label for="lightbox-three">거래 금지 품목</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-four" name="lightbox-four">
						<label for="lightbox-four">허위매물</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-five" name="lightbox-five">
						<label for="lightbox-five">상품 정보 부정확</label>
					</div>
					<a href="#" class="button small rpt_confirm_btn" style="width:100px !important;height:39px !important;line-height:39px !important;">등록</a>
  				</div>
  			</div>		
  		</div>
  		<!-- 라이트 박스 -->
</body>
</html>