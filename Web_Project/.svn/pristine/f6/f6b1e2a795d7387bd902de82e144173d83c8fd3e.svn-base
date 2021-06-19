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
	<style>
		#header {
			position: fixed;
		}
		
		#nav ul li {
			
			padding: 0;
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
		/* 스마일 버튼 */
 
      .box {
        width: 100%;
        height: 100px;
        position: relative;
        top:200px;
        border:none;
        z-index:1;
      }
      .face_buttons {
        width: 60%;
        margin:0 auto;
        height:100px;
        
      }
      .face_buttons div{
        background: #F59A23;
        border: 0;
        color: #fff;
        padding: 15px;
        font-size: 23px;
        border-radius: 5px;
        width:33%;
        height:100px;
        float:left;
        margin-left:0.5%;
        line-height:70px;
        text-align: center;
      }
      .face_buttons div:hover{
      	opacity:0.5;
      	transition: all 300ms ease-in-out;
      }
      .face_buttons div:nth-child(1){margin-left:0;}
      .smiley {
        background: rgb(245,154,35);
        border-radius: 100%;
        padding: 25px;
        position: absolute;
        width: 150px;
        height: 150px;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        box-shadow: rgba(211, 165, 110, 0.5) 0 20px 30px,
          rgb(245, 245, 245) 0 20px 10px;
        margin-top: 27px;
      }
      .mouth {
        width: 60%;
        height: 30%;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        border-bottom-right-radius: 100px;
        border-bottom-left-radius: 100px;
        box-sizing: border-box;
        position: absolute;
        bottom: 18%;
        left: 50%;
        margin-left: -30%;
        background: #b57700;
        transition: all 300ms ease-in-out;
      }
      .eyes {
        width: 100%;
        margin-top: 15%;
        box-sizing: border-box;
        padding: 0 5px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        transition: all 300ms ease-in-out;
      }
      .eyes .eye {
        width: 20px;
        height: 20px;
        background: #b57700;
        border-radius: 100%;
        position: relative;
      }
 
      .eyes .eye::after {
        content: "";
        display: block;
        position: absolute;
        background: #F59A23;
        transform: rotate(0deg);
        top: -15px;
        left: 5px;
        transition: all 300ms ease-in-out;
      }
      .smiley.normal .mouth {
        border-radius: 100px;
        height: 10%;
        width: 40%;
        bottom: 25%;
        margin-left: -20%;
      }
 
      .smiley.normal .eyes {
        margin-top: 30%;
      }
 
      .smiley.angry .mouth {
        width: 40%;
        height: 20%;
        border-top-left-radius: 100%;
        border-top-right-radius: 100%;
        border-bottom-right-radius: 20px;
        border-bottom-left-radius: 20px;
        bottom: 18%;
        left: 50%;
        margin-left: -20%;
      }
 
      .smiley.angry .eyes {
        margin-top: 35%;
      }
 
      .smiley.angry .eye:after {
        width: 120%;
        height: 50%;
        transform: rotate(-35deg);
        top: -3px;
        left: -5px;
        border-radius: 0;
      }
 
      .smiley.angry .eye:first-of-type::after {
        transform: rotate(35deg);
        left: auto;
        right: -5px;
      }
      .smiley.happy .mouth,
      .smiley.happy .eyes {
        animation: move-mouth-down 0.8s ease-in-out 0.3s;
      }
 
      .smiley.happy .eye:nth-of-type(2) {
        height: 20px;
        margin-top: 0;
        animation: wink 0.8s ease-in-out 0.3s;
      }
      .smiley.normal .eye {
        height: 20px;
        margin-top: 0;
        animation: blink 0.8s ease-in-out 0.3s;
      }
 
      .smiley.angry .eyes,
      .small.angry .mouth {
        animation: move-angry-head 0.6s ease-in-out 0.3s;
      }
 
      @keyframes move-mouth-down {
        0% {
          bottom: 18%;
        }
        35% {
          bottom: 16%;
        }
        65% {
          bottom: 16%;
        }
        100% {
          bottom: 18%;
        }
      }
 
      @keyframes move-eyes-down {
        0% {
          margin-top: 15%;
        }
        35% {
          margin-top: 19%;
        }
        65% {
          margin-top: 19%;
        }
        100% {
          margin-top: 15%;
        }
      }
 
      @keyframes wink {
        0% {
          height: 20px;
          margin-top: 0;
        }
        30% {
          height: 3px;
          margin-top: 8px;
        }
        70% {
          height: 3px;
          margin-top: 8px;
        }
        100% {
          height: 20px;
          margin-top: 0;
        }
      }
      @keyframes blink {
        0% {
          height: 20px;
          margin-top: 0;
        }
        25% {
          height: 2px;
          margin-top: 8px;
        }
        50% {
          height: 20px;
          margin-top: 0;
        }
        75% {
          height: 2px;
          margin-top: 8px;
        }
        100% {
          height: 20px;
          margin-top: 0;
        }
      }
 
      @keyframes move-angry-head {
        0% {
          transform: translateX(0%);
        }
        20% {
          transform: translateX(-20%);
        }
        40% {
          transform: translateX(15%);
        }
        60% {
          transform: translateX(-10%);
        }
        80% {
          transform: translateX(5%);
        }
        100% {
          transform: translateX(0%);
        }
      }
      /* 신고칭찬창 */
      .action_box{
      	width:100%;
      	margin-top:295px;
      }
      .box_wrap{
      	width:58%;
      	height:600px;
      	background: #fff;
      	margin:0 auto;
      	border-top-left-radius:5px; 
      	border-top-right-radius:5px;
      	border: 1px solid #ddd;      	
      }
      .rpt_box{
      	display:none;
      }
      .con_box{
      	display:block;
      }

	</style>
	<script src="jquery-3.5.1.js" type="text/javascript" text="javascript"></script>
