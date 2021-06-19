<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Inverse by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<style>
	/* .mainpage_btn{
		display:flex;
		justify-content:space-between;
	}
	.mainpage_btn div{
		background:#0028b0;
		padding: 10px 10px 10px 10px;
	} */
/* 	
	
	.mainpage_btn{
		width:77%;
		height:200px;
		color:#fff;
		line-height:200px;
		font-size: 40px;
		margin:0 auto;
		
	}
	.mainpage_btn li{
		float:left;
		width:24%;
		border: 6px solid #F59A23;
		background-color: #ffffff;
		color: #F59A23;
		font-weight: 600;
		height:100%;
		cursor: pointer;
		margin-left: 1%;
		border-radius: 10px;
	}
	.mainpage_btn li:hover{
		border: 6px solid #0028B0;
		color:#0028B0;
	}
	
	.mainpage_btn li:nth-child(1) {
		margin-left:0;
	} */
	.search {
	  width: 100%;
	  position: relative;
	  display: flex;
	}
	.searchTerm {
	  width: 100%;
	  border: 3px solid #00B4CC;
	  border-right: none;
	  padding: 5px;
	  height: 20px;
	  border-radius: 5px 0 0 5px;
	  outline: none;
	  color: #9DBFAF;
	}
	.searchTerm:focus{
	  color: #00B4CC;
	}
	.searchButton {
		width: 30%;
		height: 50px;
		border: 1px solid #0028B0;
		background: #0028B0;
		text-align: center;
		color: #fff;
		border-radius: 0 5px 5px 0;
		cursor: pointer;
		font-size: 20px;
	}
/* ----------------------------광고 이미지-------------------------------  */	
	/* 기존에 있던 css설정들 */
	#banner .wrapper {
		/* padding-top: 4rem; */
    	padding-top: 2rem !important;
	}
	.image.fit img {
    	height: 300px !important;
	}
	.image.special {
	    box-shadow: none !important;	
	   /*  margin: 0rem auto 5rem auto !important; */
	   margin: 0rem auto 0rem auto !important;
	}
	.image fit special{
		margin-bottom : 10% !important;
	}
	/* 기존에 있던 css설정들 끝 */
	.img-slider{
		position:relative;
		height:300px;
		margin-bottom:5rem;
	}
	.img-slider .slide{
		z-index:1;
		position:absolute;
		width:100%;
		clip-path:circle(0% at 0 50%);
	}
	.img-slider .slide.active{
		clip-path:circle(150% at 0 50%);
		transition:2s;
		transition-property:clip-path;
	}
	.slide img{
		z-index:1;
		width:100%;
		border-radius:5px;
		height:300px;
	}
	.img-slider .navigation{
		z-index:2;
		position:absolute;
		display:flex;
		bottom: 10px;
		left:50%;
		transform: translateX(-50%);
	}
	.img-slider .navigation .navbtn{
		background: rgba(255,255,255,0.5);
		width:12px;
		height:12px;
		margin:10px;
		border-radius:50%;
		cursor:pointer;
	}
	.img-slider .navigation .navbtn.active{
		background:#0028B0;
		box-shadow: 0 0 2px rgba(0,0,0,0.5);
	}
