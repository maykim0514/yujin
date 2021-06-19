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

.recommend_list dd#ad_name {
	margin-left: 10px;
	margin-right: 10px;
	font-size: 16px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.recommend_list dd#ad_price {
	margin-left: 10px;
}

.recommend_list dd#location {
	margin-left: 10px;
}
.rent_list li {
	width: 196px;
	height: 300px;
	border: 1px solid #dbdbdb;
	padding-left: 0px;
	list-style: none;
	line-height: 30px;
	float: left;
	margin: 0 11px 11px 0;
}

.rent_list dd {
	margin-left: 0;
}

.rent_list a {
	color: #000000;
	width: 100%;
}

.rent_list a:hover {
	color: #000000;
}

.rent_list dd#rent_name {
	margin-left: 10px;
	margin-right: 10px;
	font-size: 16px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.rent_list dd#price {
	margin-left: 10px;
}

.rent_list dd#location {
	margin-left: 10px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
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
	white-space: nowrap;
	text-overflow: ellipsis;
}
#category hr {
	margin:15px 0 15px 0;
}
#category ul {
	margin-top: 10px;
	list-style: none;
	line-height: 30px;
	padding: 0rem;
	font-weight: 400;
}
#category ul a{
	color: black;
	font-size: 16px;
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
	/* margin-top: 50px; */
	line-height: 20px;
	/* padding: 12px 19px; */
	text-decoration: none;
	font-weight: 500;
	font-size: 20px;
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
input[type="radio"] + label{
	display:inline-block;
	padding:20px;
	width:140px;
	text-align:center;
	font-weight:300;
	line-height:40px;
	cursor:pointer;
	margin-right: -5px;
	font-size : 1.3rem
}
</style>

