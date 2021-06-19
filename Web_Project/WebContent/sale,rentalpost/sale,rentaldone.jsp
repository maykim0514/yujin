<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			z-index:100;
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
		
		.search {
			display: flex;
			width: 40%;
			postion: relative;
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
		
		.main_box {
			margin-top: 30px;
		}
		
		.main_box hr {
			margin-top: -20px;
			margin-bottom: 15px;
		}
		
		.product_photo {
			display: inline;
			float: left;
			margin-right: 50px;
		}
	
		.product_name {
			font-size: 24px;
			font-weight: 600;
			margin-bottom: -50px;
		}
		.product_name span{
			color: red;
		}
		
		.product_price {
			font-size: 40px;
			font-weight: 600;
		
		}
		
		.product_price span {
			font-size: 28px;
			font-weight: 400;
			margin-left: 5px;
		}
		
		.pick_count p {
			float: left;
			font-size: 16px;
			color: #999;
			font-weight: 400;
			margin-bottom: 0px;
		}
		
		.pick_count span {
			margin-left: 5px;
		}
		
		.seen_count p {
			float: right;
			font-size: 16px;
			margin-right: 480px;
			color: #999;
			font-weight: 400;
			margin-bottom: 5px;
		}
		
		.seen_count span {
			margin-left: 5px;
		}
		
		.report {
			margin-top: -40px;
			margin-right: 10px;
			font-size: 16px;
			float: right;
			font-weight: 400;
		}
		
		.report a:hover {
			color: black;
		}
		
		.product_location {
			display: inline-block;		
			color: #999;
			font-weight: 400;
			font-size: 16px;
			
		}
		
		.product_location span {
			color: #61b2d9;
		}
		
		.rent_date {
			display: block;
			margin-top: -30px;		
			color: #999;
			font-weight: 400;
			font-size: 16px;
		}
		
		
		.nego {
			display: block;
			margin-top: -30px;		
			color: #999;
			font-weight: 400;
			font-size: 16px;
		}
		
		.nego span {
			color: red;
		}
		
		.buttons {
			margin-top: -18px;
		}
		
		
		
		.tab_content {
			margin-top: 30px;
		}
		
		.tab_content hr {
			margin-top: -20px;
			background-color:#ccc;
		}
		
		input[type="radio"]{
			display:none;
			
		}
		
		input[type="radio"] + label{
			display:inline-block;
			padding:20px;
			width:536px;
			text-align:center;
			background-color:#ccc;
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
		section .product_detail {
			margin-left: 10px;
			margin-right: 10px;
			margin-bottom: 200px;
		}
		
		section .store_detail {
			margin-bottom: 200px;
		}
		
		.tab_content section hr {
			margin-top: 0px;
			background-color: #dbdbdb;
		} 
		
		.tab_content section div.title {
			font-size: 25px;
			font-weight: 400;
			margin-left: 20px;
			margin-bottom: 10px;
		}
		
		#tab01:checked ~ #content1,
		#tab02:checked ~ #content2{
			display: block;
		}
		
		input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before {
   			border-color: #ccc;
   			color: #ccc;
   			display:none;
		}
		
		.tab_content section .store_detail .userphoto {
			display: inline;
			float: left;
			margin-right: 50px;
		}
		.tab_content section .store_detail .username {
			display: flex;
			font-size: 30px;
			font-weight: bold;	
		}
		
		.tab_content section .store_detail .username a:hover {
			color: black;
		}
		
		.sale_count p {
			float: left;
			font-size: 16px;
			color: #999;
			font-weight: 400;
		}
		
		.sale_count span {
			margin-left: 5px;
		}
		
		.rent_count p {
			float: right;
			font-size: 16px;
			margin-right: 650px;
			color: #999;
			font-weight: 400;
		}
		
		.rent_count span {
			margin-left: 5px;
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
			margin-bottom: 25px;
			
		}
		
		.floating hr {
			margin-bottom: 10px;
			background-color: #dbdbdb;
		}
		
		.floating a {
			display: block;
		}
		
		.floating2{
			position: fixed; 
			top: 600px; 
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
		/* 라이트 박스 */
	      #box_wrap{
	      	width:100%;
			height:100%;
			position:fixed;
			top:0;
			background:rgba(0,0,0,0.4);
			display:none; 
			z-index:101;
			left:0;
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
	
<body>
	
	<!-- Header -->
			<header id="header">
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
						<li><a href="">마이페이지</a></li>
						<li><a href="">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		
		
			<div class="wrap">
				<div class="inner">
				
	<!-- 메인 정보 -->
					<div class="main_box">
						<div class="product_photo">
							<img src="../images/sample3.jpg" alt="상품이미지" width=400 height=400>
						</div>
						
						<div class="product_name">
							<p>${board.boardtitle}테스트1&nbsp;&nbsp;&nbsp;<span>거래가 완료되었습니다!</span></p>
						</div>
						
						<div class="product_price">
							<p>${board.productprice}5000<span>원</span></p>
						</div>
						<hr>
						
						<div class="pick_count">
							<p>찜수<span>${board.boardpickcnt}10</span></p>	
						</div>
						
				
						<div class="seen_count">
							<p>조회수<span>${board.boardreadcnt}50</span></p>	
						</div>
						
						<div class="report"><a href="" style="color: #999;">
						<img src="../images/report2.png" width="15" height="15">&nbsp;신고하기</a></div>
							
						<div class="product_location">
							<p>거래지역&nbsp;&nbsp;&nbsp;&nbsp;<span>${board.location}서울시 용산구</span></p>
						</div>
						
						<div class="rent_date">
							<p>대여기간&nbsp;&nbsp;&nbsp;&nbsp;<span>${board.boarddate}2021-05-15</span></p>
						</div>
						
						<div class="nego">
							<p>가격제안&nbsp;&nbsp;&nbsp;&nbsp;<span>${board.productoffer}불가</span></p>
						</div>

						
						<div class="buttons">
							<a href="" class="button primary small">찜하기</a>
							<a href="${pageContext.request.contextPath}/inbox/sendinboxview.jsp" class="button primary small" 
							onClick="window.open(this.href,'_blank','width=600px, height=630px,left=1200px,top=500px');return false;">
							쪽지하기</a>
						</div>						
						
					</div>
						
	<!-- 탭 -->
				<div class="tab_content">
					<input type="radio" name="tabmenu" id="tab01" checked >
					<label for="tab01" ><p>상품정보</p></label>
						
					<input type="radio" name="tabmenu" id="tab02">
					<label for="tab02"><p>판매자정보</p></label>			
					<hr>				
						<section id="content1">
							<div class="title">상품정보</div>
							<hr>
							<div class="product_detail">
								${board.getProductexplain()}대여 상세보기 게시글 테스트입니다.
							</div>
						</section>
						
						<section id="content2">
							<div class="title">판매자정보</div>
							<hr>
							<div class="store_detail">
								<div class="userphoto">
									<img src="../images/userpic.jpg" width="210" height="210" alt="프로필 이미지"> 
								</div>	
								<div class="username"><a href="">${board.userid}TEST</a></div>
							
							
							<div class="sale_count">
								<p>판매상품<span>5</span></p>	
							</div>
							
					
							<div class="rent_count">
								<p>대여상품<span>0</span></p>	
							</div>
							
							<div class="buttons">
								<a href="${pageContext.request.contextPath}/otherUserProfile/other_user_profile.jsp" class="button primary small">더보기</a>
							</div>
							</div>
							
						</section>
						
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
	<script src="../jquery-3.5.1.js" type="text/javascript" text="javascript"></script>
	<script>
	//라이트 박스
		$(function(){
			var $btn = $(".report");
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
</html>