/* ----------------------------광고 이미지 끝-------------------------------  */	
	/* 버튼 */
	 .buttonMain {
		 -webkit-font-smoothing: antialiased;
		 border: none;
		 color: #fff;
		 display: inline-block;
		 font-size: 24px;
		 text-decoration: none;
		 user-select: none;
		 letter-spacing: 1px;
		 color: white;
		 padding: 20px 40px;
		 text-transform: uppercase;
		 transition: all 0.1s ease-out;
		 height:100px !important;
		 width:190px !important;
		 border-radius: 5px;
		 line-height:50px;
		
	}
	 .buttonMain:active {
		 transform: scale(0.95);
	}
	 .button--bubble {
		 position: relative;
		 z-index: 2;
		 color: white;
		 background: none;
	}
 	 .button--bubble:hover {
		 background: none;
	}
	 .button--bubble:hover + .button--bubble__effect-container .circle {
		 background: #0028b0;
	}
	 .button--bubble:hover + .button--bubble__effect-container .button {
		 background: #0028b0;
	}
	 .button--bubble:active + .button--bubble__effect-container {
		 transform: scale(0.95);
	}
	 .button--bubble__container {
		 position: relative;
		 display: inline-block;
	}
	 .button--bubble__container .effect-button {
		 position: absolute;
		 width: 190px !important;
		 height: 100px !important;
		 top: 50%;
		 left: 25%;
		 z-index: 1;
		 transform: translateY(-50%);
		 background: #222;
		 transition: background 0.1s ease-out;
	}
	 .button--bubble__effect-container {
		 position: absolute;
		 display: block;
		 width: 200%;
		 height: 400%;
		 top: -150%;
		 left: -50%;
		 -webkit-filter: url("#goo");
		 filter: url("#goo");
		 transition: all 0.1s ease-out;
		 pointer-events: none;
	}
	 .button--bubble__effect-container .circle {
		 position: absolute;
		 width: 25px;
		 height: 25px;
		 border-radius: 15px;
		 background: #222;
		 transition: background 0.1s ease-out;
	}
	 .button--bubble__effect-container .circle.top-left {
		 top: 40%;
		 left: 27%;
		 background: #0028b0;
	}
	 .button--bubble__effect-container .circle.bottom-right {
		 bottom: 40%;
		 right: 27%;
		 background: #0028b0;
	}
	 .goo {
		 position: absolute;
		 visibility: hidden;
		 width: 1px;
		 height: 1px;
	}
	 .button--bubble__container {
		 top: 50%;
		 margin-top: -25px;
	}
	.button_wrap{
		width:24.25%;
		float:left;
		margin-left:1%;
	}
	/*Resize the wrap to see the search bar change!*/
	.wrap{
	  width: 25%;
	  position: absolute;
	  top: 50%;
	  left: 45%;
	  transform: translate(-50%, -50%);
	}
	
	/* section2 사용자 후기글 */
	h3{
		color : #424242 !important;
		text-align: left;
   		margin: 7px 7px 3.5px !important; 
	}
	.userReview{
		display : inline-block;
		/* border : 1px solid #ddd; */
		width : 47%;
		height : 650px;
		float: left;
    	position: relative;
    	margin: 4.5% 0% 0% 12.8%
	}
	.review_img{
		display: block;
		width : 100%; 
		height : auto; 
	}
	#arrow_img1{
		transform: rotate(180deg);
	    position: absolute;
    	top: 40%;
    	right: 94%;
	}
	#arrow_img2{
	    position: absolute;
	    top: 40%;
    	left: 94%;
	}
	.userComment{
	    text-align: left;
   		color: black !important;
    	padding: 0.7rem;
    	line-height: 180%;
    	border : 1px solid #ddd;
    	border-top:none;
    	margin-top:-15px;
    	width: 658px;
    	height: 164px;
    	font-size: large;
	}
	/* section2 최근 게시글 */
	.recentPost{
		display : inline-block;
		/* border : 1px solid #ddd; */
		width : 25%;
		height : auto;
    	float: left;
   	 	position: relative;
    	margin: 4.5% 0% 0% 3%;
	}
	.recentPost-wrapper{
		border: 1px solid #ddd;
		border-bottom:none;
	}
	.recentPostDetail{
		border-bottom: 1px solid #ddd;
	}
	.recentPost_list{
		margin: auto;
		padding: 0rem;
		display: flex;
	}
	.recentPost_list li {
    	padding: 0rem;
   		text-align: left;
	}
	.recentPost_list dl{
		margin:auto;
	}
	.recentPost_list dl dd {
    	margin-left: 0.7rem;
	}
	#post_time{
		color:black;
		font-size: x-small;
		float: right;
	}
	#product_img{
		display: block;
	    float: left;
	    position: relative;
	}
	#banner a {
    	color: #424242 !important;
	}
	#banner a:hover {
    	color: #424242 !important;
	}
	#location{
		color: #424242;
	}	
	/* floating  */
	.floating {
		position: fixed; 
		top: 265px; 
		right: 280px; 
		width: 110px; 
		z-index: 100;
		border: 1px solid #dbdbdb;
		text-align: center;
		background: #fff;
	}
	.floating .recent_prod_title { 
		font-size: 15px;
		font-weight: 500;
		margin-bottom: -35px;
		color : black;
	}
	.floating hr {
		margin-bottom: 10px;
	}
	.floating a {
		display: block;
	}
	#banner hr {
    	border-bottom-color: #ddd !important;
	}
	.floating2{
		position: fixed; 
		top: 640px; 
		right: 280px; 
		width: 110px; 
		z-index: 100;
		border: 1px solid #dbdbdb;
		text-align: center;
		background: #fff
	}
	.floating .top { 
		font-size: 15px;
		font-weight: 500;
		margin-bottom: -35px;
		color : black;
	}
