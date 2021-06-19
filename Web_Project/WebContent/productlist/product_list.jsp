<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

#radio {
	padding-top: 130px;
	padding-left: 30px;
	margin-left: 150px;
	margin-top: 75px;
	width: 210px;
	float: left;
}

#radio div {
	margin-top: 50px;
	margin-left: 5px;
	line-height: 20px;
	padding: 12px 19px;
	text-decoration: none;
	font-weight: 500;
	font-size: 18px;
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

/* .floating a {
	display: block;
} */

.floating2 {
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
	border-radius: 5px 0 0 5px;
	margin-left: 47%;
	width: 100%;
	height: 55px;
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
	float: right;
	margin-right: -10%;
}
#rent_list{display : none;}
#purchase {
	color: #0028B0;
	font-size: 30px;
}
</style>

<body class="is-preload">
	
	<c:if test="${session_id eq null}">
		<script>
			alert("로그인 후 이용하세요!")
			location.replace("${pageContext.request.contextPath}/login.me");
		</script>
	</c:if>
	
	<c:set var="product_list" value="${requestScope.product_list}" />
	<c:set var="product_list_location" value="${requestScope.product_list_location}" />
	<c:set var="rent_list" value="${requestScope.rent_list}" />
	<c:set var="product_list_location" value="${requestScope.product_list_location}" />
	<c:set var="file" value="${requestScope.file}" />
	
	<!-- Header -->
	<header id="header">
		<a class="logo" href="${pageContext.request.contextPath}/index.jsp"
			style="width: 10%;"> <img src="../images/logo.png" alt=""
			style="width: 100%; margin-left: 215%; display: inline-block; position: relative; z-index: 2;" /></a>
		<!-- Search -->
		<div class="search">
			<input id="search" name="search" type="text" value=""
				placeholder="상품을 검색해주세요." /> <a href="#" class="searchButton">
				<i class="fa fa-search"></i>
			</a>
		</div>

		<nav id="nav" style="margin-right: 380px;">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/productlist/rent_list.jsp">대여받기</a></li>
				<li><a
					href="${pageContext.request.contextPath}/Mypage/Mypage.jsp">마이페이지</a></li>
				<li><a href="">로그아웃</a></li>
			</ul>
		</nav>
	</header>


	<div id="main">
		<div id="radio">
			<form>
				<fieldset>
					<legend>구매 / 대여</legend>
					<label onclick="javascript : purchase_on();" id="purchase">구매<input
						type="radio" name="radio_product" id="purchase" value="purchase"
						checked></label> <label onclick="javascript : rent_on();"
						id="rent">대여<input type="radio" name="radio_product"
						id="rent" value="rent"></label>
				</fieldset>
			</form>
		</div>


		<div class="wrap">
			<div class="inner">
				<!-- purchase@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
				<div id="purchase_list">
					<!-- Recommend list -->

					<div class="list_name">오늘의 추천 상품</div>

					<c:choose>
						<c:when test="${product_list!=null and fn:length(product_list)>0}">
							<ul class="recommend_list">
								<c:forEach var="i" begin="0" end="4">
									<li>
										<dl>
											<dd>
												<a
													href="${pageContext.request.contextPath}/productlist/product.pr?num=${product_list[i].getBoardnum()}">
													<img src="../images/sample6.jpg" width="194" height="194"
													alt="상품 이미지">
												</a>
											</dd>
											<dd class="" id="product_name">
												<a href="#">${product_list[i].getBoardTitle()}</a>
											</dd>
											<dd class="" id="price"
												style="font-weight: bold; font-size: 20px">
												<a href="#">${product_list[i].getProductPrice()}</a>
											</dd>
											<dd class="" id="location">
												<a href="#" style="font-size: 15px">${product_list[i].getLocation()}</a>
											</dd>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(product_list)%5!=0}">
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
							</c:if>
						</c:when>
						<c:otherwise>
								오늘의 추천 상품이 없습니다.
								<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>

					<!-- Nearby list -->
					<div class="list_name">나와 가까운 상품</div>
					<c:choose>
						<c:when
							test="${product_list_location!=null and fn:length(product_list_location)>0}">

							<ul class="nearby_list">
								<c:forEach var="i" begin="0"
									end="${fn:length(product_list_location)-1}">
									<li>
										<dl>
											<dd>
												<a
													href="${pageContext.request.contextPath}/productlist/product.pr?num=${product_list_location[i].getBoardnum()}">

													<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
														<c:if
															test="${file[j].getBoardNum()==product_list_location[i].getBoardnum()}">
															<c:set var="flag_lo" value="${j+1}" />
															<img id="product_list_location_img"
																src="../sale,rentalpost/files/${file[j].getRealName()}"
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
												</a>
											</dd>
											<dd class="" id="product_name">
												<a href="#">${product_list_location[i].getBoardTitle()}</a>
											</dd>
											<dd class="" id="price"
												style="font-weight: bold; font-size: 20px">
												<a href="#">${product_list_location[i].getProductprice()}</a>
											</dd>
											<dd class="" id="location">
												<a href="#" style="font-size: 15px">${product_list_location[i].getLocation()}</a>
											</dd>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(product_list_location)%5!=0}">
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
							</c:if>
						</c:when>
						<c:otherwise>
								나와 가까운 상품이 없습니다.
								<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>

					<!-- Product list -->
					<div class="list_name">전체 상품</div>
					<c:choose>

						<c:when test="${product_list!=null and fn:length(product_list)>0}">
							<ul class="product_list">
								<c:forEach var="i" begin="0" end="${fn:length(product_list)-1}">
									<li>
										<dl>
											<dd>
												<a
													href="${pageContext.request.contextPath}/productlist/product.pr?num=${product_list[i].getBoardnum()}">

													<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
														<c:if
															test="${file[j].getBoardNum()==product_list[i].getBoardnum()}">
															<c:set var="flag" value="${j+1}" />
															<img id="Product_list_img"
																src="../sale,rentalpost/files/${file[j].getRealName()}"
																width="194" height="194" alt="상품 이미지">
														</c:if>
														<c:if test="${flag==null&&j==1}">
															<img id="Product_list_img"
																src="../sale,rentalpost/files/기본.gif" width="194"
																height="194" alt="상품 이미지">
															<c:set var="first_val" value="1" />
															<c:set var="second_val" value="1" />
														</c:if>
														<c:if test="${flag!=null&&j==1}">
															<c:remove var="flag" />
														</c:if>
													</c:forEach>
												</a>
											</dd>
											<dd class="" id="product_name">
												<a href="#">${product_list[i].getBoardTitle()}</a>
											</dd>
											<dd class="" id="price"
												style="font-weight: bold; font-size: 20px">
												<a href="#">${product_list[i].getProductprice()}</a>
											</dd>
											<dd class="" id="location">
												<a href="#" style="font-size: 15px">${product_list[i].getLocation()}</a>
											</dd>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(product_list)%5!=0}">
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
							</c:if>
						</c:when>
						<c:otherwise>
								상품이 없습니다.
								<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<!-- rent@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	<div id="main">
		<div class="wrap">
			<div class="inner">
				<div id="rent_list">
					<!-- Recommend list -->

					<div class="list_name">오늘의 추천 상품</div>

					<c:choose>
						<c:when test="${rent_list!=null and fn:length(rent_list)>0}">
							<ul class="recommend_list">
								<c:forEach var="i" begin="0" end="4">
									<li>
										<dl>
											<dd>
												<a
													href="${pageContext.request.contextPath}/rentlist/rent.pr?num=${rent_list[i].getBoardnum()}">
													<img src="../images/sample6.jpg" width="194" height="194"
													alt="상품 이미지">
												</a>
											</dd>
											<dd class="" id="rent_name">
												<a href="#">${rent_list[i].getBoardTitle()}</a>
											</dd>
											<dd class="" id="price"
												style="font-weight: bold; font-size: 20px">
												<a href="#">${rent_list[i].getProductprice()}</a>
											</dd>
											<dd class="" id="location">
												<a href="#" style="font-size: 15px">${rent_list[i].getLocation()}</a>
											</dd>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(rent_list)%5!=0}">
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
							</c:if>
						</c:when>
						<c:otherwise>
								오늘의 추천 상품이 없습니다.
								<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>

					<!-- Nearby list -->
					<div class="list_name">나와 가까운 상품</div>
					<c:choose>
						<c:when
							test="${rent_list_location!=null and fn:length(rent_list_location)>0}">

							<ul class="nearby_list">
								<c:forEach var="i" begin="0"
									end="${fn:length(rent_list_location)-1}">
									<li>
										<dl>
											<dd>
												<a
													href="${pageContext.request.contextPath}/rentlist/rent.pr?num=${rent_list_location[i].getBoardnum()}">

													<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
														<c:if
															test="${file[j].getBoardNum()==rent_list_location[i].getBoardnum()}">
															<c:set var="flag_rent_lo" value="${j+1}" />
															<img id="rent_list_location_img"
																src="../sale,rentalpost/files/${file[j].getRealName()}"
																width="194" height="194" alt="상품 이미지">
														</c:if>
														<c:if test="${flag_rent_lo==null&&j==1}">
															<img id="rent_list_location_img"
																src="../sale,rentalpost/files/기본.gif" width="194"
																height="194" alt="상품 이미지">
															<c:set var="first_val" value="1" />
															<c:set var="second_val" value="1" />
														</c:if>
														<c:if test="${flag_rent_lo!=null&&j==1}">
															<c:remove var="flag_rent_lo" />
														</c:if>
													</c:forEach>
												</a>
											</dd>
											<dd class="" id="rent_name">
												<a href="#">${rent_list_location[i].getBoardTitle()}</a>
											</dd>
											<dd class="" id="price"
												style="font-weight: bold; font-size: 20px">
												<a href="#">${rent_list_location[i].getProductprice()}</a>
											</dd>
											<dd class="" id="location">
												<a href="#" style="font-size: 15px">${rent_list_location[i].getLocation()}</a>
											</dd>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(rent_list_location)%5!=0}">
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
							</c:if>
						</c:when>
						<c:otherwise>
								나와 가까운 상품이 없습니다.
								<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>

					<!-- rent list -->
					<div class="list_name">전체 상품</div>
					<c:choose>

						<c:when test="${rent_list!=null and fn:length(rent_list)>0}">
							<ul class="product_list rent_list">
								<c:forEach var="i" begin="0" end="${fn:length(rent_list)-1}">
									<li>
										<dl>
											<dd>
												<a
													href="${pageContext.request.contextPath}/rentlist/rent.pr?num=${rent_list[i].getBoardnum()}">

													<c:forEach var="j" begin="0" end="${fn:length(file)-1}">
														<c:if
															test="${file[j].getBoardNum()==rent_list[i].getBoardnum()}">
															<c:set var="flag_rent" value="${j+1}" />
															<img id="rent_list_img"
																src="../sale,rentalpost/files/${file[j].getRealName()}"
																width="194" height="194" alt="상품 이미지">
														</c:if>
														<c:if test="${flag_rent==null&&j==(fn:length(file)-1)}">
															<img id="rent_list_img"
																src="../sale,rentalpost/files/기본.gif" width="194"
																height="194" alt="상품 이미지">
															<c:set var="first_val" value="1" />
															<c:set var="second_val" value="1" />
														</c:if>
														<c:if test="${flag_rent!=null&&j==(fn:length(file)-1)}">
															<c:remove var="flag_rent" />
														</c:if>
													</c:forEach>
												</a>
											</dd>
											<dd class="" id="rent_name">
												<a href="#">${rent_list[i].getBoardTitle()}</a>
											</dd>
											<dd class="" id="price"
												style="font-weight: bold; font-size: 20px">
												<a href="#">${rent_list[i].getProductprice()}</a>
											</dd>
											<dd class="" id="location">
												<a href="#" style="font-size: 15px">${rent_list[i].getLocation()}</a>
											</dd>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(rent_list)%5!=0}">
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
							</c:if>
						</c:when>
						<c:otherwise>
								상품이 없습니다.
								<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script>
	var purchase = $("#purchase_list");
	var rent = $("#rent_list");
	//"구매"를 눌렀을 때
	function purchase_on() {
		console.log("구매")
		rent.css("display", "none");
		$("#rent").css("color", "black");
		$("#rent").css("font-size", "0.9rem");

		purchase.css("display", "block");
		$("#purchase").css("color", "#0028B0");
		$("#purchase").css("font-size", "30px");
	}

	//"대여"를 눌렀을 때
	function rent_on() {
		console.log("대여")
		purchase.css("display", "none");
		$("#purchase").css("color", "black");
		$("#purchase").css("font-size", "0.9rem");

		rent.css("display", "block");
		$("#rent").css("color", "#0028B0");
		$("#rent").css("font-size", "30px");
	}
</script>
</html>