</head>
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
        
		
		

        <div class="box">
          <div class="smiley smile">
		     <div class="eyes">
		       <div class="eye"></div>
		       <div class="eye"></div>
		     </div>
		     <div class="mouth"></div>
	      </div>
	      <div class="face_buttons">
	        <div class="happy-btn" style="cursor: pointer;">좋아요!</div>
	        <div class="normal-btn" style="opacity: 0;"></div>
	        <div class="angry-btn" style="cursor: pointer;">화나요!</div>
	      </div>
	    </div>	
		<div class="action_box">
	    	<div class="box_wrap">
	    		<div class="rpt_box">
	    			<div style="width:80%;margin:0 auto;">
		    			<div style="width:100%;position:relative;left:30%;top:80px;">
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="rpt-checkbox-one" name="rpt-checkbox-one">
								<label for="rpt-checkbox-one">시간약속을 지키지 않았어요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="rpt-checkbox-two" name="rpt-checkbox-two">
								<label for="rpt-checkbox-two">불친절했어요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="rpt-checkbox-three" name="rpt-checkbox-three">
								<label for="rpt-checkbox-three">상품 설명이 충분히 자세하지 않아요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="rpt-checkbox-four" name="rpt-checkbox-four">
								<label for="rpt-checkbox-four">상품을 너무 비싸게 판매(대여)해요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="rpt-checkbox-five" name="rpt-checkbox-five">
								<label for="rpt-checkbox-five">상품상태가 설명한 것과 같지 않아요</label>
							</div>
							<div class="col-6 col-12-small">
								<input type="checkbox" id="rpt-checkbox-six" name="rpt-checkbox-six">
								<label for="rpt-checkbox-five">제가 원하는 장소에서 거래할 수 없었어요</label>
							</div>
						</div>
						<div style="margin:0 auto;width:20%;position:relative;top:95px;"><a href="#" class="button primary" style="display:block;">완료</a></div>
					</div>
	    		</div>
	    		<div class="com_box">
	    			<div style="width:80%;margin:0 auto;">
		    			<div style="width:100%;position:relative;left:30%;top:80px;">
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="com-checkbox-one" name="com-checkbox-one">
								<label for="com-checkbox-one">시간 약속을 잘 지켰어요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="com-checkbox-two" name="com-checkbox-two">
								<label for="com-checkbox-two">친절하고 매너가 좋아요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="com-checkbox-three" name="com-checkbox-three">
								<label for="com-checkbox-three">제가 원하는 장소에서 거래할 수 있었어요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="com-checkbox-four" name="com-checkbox-four">
								<label for="com-checkbox-four">좋은 상품을 저렴하게 판매(대여)해요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="com-checkbox-five" name="com-checkbox-five">
								<label for="com-checkbox-five">상품상태가 설명한 것과 같아요</label>
							</div>
			    			<div class="col-6 col-12-small">
								<input type="checkbox" id="com-checkbox-six" name="com-checkbox-six">
								<label for="com-checkbox-six">상품 설명이 자세해요</label>
							</div>
						</div>
						<div style="margin:0 auto;width:20%;position:relative;top:95px;"><a href="#" class="button primary" style="display:block;">완료</a></div>
					</div>
	    		</div>
	    	</div>
	    </div>
	    <!-- footer -->
		<footer style="width:100%;line-height:100px;color:#fff;height:100px;background-color:#353535;text-align:center;margin-top:45px;">
			© Untitled. All rights reserved. Lorem ipsum dolor sit amet.
		</footer>
		<!-- footer -->
		
		
</body>
</html>
<script>
	let nBtn = document.querySelector(".normal-btn");
	let aBtn = document.querySelector(".angry-btn");
	let hBtn = document.querySelector(".happy-btn");
	let smiley = document.querySelector(".smiley");
	
	function click(btn, add, remove1, remove2) {
	  btn.onclick = function () {
	    smiley.classList.add(add);
	    smiley.classList.remove(remove1);
	    smiley.classList.remove(remove2);
	  };
	}
	
	click(nBtn, "normal", "happy", "angry");
	click(aBtn, "angry", "happy", "normal");
	click(hBtn, "happy", "angry", "normal");
	$(".angry-btn").on("click",function(){
			$(".rpt_box").fadeIn();
			$(".rpt_box").css("display","block");
			$(".com_box").fadeOut();
			$(".com_box").css("display","none");
			
	});
	$(".happy-btn").on("click",function(){
		$(".com_box").fadeIn();
		$(".com_box").css("display","block");
		$(".rpt_box").fadeOut();
		$(".rpt_box").css("display","none");
	});
</script>