/* 회윤님 */
	/* 인기검색어 */
	.none, #up {
		display: none
	}
	
	#ticker {
		float: left;
		width: 100px;
	}
	
	.navi {
		float: left;
	}
	
	.block {
		/* border: 1px solid black; */
		padding: 0 5px;
		height: 20px;
		overflow: hidden;
		background: #fff;
		width: 350px;
		font-family: Gulim;
		font-size: 12px;
		float: left;
	}
	
	.block ul, .block li {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	.block li a {
		display: block;
		height: 20px;
		line-height: 20px;
		color: #555;
		text-decoration: none;
	}
	#ticker_fake{
		margin: 0;
		padding: 0;
		list-style: none;
		width:200px;
		border: 1px solid #ddd;
		border-radius: 5px;
		background: #fff;
	}
	#ticker_fake li a{
		display: block;
		line-height: 1.3rem;
		color: #555;
		text-decoration: none;
		clear: both;
		font-size: large;
	    text-align: left;
	    margin-left: 2.5%
	}
	.spanNum{
		color:#0028b0 !important;
		font-style: italic;
	    font-weight: bold;
	}
/* 인기검색어  끝 */
.ranking {
	position: absolute;
	top: 78px;
	right: 690px;
	list-style: none;
	text-decoration: none;
	display: inline-block;
	float: right;
	width: 200px;
}

.rank:link {
	color: red;
	text-decoration: none;
}

