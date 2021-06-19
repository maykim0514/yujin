<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
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
		
		
		.list_name {
			
			align: left;
			font-size: 27px;
			font-weight: 500;
			padding: 13px 0 12px 20px;
			color: black;
		}
		
		.recommend_list li {
			width: 196px;
			height: 300px;
 			border: 1px solid #dbdbdb;
			padding-left: 0px;
			list-style: none; 
			line-height: 30px;
			float: left;
			margin: 0 11px 11px 0;
		}
		
		.recommend_list dd {
			margin-left: 0;
		}
		
		.recommend_list a {
			color: #000000;
			width: 100%;
		}
		
		.recommend_list a:hover {
			color: #000000;
		}
		
		.recommend_list dd#product_name {
			margin-left: 10px;
			margin-right: 10px;
			font-size: 16px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		.recommend_list dd#price {
			margin-left: 10px;
		}
		
		.recommend_list dd#location {
			margin-left: 10px;
		}	
		
		.product_list li {
			width: 196px;
			height: 300px;
 			border: 1px solid #dbdbdb;
			padding-left: 0px;
			list-style: none; 
			line-height: 30px;
			float: left;
			margin: 0 11px 11px 0;
		}
		
		.product_list dd {
			margin-left: 0;
		}
		
		.product_list a {
			color: #000000;
			width: 100%;
		}
		
		.product_list a:hover {
			color: #000000;
		}
		
		.product_list dd#product_name {
			margin-left: 10px;
			margin-right: 10px;
			font-size: 16px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		.product_list dd#price {
			margin-left: 10px;
		}
		
		.product_list dd#location {
			margin-left: 10px;
		}		
			
		.nearby_list li {
			width: 196px;
			height: 300px;
 			border: 1px solid #dbdbdb;
			padding-left: 0px;
			list-style: none; 
			line-height: 30px;
			float: left;
			margin: 0 11px 11px 0;
		}
		
		.nearby_list dd {
			margin-left: 0;
		}
		
		.nearby_list a {
			color: #000000;
			width: 100%;
		}
		
		.nearby_list a:hover {
			color: #000000;
		}
		
		.nearby_list dd#product_name {
			margin-left: 10px;
			margin-right: 10px;
			font-size: 16px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		.nearby_list dd#price {
			margin-left: 10px;
		}
		
		.nearby_list dd#location {
			margin-left: 10px;
		}	
		
		
		#category {
			padding-top: 130px;
			padding-left: 30px;
			margin-left:150px;
			margin-top: 75px;
			width: 210px;
			float: left;
		}
		
		#category div {
			margin-top: 50px;
			margin-left: 5px;
			line-height:20px;
		  	padding: 12px 19px;
		  	text-decoration: none;
		  	font-weight: 500;
		  	font-size: 18px; 	
		}
		
		#category hr {
			margin:1px 0 1px 0;
		}
		
		#category ul {
			margin-top: 10px;
			list-style: none;
			line-height: 30px;
		}
		
		#category ul a{
			color: black;
			font-size: 16px;
		}
		
		.floating {
			position: fixed; 
			top: 265px; 
			right: 300px; 
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
			top: 640px; 
			right: 300px; 
			width: 110px; 
			z-index: 100;
			border: 1px solid #dbdbdb;
			text-align: center;
			background: #fff
		}
	
		.floating2 a:hover {
			color: black;
		}
		
		.search {
			display: flex;
			width: 40%;
			position: relative;
			z-index: 1;
		}
		
		.search #search { 
			border-radius: 5px 0 0 5px; margin-left: 47%; width: 100%; height: 55px;
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
		
	</style>	
	
	<body class="is-preload">

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
						<li><a href="${pageContext.request.contextPath}/productlist/rent_list.jsp">대여받기</a></li>
						<li><a href="${pageContext.request.contextPath}/Mypage/Mypage.jsp">마이페이지</a></li>
						<li><a href="">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		
 		
 		<div id="main">
 		
 		<!-- Category -->	
		<div id="category">
			<div>전체 카테고리</div>
			<hr>
			<ul>
				<li><a href="">여성의류</a></li>
				<li><a href="">남성의류</a></li>
				<li><a href="">패션잡화</a></li>
				<li><a href="">디지털 / 가전</a></li>
				<li><a href="">도서 / 티켓 / 취미 / 애완</a></li>
				<li><a href="">생활 / 문구 / 가구</a></li>
				<li><a href="">스포츠 / 레저</a></li>
				<li><a href="">뷰티 / 미용</a></li>
				<li><a href="">유아동 / 출산</a></li>
				<li><a href="">기타</a></li>	
			</ul>
		</div>			    
		<div class="wrap" >
 			<div class="inner" >			

		<!-- Recommend list -->	
				<div class="list_name">오늘의 추천 상품</div>
				
				<ul class="recommend_list">
				<% for(int i = 0; i < 5 ; i++){  %>
					<li>
						<dl>
							<dd><a href="#"><img src="../images/sample6.jpg" width="194" height="194" alt="상품 이미지"></a></dd>
							<dd class="" id="product_name"><a href="#">제목입니다</a></dd>
							<dd class="" id="price" style="font-weight:bold; font-size:20px"><a href="#">50,000</a></dd>
							<dd class="" id="location"><a href="#" style="font-size:15px">마포구</a></dd>	
						</dl>
					</li>
				<%} %>
				</ul>			

		<!-- Nearby list -->	
				<div class="list_name">나와 가까운 상품</div>
				
				<ul class="nearby_list">
				<% for(int i = 0; i < 5 ; i++){  %>
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
				
		<!-- Product list -->	
				<div class="list_name">전체 상품</div>
				<ul class="product_list">
				<% for(int i = 0; i < 10 ; i++){  %>
					<li>
						<dl>
							<dd><a href="${pageContext.request.contextPath}/sale,rentalpost/detail_salepost2.jsp"><img src="../images/sample.jpg" width="194" height="194" alt="상품 이미지"></a></dd>
							<dd class="" id="product_name"><a href="#">제목입니다</a></dd>
							<dd class="" id="price" style="font-weight:bold; font-size:20px"><a href="#">10,000</a></dd>
							<dd class="" id="location"><a href="#" style="font-size:15px">강남구</a></dd>	
						</dl>
					</li>
					<li>
						<dl>
							<dd><a href="#"><img src="../images/sample2.jpg" width="194" height="194" alt="상품 이미지"></a></dd>
							<dd class="" id="product_name"><a href="#">제목이 너무길면 이렇게되버려요</a></dd>
							<dd class="" id="price" style="font-weight:bold; font-size:20px"><a href="#">90,000</a></dd>
							<dd class="" id="location"><a href="#" style="font-size:15px">서초구</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dd><a href="#"><img src="../images/sample6.jpg" width="194" height="194" alt="상품 이미지"></a></dd>
							<dd class="" id="product_name"><a href="#">제목입니다</a></dd>
							<dd class="" id="price" style="font-weight:bold; font-size:20px"><a href="#">50,000</a></dd>
							<dd class="" id="location"><a href="#" style="font-size:15px">마포구</a></dd>	
						</dl>
					</li>
				<%} %>	
				</ul>
				
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
		</div>
		</body>	
	
</html>