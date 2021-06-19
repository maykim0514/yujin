<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
			float: right;
			margin-right: 10px;
		}
		
		.search {
			display: flex;
			width: 40%;
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
			right: 15%;
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
			width:357px;
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
		#tab03:checked ~ #content3
		{
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
		
</style>


<body class="is-preload">
	<c:set var="sell_list" value="${requestScope.sell_Array}" />
	<c:set var="rent_list" value="${requestScope.rent_Array}" />
	<c:set var="pick_list" value="${requestScope.pick_Array}" />
	<c:set var="file" value="${requestScope.file}" />
	<!-- Header -->
			<header id="header">
				<a class="logo" href="${pageContext.request.contextPath}/index2.jsp" style="width:10%;">
				<img src="../images/logo.png" alt="" onclick="#" style="width:100%; margin-left:215%; display: inline-block;"/></a>
				<!-- Search -->
 				<div class="search">
					<input id="search" name="search" type="text" value="" placeholder="상품을 검색해주세요."/>
					<a href="#" class="searchButton">
        				<i class="fa fa-search"></i>
        			</a>
				</div>
				
				<nav id="nav" style="margin-right:380px;">
					<ul>
						<li><a href="../index.jsp">로그아웃</a></li>
						<li><a href="${pageContext.request.contextPath}/mail/InboxList.ma">쪽지함</a></li>
					</ul>
				</nav>
			</header>
        



        <div class="wrap" >
 			<div class="inner" >
 	
 	<!-- User Profile -->
 				<div class="userprofile_box">
 					<div class="inner_box">
						<div class="userphoto">
							<a href="#"> <img src="../images/mush.jpg" width="210" height="210" alt="프로필 이미지"> </a>
						</div>	
						<div class="username">닉네임</div>
						<div class="trust_percent">회원님의 신뢰도는 <a href="#" style="color: white;"><span>100%</span></a>입니다.</div>
						<br>
						<div class="report"><br><a href="/Mypage/Mypage_user_edit.me" style="color:#fff">
						<img src="../images/setting.png" style="position: relative; top: 2px;" width="15" height="15">&nbsp;개인정보수정</a></div>
					</div>		
				</div>
				
				
				
	<!--  Tab content -->
				<div class="tab_content">
					
					<input type="radio" name="tabmenu" id="tab01" checked >
					<label for="tab01" ><p>중고 거래</p></label>
					
						
					<input type="radio" name="tabmenu" id="tab02">
					<label for="tab02"><p>대여 거래</p></label>
					
					<input type="radio" name="tabmenu" id="tab03">
					<label for="tab03" ><p>찜 목록</p></label>

					
					<hr>
					
						<section id="content1">
							<div class="title" style="display: inline; float: left; "><a href="#" >게시글 작성하기</a></div>

							<div class="search" style="float:right; margin: 0 2.2rem 0 0; padding: 0 0 0 0;">
								<input id="search" name="search" type="text" value="" placeholder="상품을 검색해주세요."/>
								<a href="#" class="searchButton">
									<i class="fa fa-search"></i>
								</a>
							</div>

							<hr style="clear: both;">
							<ul class="selling_list">
							<c:choose>
								<c:when test="${sell_list!=null and fn:length(sell_list)>0}">
									<c:forEach var="i" begin="0" end="${fn:length(sell_list)-1}">
										<li>
											<dl>
												<a href="${pageContext.request.contextPath}/productlist/product.pr?num=${sell_list[i].getBoardnum()}">
													<dd>
														<c:if test="${file!=null and fn:length(file)>0}">
															<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
																<c:if
																	test="${file[j].getBoardnum()==sell_list[i].getBoardnum()}">
																	<c:set var="flag_lo" value="${j+1}" />
																	<img id="product_list_location_img"
																		src="../sale,rentalpost/files/${file[j].getRealname()}"
																		width="194" height="194" alt="상품 이미지">
																</c:if>
																<c:if test="${flag_lo==null&&j==(fn:length(file)-1)}">
																	<img id="product_list_location_img"
																		src="../sale,rentalpost/files/기본.gif" width="194"
																		height="194" alt="상품 이미지">
																	<c:set var="first_val" value="1" />
																	<c:set var="second_val" value="1" />
																</c:if>
																<c:if test="${flag_lo!=null&&j==(fn:length(file)-1)}">
																	<c:remove var="flag_lo" />
																</c:if>
															</c:forEach>
														</c:if>
													</dd>
													<dd class="" id="product_name">${sell_list[i].getBoardTitle()}</dd>
													<dd class="" id="price" style="font-weight:bold; font-size:20px">${sell_list[i].getProductPrice()}</dd>
													<dd class="" id="location">${sell_list[i].getLocation()}
														<p href="#" style="color: red; font-size: 15px; float: right; margin: 0 10px 0 0;">T.C</p>
													</dd>
												</a>
											</dl>
										</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									판매 내역이 없습니다.
								</c:otherwise>
							</c:choose>
							</ul>	
						</section>			
					

						<section id="content2">
							<div class="title">대여 거래</div>
							<hr>
							<c:choose>
								<c:when test="${rent_list!=null and fn:length(rent_list)>0}">
									<c:forEach var="i" begin="0" end="${fn:length(rent_list)-1}">
										<li>
											<dl>
												<a href="${pageContext.request.contextPath}/productlist/product.pr?num=${rent_list[i].getBoardnum()}">
													<dd>
														<c:if test="${file!=null and fn:length(file)>0}">
															<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
																<c:if
																	test="${file[j].getBoardnum()==rent_list[i].getBoardnum()}">
																	<c:set var="flag_lo" value="${j+1}" />
																	<img id="product_list_location_img"
																		src="../sale,rentalpost/files/${file[j].getRealname()}"
																		width="194" height="194" alt="상품 이미지">
																</c:if>
																<c:if test="${flag_lo==null&&j==(fn:length(file)-1)}">
																	<img id="product_list_location_img"
																		src="../sale,rentalpost/files/기본.gif" width="194"
																		height="194" alt="상품 이미지">
																	<c:set var="first_val" value="1" />
																	<c:set var="second_val" value="1" />
																</c:if>
																<c:if test="${flag_lo!=null&&j==(fn:length(file)-1)}">
																	<c:remove var="flag_lo" />
																</c:if>
															</c:forEach>
														</c:if>
													</dd>
													<dd class="" id="product_name">${rent_list[i].getBoardTitle()}</dd>
													<dd class="" id="price" style="font-weight:bold; font-size:20px">${rent_list[i].getProductPrice()}</dd>
													<dd class="" id="location">${rent_list[i].getLocation()}
														<p href="#" style="color: red; font-size: 15px; float: right; margin: 0 10px 0 0;">T.C</p>
													</dd>
												</a>
											</dl>
										</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									판매 내역이 없습니다.
								</c:otherwise>
							</c:choose>
							</ul>	
						</section>
						
						<section id="content3">
							<div class="title">찜 목록</div>
							<hr>
							<ul class="rental_list">
							<c:choose>
								<c:when test="${pick_list!=null and fn:length(pick_list)>0}">
									<c:forEach var="i" begin="0" end="${fn:length(pick_list)-1}">
										<li>
											<dl>
												<a href="${pageContext.request.contextPath}/productlist/product.pr?num=${pick_list[i].getBoardnum()}">
													<dd>
														<c:if test="${file!=null and fn:length(file)>0}">
															<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
																<c:if
																	test="${file[j].getBoardnum()==pick_list[i].getBoardnum()}">
																	<c:set var="flag_lo" value="${j+1}" />
																	<img id="product_list_location_img"
																		src="../sale,rentalpost/files/${file[j].getRealname()}"
																		width="194" height="194" alt="상품 이미지">
																</c:if>
																<c:if test="${flag_lo==null&&j==(fn:length(file)-1)}">
																	<img id="product_list_location_img"
																		src="../sale,rentalpost/files/기본.gif" width="194"
																		height="194" alt="상품 이미지">
																	<c:set var="first_val" value="1" />
																	<c:set var="second_val" value="1" />
																</c:if>
																<c:if test="${flag_lo!=null&&j==(fn:length(file)-1)}">
																	<c:remove var="flag_lo" />
																</c:if>
															</c:forEach>
														</c:if>
													</dd>
													<dd class="" id="product_name">${pick_list[i].getBoardTitle()}</dd>
													<dd class="" id="price" style="font-weight:bold; font-size:20px">${pick_list[i].getProductPrice()}</dd>
													<dd class="" id="location">${pick_list[i].getLocation()}
														<p href="#" style="color: red; font-size: 15px; float: right; margin: 0 10px 0 0;">T.C</p>
													</dd>
												</a>
											</dl>
										</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									판매 내역이 없습니다.
								</c:otherwise>
							</c:choose>
							</ul>	
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
				
				
				
 			</div>
 		</div>

</body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
		$(function(){
		if(${msg ne null}){
			alert('${msg}');
		};
		
		if($("#pwForm").submit(function(){
			if($("#pw").val() !== $("#pw2").val()){
				alert("비밀번호가 다릅니다.");
				$("#pw").val("").focus();
				$("#pw2").val("");
				return false;
			}else if ($("#pw").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#pw").val("").focus();
				return false;
			}else if($.trim($("#pw").val()) !== $("#pw").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
		}));
	})
	</script>

</html>