.rank:visited {
	color: black;
	text-decoration: none;
}
/* 회윤님 끝 */
/* 동그라미 버튼들  */
/*.circleBtn-wrapper{
	margin: 0rem 175px 2rem 175px;
}
.circleBtn-container{
	margin: 0rem 1rem 3rem 1rem;;
}
.circleBtn{
	display: inline-block;
	width:10px;
	height:10px;
	border-radius:50%;
	background: #ddd;
	margin-right: 10px;
} */
</style>
<html>
	<head>
		<title>ez마켓</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/mainfixed.css" />
		<link href="images/iconpng.png" rel="icon">
	</head>
	
	<body class="is-preload">
			
		<c:if test="${session_id != null}">
			<script>
				alert("${session_id.getUserid()}님 반갑습니다.")
			</script>
		</c:if>	
		
		<!-- Header -->
			<header id="header" class="alt">
				<a class="logo" href="index.jsp" style="width: 10%;">
					<img src="images/logo.png" alt="" style="width: 100%; margin-left: 210%" />
				</a>
				<form method="get"  name="search_topic">
				<div class="wrap">
					<div class="search">
						<input value="" type="text" name="searchTerm" id="search"
							placeholder="상품을 검색해주세요."
							style="width: 180%; height: 50px; border: 1px solid #ddd; margin-left: 10%; color: black;border-radius: 5px 0 0 5px;" />
						<a href="javascript:search_product();" class="searchButton">
		        			<i class="fa fa-search"></i>
		        		</a>
					</div>
				</div>
				</form>
				
				<!-- 인기 검색어 -->
				<div class="ranking-wrap" style="position: absolute; right: 35%;">
					<div class="block"
						style="width: 100px; font-size: 20px; font-weight: 900; margin-top: 5px; margin-right: 15px;">
						<ul id="ticker">
							<li><a href="#"><span class="spanNum">1</span> 아이폰12</a></li>
							<li><a href="#"><span class="spanNum">2</span> 어버이날</a></li>
							<li><a href="#"><span class="spanNum">3</span> 상품3</a></li>
							<li><a href="#"><span class="spanNum">4</span> 애플워치SE</a></li>
							<li><a href="#"><span class="spanNum">5</span> 상품5</a></li>
							<li><a href="#"><span class="spanNum">6</span> 상품6</a></li>
							<li><a href="#"><span class="spanNum">7</span> 상품7</a></li>
							<li><a href="#"><span class="spanNum">8</span> 상품8</a></li>
							<li><a href="#"><span class="spanNum">9</span> 상품9</a></li>
						</ul>
					</div>
					<div class="navi" style="width: 20px;">
						<a id="down" href="#"><img
							src="${pageContext.request.contextPath}/images/down.png" alt="▽"
							style="width: 20px;"></a> <a id="up" href="#"><img
							src="${pageContext.request.contextPath}/images/up.png" alt="△"
							style="width: 20px;"></a>
					</div>
				</div>
				<div>		
					<ul id="ticker_fake"style="position: absolute; right: 600px; top:140px; heigh: 280px;">
						<li style="font-size:17px;font-weight: bold;text-align:left;">실시간 검색어</li>
						<hr style="margin:0rem;">
						<li><a href="#"><span class="spanNum">1</span>&nbsp;&nbsp;&nbsp;&nbsp;아이폰12</a></li>
						<li><a href="#"><span class="spanNum">2</span>&nbsp;&nbsp;&nbsp;&nbsp;애플워치SE</a></li>
						<li><a href="#"><span class="spanNum">3</span>&nbsp;&nbsp;&nbsp;&nbsp;상품3</a></li>
						<li><a href="#"><span class="spanNum">4</span>&nbsp;&nbsp;&nbsp;&nbsp;애플워치SE</a></li>
						<li><a href="#"><span class="spanNum">5</span>&nbsp;&nbsp;&nbsp;&nbsp;상품5</a></li>
						<li><a href="#"><span class="spanNum">6</span>&nbsp;&nbsp;&nbsp;&nbsp;상품6</a></li>
						<li><a href="#"><span class="spanNum">7</span>&nbsp;&nbsp;&nbsp;&nbsp;상품7</a></li>
						<li><a href="#"><span class="spanNum">8</span>&nbsp;&nbsp;&nbsp;&nbsp;상품8</a></li>
						<li><a href="#"><span class="spanNum">9</span>&nbsp;&nbsp;&nbsp;&nbsp;상품9</a></li>
					</ul>
				</div>
				
				<nav id="nav" style="margin-right:20%">
					<ul>
						<c:choose>
							<c:when test="${session_id eq null}">
								<li><a href="${pageContext.request.contextPath}/login.me">로그인</a></li>
								<li><a href="${pageContext.request.contextPath}/join.me">회원가입</a></li>
							</c:when>
							<c:when test="${session_id.getUserid() eq 'admin'}">
								<li><a href="${pageContext.request.contextPath}/report/ReportList.re" style="left: 25px;bottom: 2px;">
									관리자</a>
								</li>
								<li><a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/member/Mypage.me" style="left: 25px;bottom: 2px;">
									마이페이지</a>
								</li>
								<li><a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</header>

		<!-- Banner -->
			<div id="banner">
				<div class="wrapper style1 special">
					<div class="inner">
					
					<!----------------------------------광고 이미지--------------------------------------->
						<div class="image fit special">
							<div class="img-slider">
								<div class="slide active">
									<img src="${pageContext.request.contextPath}/images/ad1.png" alt="">
								</div>
								<div class="slide">
									<img src="${pageContext.request.contextPath}/images/ad2.png" alt="">
								</div>
								<div class="slide">
									<img src="${pageContext.request.contextPath}/images/ad3.png" alt="">
								</div>
								<div class="navigation">
									<div class="navbtn active"></div>
									<div class="navbtn"></div>
									<div class="navbtn"></div>
								</div>
							</div>
						</div>
					<!----------------------------------광고 이미지 끝--------------------------------------->
						
						<div style="width:80%;margin:0 auto;margin-bottom: 150px;">
							<svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="goo">
							  <defs>
							    <filter id="goo">
							      <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
							      <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
							      <feComposite in="SourceGraphic" in2="goo"/>
							    </filter>
							  </defs>
							</svg>
							<div class="button_wrap" style="margin-left:0;">
								<span class="button--bubble__container">
								  <a href="${pageContext.request.contextPath}/board/BoardSaleWrite.bo" class="buttonMain button--bubble" style="background:#0028b0;">
									   <p style="color:#fff;">판매하기</p>
								  </a>
								  <span class="button--bubble__effect-container">
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									
									   <span class="buttonMain effect-button"></span>
									
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
								  </span>
								</span>
							</div>
							<div class="button_wrap">
								<span class="button--bubble__container">
								  <a href="${pageContext.request.contextPath}/board/BoardRentWrite.bo" class="buttonMain button--bubble" style="background:#0028b0;">
									   <p style="color:#fff;">대여하기</p>
								  </a>
								  <span class="button--bubble__effect-container">
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									
									   <span class="buttonMain effect-button"></span>
									
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
								  </span>
								</span>
							</div>
							<div class="button_wrap">
								<span class="button--bubble__container">
								  <a href="${pageContext.request.contextPath}/board/sale_list.bo?category=all" class="buttonMain button--bubble" style="background:#0028b0;">
									   <p style="color:#fff;">구매하기</p>
								  </a>
								  <span class="button--bubble__effect-container">
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									
									   <span class="buttonMain effect-button"></span>
									
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
								  </span>
								</span>
							</div>
							<div class="button_wrap">
								<span class="button--bubble__container">
								  <a href="${pageContext.request.contextPath}/board/rent_list.bo?category=all" class="buttonMain button--bubble" style="background:#0028b0;">
									   <p style="color:#fff;">대여받기</p>
								  </a>
								  <span class="button--bubble__effect-container">
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									   <span class="circle top-left"></span>
									
									   <span class="buttonMain effect-button"></span>
									
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
									   <span class="circle bottom-right"></span>
								  </span>
								</span>
							</div>
						</div>
						
						<div class="section2">
						
							<div class="userReview">
								<h3 style="font-weight : 500;">사용자 후기글</h3>
								<div class="userReview-wrapper">
									<div class="review_img">
										<img src="${pageContext.request.contextPath}/images/grandpa.jpg" id="customer_img" width="100%" height="auto" alt="고객 이미지">
										<img src="${pageContext.request.contextPath}/images/arrow.png" id="arrow_img1" class="arrow" width="30px" height="auto" alt="화살표 버튼">				
										<img src="${pageContext.request.contextPath}/images/arrow.png" id="arrow_img2" class="arrow" width="30px" height="auto" alt="화살표 버튼">				
									</div>
									<div id="userComment1" class="userComment" style="display:block; ">
										박덕화 님<br>
										손주가 장난감을 너무 좋아하는데 EZ마켓 덕분에 저희 손주에게 장난감 선물도 더 해줄수 있고 시간도 같이 더 보낼 수 있어서 너무 좋습니다.
									</div>
									<div id="userComment2" class="userComment" style="display:none;">
										김해진님<br>
										가정을 새로 꾸미면서 생각보다 가구 예산이 많이들어 부담스러웠는데 EZ마켓 덕분에 이쁘고 상태 좋은 가구들을 쉽게 구매할 수 있어서 한 걱정 덜었어요!
									</div>
								</div>
							</div>
							
							<div class="recentPost">
								<h3 style="font-weight : 500;">최근 게시글</h3>
								<div class="recentPost-wrapper">
									<!-- 화면 보고 게시글 겟수 정하기 -->
									<c:forEach var="i" begin="0" end="3">
										<div class="recentPostDetail" style="padding : 0.5rem;">
											<div><a href="#"><img src="./images/sample6.jpg" id="product_img" width="130" height="130" alt="상품 이미지"></a></div>
											<div id="post_time">몇분전</div>
											<ul class="recentPost_list">
												<li>
													<dl>
														<dd class="" id="product_name"><a href="#">제목</a></dd>
														<dd class="" id="price"><a href="#">가격</a></dd>
														<dd class="" id="location"><a href="#">지역</a></dd>	
													</dl>
												</li>
											</ul>
										</div>
									</c:forEach>
								</div>
							</div>
							
							<c:choose>
								<c:when test="${session_id != null}">
									<div class="floating">
										<div class="recent_prod_title">최근 본 상품</div>
										<hr>
										<div class="recent_prod_list">
											<a href="#"><img src="${pageContext.request.contextPath}/images/sample6.jpg" width="90" height="90" alt="상품 이미지"></a>
											<a href="#"><img src="${pageContext.request.contextPath}/images/sample2.jpg" width="90" height="90" alt="상품 이미지"></a>
											<a href="#"><img src="${pageContext.request.contextPath}/images/sample3.jpg" width="90" height="90" alt="상품 이미지"></a>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="floating" style="height:345px;color:black;">
										<div class="recent_prod_title">최근 본 상품</div>
										<hr>
										<div class="recent_prod_list">
											로그인 후<br>
											이용해주세요.
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<c:if test="${session_id != null}">
							</c:if>	
							<%-- <div class="floating">
								<div class="recent_prod_title">최근 본 상품</div>
								<hr>
								<div class="recent_prod_list">
									<a href="#"><img src="${pageContext.request.contextPath}/images/sample6.jpg" width="90" height="90" alt="상품 이미지"></a>
									<a href="#"><img src="${pageContext.request.contextPath}/images/sample2.jpg" width="90" height="90" alt="상품 이미지"></a>
									<a href="#"><img src="${pageContext.request.contextPath}/images/sample3.jpg" width="90" height="90" alt="상품 이미지"></a>
								</div>
							</div> --%>
							
							<div class="floating2">
								<a href="#header"><div class="top">TOP</div></a>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			
			
			<div id="footer">
					<div class="copyright" style="background:#353535;color:#fff;float:left; width:100%">
						<div style="width:100%;height:50px;">
							<ul class = "footer_list" style="width:55%;height:50px;list-style:none;text-align:center;margin: 0 auto;">
								<li><a href="#">회사소개</a></li>
								<li><a href="#">광고문의</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">개인정보처리방침</a></li>
								<li><a href="#">고객센터</a></li>
							
							</ul>
						</div>	
						Copyright©2021&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ezmarket&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All rights reserved.
					</div>
				</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/btnJs/CSSPlugin.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/btnJs/EasePack.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/btnJs/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/btnJs/TimelineLite.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/btnJs/TweenLite.min.js"></script>
	</body>
	
