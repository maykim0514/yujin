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
		}
		
		.seen_count span {
			margin-left: 5px;
		}
		
		.report {
			margin-top: -75px;
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
			margin-left: -3px;
		}
		
		.buttons {
			margin-top: -10px;
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
		
		#btn {
			margin-bottom: 50px;
			margin-left: 37%;
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
	<c:set var="board" value="${requestScope.board}"/>
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
						<li><a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		
		
			<div class="wrap">
				<div class="inner">
				
	<!-- 메인 정보 -->
					<div class="main_box">
						<div class="product_photo">
							<c:choose>
								<c:when test="${board.getFilename() != 'null'}">
									<img src="${pageContext.request.contextPath}/sale,rentalpost/files/${board.getFilename()}" alt="상품이미지" width=400 height=400>
								</c:when>
								<c:otherwise>
									<img src="../images/noimg.png" width="400" height="400" alt="상품 이미지">
								</c:otherwise>
							</c:choose>
						</div>
						<div class="product_name">
							<p>${board.getBoardTitle()}</p>
						</div>
						
						<div class="product_price">
							<p>${board.getProductPrice()}<span>원</span></p>
						</div>
						<hr>
						<c:choose>
							<%-- 구매하기 --%>
							<c:when test="${board.getBoardStatus() eq 0}">	
								<div class="pick_count">
									<p>찜수<span class="pickcnt"></span></p>	
								</div>
								
						
								<div class="seen_count">
									<p>조회수<span>${board.getBoardReadCnt()}</span></p>	
								</div>
								
								<c:if test="${board.getUserid() ne session_id.getUserid()}">
								<div class="report">
									<a href="#" style="color: #999;" class="rpt_btn">
										<img src="../images/report2.png" width="15" height="15">&nbsp;신고하기
									</a>
								</div>
								</c:if>
								<div class="product_location">
									<p>거래지역&nbsp;&nbsp;&nbsp;&nbsp;<span>${board.getLocation()}</span></p>
								</div>
								
								<div class="nego">
									<p>가격제안&nbsp;&nbsp;&nbsp;&nbsp;
									<c:choose>
										<c:when test="${board.getProductOffer() eq 0}"><span style="color:red">불가능</span></c:when>
										<c:otherwise><span style="color:#61b2d9">가능</span></c:otherwise>
									</c:choose>
									</p>
								</div>
							</c:when>
							<%-- 대여하기 --%>
							<c:otherwise>
								<div class="pick_count">
									<p style="margin-bottom:0px">찜수<span class="pickcnt"></span></p>	
								</div>
								
						
								<div class="seen_count">
									<p style="margin-bottom:5px">조회수<span>${board.getBoardReadCnt()}</span></p>	
								</div>
								<c:if test="${board.getUserid() ne session_id.getUserid()}">
								<div class="report" style="margin-right:-520px; margin-top:0;">
									<a href="#" style="color: #999;" class="rpt_btn">
										<img src="../images/report2.png" width="15" height="15">&nbsp;신고하기
									</a>
								</div>
								</c:if>
								<div class="product_location">
									<p>거래지역&nbsp;&nbsp;&nbsp;&nbsp;<span>${board.getLocation()}</span></p>
								</div>
								
								<div class="rent_date">
									<p>대여기간&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#61b2d9">${board.getAvTime1()} ~ ${board.getAvTime2()}</span></p>
								</div>
								
								<div class="nego">
									<p>가격제안&nbsp;&nbsp;&nbsp;&nbsp;<c:choose>
										<c:when test="${board.getProductOffer() eq 0}"><span style="color:red">불가능</span></c:when>
										<c:otherwise><span style="color:#61b2d9">가능</span></c:otherwise>
									</c:choose>
									</p>
								</div>
							</c:otherwise>
						</c:choose>
						<div class="buttons">
							<!-- 찜 -->
							<a class="button primary small" id="pick_update">찜하기</a>
							<a href="${pageContext.request.contextPath}/mail/sendview.jsp" class="button primary small" 
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
								${board.getProductExplain()}
							</div>
						</section>
						
						<section id="content2">
							<div class="title">판매자정보</div>
							<hr>
							<div class="store_detail">
								<div class="userphoto">
									<img src="../images/userpic.jpg" width="210" height="210" alt="프로필 이미지"> 
								</div>	
								<div class="username"><a href="">${board.getUserid()}</a></div>
							
							
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
						
						<!-- 내 게시물일때 -->
						<c:if test="${board.getUserid() eq session_id.getUserid()}">
						<div class="buttons" id="btn">
							<c:choose>
								<c:when test="${board.getBoardStatus() eq 0 and board.getProductStatus() eq 0}">
									<a href="${pageContext.request.contextPath}/board/BoardSaleDone.bo?num=${board.getBoardnum()}" class="button primary small">거래완료</a>
									<a href="${pageContext.request.contextPath}/board/BoardModify.bo?num=${board.getBoardnum()}" class="button primary small">수정</a>
									<a class="button primary small" onclick="sale_del();">삭제</a>
								</c:when>
								<c:when test="${board.getBoardStatus() eq 0 and board.getProductStatus() eq 1}">
									<a class="button primary small" onclick="sale_del();" style="margin-left:90px;">삭제</a>
								</c:when>
								<c:when test="${board.getBoardStatus() eq 1 and board.getProductStatus() eq 0}">
									<a href="${pageContext.request.contextPath}/board/BoardRentDone.bo?num=${board.getBoardnum()}" class="button primary small">거래완료</a>
									<a href="${pageContext.request.contextPath}/board/BoardModify.bo?num=${board.getBoardnum()}" class="button primary small">수정</a>
									<a class="button primary small" onclick="rent_del();">삭제</a>
								</c:when>
								<c:otherwise>
									<a class="button primary small" onclick="rent_del();" style="margin-left:90px;">삭제</a>
								</c:otherwise>
							</c:choose>
							
						</div>			
						</c:if>
						
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
	  				<%-- <form id="reportForm" name="reportForm" method="post" action="${pageContext.request.contextPath}/report/ReportInsert.re"> 				
				   	<input name="userid" type="hidden" value="${board.getUserid()}"/>
				   	<input name="boardnum" type="hidden" value="${board.getBoardnum()}"/> --%>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-one" name="lightbox" value="광고 (상점 및 타사이트 홍보)">
						<label for="lightbox-one">광고 (상점 및 타사이트 홍보)</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-two" name="lightbox" value="사기의심">
						<label for="lightbox-two">사기의심</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-three" name="lightbox" value="거래 금지 품목">
						<label for="lightbox-three">거래 금지 품목</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-four" name="lightbox" value="허위매물">
						<label for="lightbox-four">허위매물</label>
					</div>
				   	<div class="col-6 col-12-small">
						<input type="checkbox" id="lightbox-five" name="lightbox" value="상품 정보 부정확">
						<label for="lightbox-five">상품 정보 부정확</label>
					</div>
					<a href="#" class="button small rpt_confirm_btn" style="width:100px !important;height:39px !important;line-height:39px !important;">등록</a>
  					<!-- </form> -->
  				</div>
  			</div>		
  		</div>
  		<!-- 라이트 박스 -->
	</body>
	<script src="../jquery-3.5.1.js" type="text/javascript" text="javascript"></script>
	<script>
	//라이트 박스
		const reportform = document.reportForm;
	
		
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
		
		$proBtn.click(function(e){
			//체크박스 하나라도 체크 되어있게 하기
			e.preventDefault();
			insertReport();
			$taget.fadeOut();
			$("body").css("overflow","auto");
		});
			
		$exit.click(function(){
			$taget.fadeOut();
			$("body").css("overflow","auto");
		});
		
		function insertReport(){
			var checkbox = "";
			var userid = "${board.getUserid()}";
			var boardnum = "${board.getBoardnum()}";
			
			$("input[name='lightbox']:checked" ).each(function(){
				checkbox = checkbox + $(this).val()+"," ;
			});
			
			//맨끝 콤마 지우기
			checkbox = checkbox.substring(0,checkbox.lastIndexOf(",")); 
				
			if(confirm("해당 내용으로 신고 접수 하시겠습니까?")){
				$.ajax({
					type: "post",
					url: "${pageContext.request.contextPath}/report/ReportInsert.re",
					data:{"checkbox":checkbox, "userid":userid, "boardnum":boardnum},
					success:function(data){
						alert("신고가 접수 되었습니다.");
					},
					error:function(a, b, c){
						console.log(a)
						console.log(b)
						console.log(c)
					}
				});
			}else{
				return false;
			}
		}
	//라이트 박스 끝
	
	//게시글 삭제 alert
		function sale_del() {
			if (confirm("삭제하시겠습니까?")==true){
				window.location.href="${pageContext.request.contextPath}/board/BoardSaleDelete.bo?num=${board.getBoardnum()}";
			}else{
				window.location.href="#";
			}
		}
		function rent_del() {
			if (confirm("삭제하시겠습니까?")==true){
				window.location.href="${pageContext.request.contextPath}/board/BoardRentDelete.bo?num=${board.getBoardnum()}";
			}else{
				window.location.href="#";
			}
		}

	//찜
		/* $(function(){
			// 추천버튼 클릭시(추천 추가 또는 추천 제거)
			$("#pick_update").click(function(){
				$.ajax({
					url: "/board/BoardPickUpdate.bo",
					type: "POST",
					data: {
						no: ${board.getBoardnum()},
						id: '${board.getUserid()}'
					},
					success: function(){
						pickCount();
					},
				})
			})
			// 게시글 추천수
			function pickCount(){
				$.ajax({
					url: "/board/BoardPickCount.bo",
					type: "POST",
					data:{
						no: ${board.getBoardnum()}
					},
					success: function (count){
						$(".pickcnt").html(count);
					},
				})
			};
		}); */
		
		function pick_func(){
			var userid = "${board.getUserid()}";
			var boardnum = "${board.getBoardnum()}";
			  console.log("boardnum, userid : " + boardnum +","+ userid);
			  
			  $.ajax({
			    url: "/board/BoardPick.bo",
			    type: "GET",
			    cache: false,
			    dataType: "json",
			    data: 'boardnum=' +boardnum+ '&userid=' +userid,
			    success: function(data) {
			      var msg = '';
			      var pick_img = '';
			      msg += data.msg;
			      alert(msg);
			      
			      if(data.pickcheck == 0){
			        pick_img = "../images/originalstar2.png";
			      } else {
			        pick_img = "./images/changestar2.png";
			      }      
			      $('#pick_img').attr('src', like_img);
			      $('#like_cnt').html(data.like_cnt);
			      $('#like_check').html(data.like_check);
			    },
			    error: function(request, status, error){
			      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			  });
		}
		
	</script>
</html>