<body class="is-preload">
	
	<c:if test="${session_id eq null}">
		<script>
			alert("로그인 후 이용하세요!")
			location.replace("${pageContext.request.contextPath}/login.me");
		</script>
	</c:if>
	
	<c:set var="rent_list" value="${requestScope.rent_list}" />
	<c:set var="rent_list_location" value="${requestScope.rent_list_location}" />
	
	<!-- Header -->
	<form method="get"  name="search_topic" style="margin : 0;">
	<header id="header">
		<a class="logo" href="${pageContext.request.contextPath}/index.jsp"
			style="width: 10%;"> <img src="../images/logo.png" alt=""
			style="width: 100%; margin-left: 215%; display: inline-block; position: relative; z-index: 2;" /></a>
		<!-- Search -->
		<div class="search">
			<input id="search" name="searchTerm" type="text" value=""
				placeholder="상품을 검색해주세요." /> <a href="javascript:search_product();" class="searchButton">
				<i class="fa fa-search"></i>
			</a>
		</div>

		<nav id="nav" style="margin-right: 380px;">
			<ul>
				<li><a href="${pageContext.request.contextPath}/Mypage/Mypage.jsp">마이페이지</a></li>
				<li><a href="">로그아웃</a></li>
			</ul>
		</nav>
	</header>
	</form>
	
	<!-- section1 -->
	<div id="main">
	
		<!-- sidebar -->
		<div id="radio">
			<div>
				<p>
					<input type="radio" id="salecheck" name="customercheck" onclick="window.location.href='${pageContext.request.contextPath}/board/sale_list.bo?category=all'"/>
							<label for="salecheck" style="padding:0">구매</label><br>
					<input type="radio" id="rentcheck" name="customercheck" onclick="window.location.href='${pageContext.request.contextPath}/board/rent_list.bo?category=all'" checked/>
							<label for="rentcheck" style="padding:0">대여</label> 
				</p>		
				<div id="category">
				<div>전체 카테고리</div>
				<hr>
				<span class="rentcategory" style="padding:5px;">물품</span>
				<ul>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=여성의류">여성의류</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=남성의류">남성의류</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=패션잡화">패션잡화</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=디지털/가전">디지털 / 가전</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=도서/티켓/취미/애완">도서 / 티켓 / 취미 / 애완</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=생활/문구/가구">생활 / 문구 / 가구</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=스포츠/레저">스포츠 / 레저</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=뷰티/미용">뷰티 / 미용</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=유아동/출산">유아동 / 출산</a></li>
					<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=기타">기타</a></li>	
				</ul>
				<div class="rentcategory" style="margin-top:-15px;">
					<span style="padding:5px;">공간</span>
					<ul>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=스터디">스터디</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=파티">파티</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=세미나">세미나</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=요리">요리</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=촬영스튜디오">촬영 스튜디오</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=춤연습실">춤 연습실</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=노래연습실">노래연습실</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=전시장">전시장</a></li>
						<li><a href="${pageContext.request.contextPath}/board/rent_list.bo?category=기타">기타</a></li>	
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	 <!-- 대여하기 -->
	 <div class="wrap">
		<div class="inner">
			<!-- 광고성 추천 상품 (구매하기/대여하기 둘 다 뜸) -->
			<div class="list_name">오늘의 추천 상품</div>
				<ul class="recommend_list">
					<li>
						<dl>
							<dd><img src="../images/아이패드케이스.jpg" width="194" height="194" alt="상품 이미지"></dd>
							<dd class="" id="ad_name"><a href="#">아이패드 에어4 케이스</a></dd>
							<dd class="" id="ad_price" style="font-weight: bold; font-size: 20px"><a href="#">20000</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dd><img src="../images/귀칼.jpg" width="194" height="194" alt="상품 이미지"></dd>
							<dd class="" id="ad_name"><a href="#">귀멸의 칼날 21권</a></dd>
							<dd class="" id="ad_price" style="font-weight: bold; font-size: 20px"><a href="#">13500</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dd><img src="../images/후라이팬.jpg" width="194" height="194" alt="상품 이미지"></dd>
							<dd class="" id="ad_name"><a href="#">후라이팬 3종 세트</a></dd>
							<dd class="" id="ad_price" style="font-weight: bold; font-size: 20px"><a href="#">25000</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dd><img src="../images/무드등.jpg" width="194" height="194" alt="상품 이미지"></dd>
							<dd class="" id="ad_name"><a href="#">무드등</a></dd>
							<dd class="" id="ad_price" style="font-weight: bold; font-size: 20px"><a href="#">12900</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dd><img src="../images/마카롱.jpg" width="194" height="194" alt="상품 이미지"></dd>
							<dd class="" id="ad_name"><a href="#">마카롱 혼합 10구</a></dd>
							<dd class="" id="ad_price" style="font-weight: bold; font-size: 20px"><a href="#">17000</a></dd>
						</dl>
					</li>
				</ul>
				<!-- 상품이 5개가 아닐경우 다른 section 상품이 올라오는것을 방지하기 위해 -->
				<c:if test="${fn:length(product_list)%5!=0}">
					<br><br><br><br><br>
				</c:if>
			</div>
		</div>
				
	 <div id="main">
	 	<div class="wrap" style="padding:0rem">
			<div class="inner">
				<!-- radio클릭시 display변환 -->
				<div id="rent_list">
					<div class="list_name" style="display:inline;">나와 가까운 상품</div>
							<c:choose>
								<c:when test="${rent_list_location!=null and fn:length(rent_list_location)>0}">
									<ul class="nearby_list">
										<c:forEach var="i" begin="0" end="${fn:length(rent_list_location)-1}">
										<li>
											<dl>
												<c:forEach var="j" begin="0" end="${fn:length(rent_list_location)-1}">
													<c:if test="${rent_list[j].getBoardnum() == rent_list_location[i].getBoardnum()}">
														<dd>
															<a href="${pageContext.request.contextPath}/productlist/product.pr?num=${product_list_location[i].getBoardnum()}">
																<c:choose>
																	<c:when test="${rent_list[j].getFilename() != 'null'}">
																		<img src="${pageContext.request.contextPath}/sale,rentalpost/files/${product_list[i].getFilename()}" id="product_list_location_img" width="194" height="194" alt="상품 이미지">
																	</c:when>
																	<c:otherwise>
																		<img src="../images/noimg.png" id="product_list_location_img" width="194" height="194" alt="상품 이미지">
																	</c:otherwise>
																</c:choose>
															</a>
														</dd>
														<dd class="" id="rent_name">
															<a href="#">${rent_list_location[i].getBoardTitle()}</a>
														</dd>
														<dd class="" id="price"
															style="font-weight: bold; font-size: 20px">
															<a href="#">${rent_list_location[i].getProductPrice()}</a>
														</dd>
														<dd class="" id="location">
															<a href="#" style="font-size: 15px">${rent_list_location[i].getLocation()}</a>
														</dd>
													</c:if>
												</c:forEach>
											</dl>
										</li>
										</c:forEach>
									</ul>
								<c:if test="${fn:length(rent_list_location)%5!=0}">
									<br><br><br><br><br>
								</c:if>
							</c:when>
							<c:otherwise>
								<div style="text-align:center">
									나와 가까운 상품이 없습니다.
								</div><br><br><br><br><br><br>
							</c:otherwise>
						</c:choose> 
					<br>
					<div class="list_name">전체 상품</div>
						<c:choose>
							<c:when test="${rent_list!=null and fn:length(rent_list)>0}">
								<ul class="rent_list">
									<c:forEach var="i" begin="0" end="${fn:length(rent_list)-1}">
										<li>
											<dl>
												<dd>
													<a href="${pageContext.request.contextPath}/board/BoardDetail.bo?num=${rent_list[i].getBoardnum()}">
														<c:choose>
															<c:when test="${rent_list[i].getFilename() != 'null'}">
																<img src="${pageContext.request.contextPath}/sale,rentalpost/files/${rent_list[i].getFilename()}" width="194" height="194" alt="상품 이미지">
															</c:when>
															<c:otherwise>
																<img src="../images/noimg.png" width="194" height="194" alt="상품 이미지">
															</c:otherwise>
														</c:choose>
													</a>
												</dd>
												<dd class="" id="rent_name">
													<a href="${pageContext.request.contextPath}/board/BoardDetail.bo?num=${rent_list[i].getBoardnum()}">${rent_list[i].getBoardTitle()}</a>
												</dd>
												<dd class="" id="price"
													style="font-weight: bold; font-size: 20px">
													<a href="${pageContext.request.contextPath}/board/BoardDetail.bo?num=${rent_list[i].getBoardnum()}">${rent_list[i].getProductPrice()}</a>
												</dd>
												<dd class="" id="location">
													<a href="${pageContext.request.contextPath}/board/BoardDetail.bo?num=${rent_list[i].getBoardnum()}" style="font-size: 15px">${rent_list[i].getLocation()}</a>
												</dd>
											</dl>
										</li>
									</c:forEach>
								</ul>
								<c:if test="${fn:length(rent_list_location)%5!=0}">
									<br><br><br><br><br>
								</c:if>
							</c:when>
							<c:otherwise>
								<div style="text-align:center">
									상품이 없습니다.
								</div><br><br><br><br><br><br>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div> 
		
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../sale,rentalpost/user.js"></script>
	
	<script>
		var purchase = $("#purchase_list");
		var rent = $("#rent_list");
		var category = $(".rentcategory");

		//"구매"를 눌렀을 때
		$("#salecheck").click(function(){
				rent.css("display", "none");
				purchase.css("display", "block");
				category.css("display", "none");
		})
		
		//"대여"를 눌렀을때
		$("#rentcheck").click(function(){
				purchase.css("display", "none");
				category.css("display", "block");
				rent.css("display", "block");
		
		})
	
//---------------검색 창-------------------------
		function search_product(){
			const topic = document.search_topic;
			
			
			topic.action="${pageContext.request.contextPath}/board/product_list.bo?search="+topic.searchTerm.value;
			topic.submit();
		}
//==================================================
	</script>
	</body>
</html>