<script>
//팝업창 쿠키관리
	//쿠키 삭제
	var deleteCookie = function(name) {
		document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
	}
	//쿠키 가져오기
	function getCookie(key){
		var cookieList=document.cookie.split(";");
		for (var i = 0; i < cookieList.length; i++) {
			//cookie는 내장함수
			//key1=value1; key2=value2; ...
			var entry = cookieList[i].trim();
			var datas = entry.split("="); 
			console.log("쿠키 : "+datas)
			if(datas[2]!=null){
				var splitTime = (datas[2].split(" ")); 
			}
			if(datas[0]==key){
				if(splitTime[0]>=24){
					deleteCookie("no-popupToday");
				}
				console.log("setCookie의 시간 : "+datas[2]);
				console.log("오늘 하루 보지 않음 여부 : "+datas[1]);
				return unescape(datas[1]);
			}
		}
	}
	//쿠키가 없다면 팝업창 띄우기
	if(getCookie("no-popupToday")!='yes'){
		//팝업창 띄우기
		window.open("${pageContext.request.contextPath}/guide.jsp", '_blank','width=910px, height=600px,left=0px,top=10px, resizable:no;');
		/*
		시간에 따라서 쿠키를 삭제하는 코드 구현 필요
		deleteCookie("no-popupToday"); 
		*/
	}
	/* 사용자 후기 JS */
	$(function(){
		$(".arrow").click(function(){
			if($("#customer_img").attr("src") == "./images/grandpa.jpg"){
				$("#customer_img").attr("src", "./images/couple.jpg");
				$("#userComment1").hide();
				$("#userComment2").show();
			}else{
				$("#customer_img").attr("src", "./images/grandpa.jpg");
				$("#userComment1").show();
				$("#userComment2").hide();
			}
		});
	});
	
	$(function(){
		$(".arrow_img2").click(function(){
			if($("#customer_img").attr("src") == "./images/grandpa.jpg"){
				$("#customer_img").attr("src", "./images/couple.jpg");
			}else{
				$("#customer_img").attr("src", "./images/grandpa.jpg");
			}
		});
	});
	/* 사용자 후기 JS 끝 */
	
//-------------------------광고 이미지 변환----------------------------------
	var slides = document.querySelectorAll('.slide');
	var btns = document.querySelectorAll('.navbtn');
	let currentSlide=1;
	
    //manual navigation
    var manualNav = function(manual){
      slides.forEach((slide) => {
        slide.classList.remove('active');

        btns.forEach((btn) => {
          btn.classList.remove('active');
        });
      });

      slides[manual].classList.add('active');
      btns[manual].classList.add('active');
    }

    btns.forEach((btn, i) => {
      btn.addEventListener("click", () => {
        manualNav(i);
        currentSlide = i;
      });
    });

    //auto navigation
    var repeat = function(activeClass){
      let active = document.getElementsByClassName('active');
      let i = 1;

      var repeater = () => {
        setTimeout(function(){
          [...active].forEach((activeSlide) => {
            activeSlide.classList.remove('active');
          });

        slides[i].classList.add('active');
        btns[i].classList.add('active');
        i++;

        if(slides.length == i){
          i = 0;
        }
        if(i >= slides.length){
          return;
        }
        repeater();
      }, 5000);
      }
      repeater();
    }
    repeat();
//-------------------------광고 이미지 변환 끝----------------------------------
	
	/* 인기검색어 JS */
	jQuery(function($) {
		var ticker = function() {
			timer = setTimeout(function() {
				$('#ticker li:first').animate({
					marginTop : '-20px'
				}, 400, function() {
					$(this).detach().appendTo('ul#ticker').removeAttr('style');
				});
				ticker();
				// 돌아가는 시간
			}, 3000);
		};
	
		$(document).on('click', '.prev', function() {
			$('#ticker li:last').hide().prependTo($('#ticker')).slideDown();
			clearTimeout(timer);
			ticker();
			if ($('.pause').text() == 'Unpause') {
				tickerUnpause();
			}
			;
		});
		// 마우스를 올렸을 때 기능 정지
		var tickerover = function(event) {
			$('#ticker').mouseover(function() {
				clearTimeout(timer);
			});
			$('#ticker').mouseout(function() {
				ticker();
			});
		};
		tickerover(); // 4 끝
		ticker();
	});
	
	 $('.block').css("overflow","hidden")
	 $('#ticker_fake').css("display","none")
	 $('#down').click(function(event){
		    event.preventDefault();
		 	$('#ticker_fake').css("display","block");
		 	$('#ticker_fake').css("height","280px");
		 	$('#down').css("display","none");
		 	$('#up').css("display","block");
		  });
	 $('#up').click(function(event){
		    event.preventDefault();
		 	$('#ticker_fake').css("display","none");
		 	$('#down').css("display","block");
		 	$('#up').css("display","none");
		  });
		
	/* 버튼 4개 */
	$('.button--bubble').each(function() {
		  var $circlesTopLeft = $(this).parent().find('.circle.top-left');
		  var $circlesBottomRight = $(this).parent().find('.circle.bottom-right');
	
		  var tl = new TimelineLite();
		  var tl2 = new TimelineLite();
	
		  var btTl = new TimelineLite({ paused: true });
	
		  tl.to($circlesTopLeft, 1.2, { x: -25, y: -25, scaleY: 2, ease: SlowMo.ease.config(0.1, 0.7, false) });
		  tl.to($circlesTopLeft.eq(0), 0.1, { scale: 0.2, x: '+=6', y: '-=2' });
		  tl.to($circlesTopLeft.eq(1), 0.1, { scaleX: 1, scaleY: 0.8, x: '-=10', y: '-=7' }, '-=0.1');
		  tl.to($circlesTopLeft.eq(2), 0.1, { scale: 0.2, x: '-=15', y: '+=6' }, '-=0.1');
		  tl.to($circlesTopLeft.eq(0), 1, { scale: 0, x: '-=5', y: '-=15', opacity: 0 });
		  tl.to($circlesTopLeft.eq(1), 1, { scaleX: 0.4, scaleY: 0.4, x: '-=10', y: '-=10', opacity: 0 }, '-=1');
		  tl.to($circlesTopLeft.eq(2), 1, { scale: 0, x: '-=15', y: '+=5', opacity: 0 }, '-=1');
	
		  var tlBt1 = new TimelineLite();
		  var tlBt2 = new TimelineLite();
		  
		  tlBt1.set($circlesTopLeft, { x: 0, y: 0, rotation: -45 });
		  tlBt1.add(tl);
	
		  tl2.set($circlesBottomRight, { x: 0, y: 0 });
		  tl2.to($circlesBottomRight, 1.1, { x: 30, y: 30, ease: SlowMo.ease.config(0.1, 0.7, false) });
		  tl2.to($circlesBottomRight.eq(0), 0.1, { scale: 0.2, x: '-=6', y: '+=3' });
		  tl2.to($circlesBottomRight.eq(1), 0.1, { scale: 0.8, x: '+=7', y: '+=3' }, '-=0.1');
		  tl2.to($circlesBottomRight.eq(2), 0.1, { scale: 0.2, x: '+=15', y: '-=6' }, '-=0.2');
		  tl2.to($circlesBottomRight.eq(0), 1, { scale: 0, x: '+=5', y: '+=15', opacity: 0 });
		  tl2.to($circlesBottomRight.eq(1), 1, { scale: 0.4, x: '+=7', y: '+=7', opacity: 0 }, '-=1');
		  tl2.to($circlesBottomRight.eq(2), 1, { scale: 0, x: '+=15', y: '-=5', opacity: 0 }, '-=1');
		  
		  tlBt2.set($circlesBottomRight, { x: 0, y: 0, rotation: 45 });
		  tlBt2.add(tl2);
	
		  btTl.add(tlBt1);
		  btTl.to($(this).parent().find('.button.effect-button'), 0.8, { scaleY: 1.1 }, 0.1);
		  btTl.add(tlBt2, 0.2);
		  btTl.to($(this).parent().find('.button.effect-button'), 1.8, { scale: 1, ease: Elastic.easeOut.config(1.2, 0.4) }, 1.2);
	
		  btTl.timeScale(2.6);
	
		  $(this).on('mouseover', function() {
		    btTl.restart();
		  });
		});
	//-------------------검색 창-------------------------
	function search_product(){
		const topic = document.search_topic;
		if (topic.searchTerm.value == "" || topic.searchTerm.value == null) {
			alert("검색어를 입력해주세요.");
			topic.searchTerm.focus();
			return false;
		}
		
		topic.action="${pageContext.request.contextPath}/board/product_list.bo?search="+topic.searchTerm.value;
		topic.submit();
	}
	//==================================================
</script>
</html>