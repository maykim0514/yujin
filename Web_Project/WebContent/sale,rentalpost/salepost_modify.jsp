<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Inverse by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
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
	*:focus { 
			outline:none; 
	}
	#saletitle{
		text-align:center;
		padding: 2rem;
		border-bottom:1px solid #ddd;
	}
	h3{
		font-size:2rem !important;
		margin:0rem !important;
	}
	#divstyle{
		padding: 2rem;
		border-bottom:1px solid #ddd;
	}
	#fontstyle{
		display:inline;
		float:left; 
		margin-top:3px;
		font-size:1.4rem;
		font-weight:400
	}
	#inputstyle{
		display:inline; 
		width:70%
	}
	
	.addFile{
		float: left;
		margin-left: 2%;
		color : #ddd !important
	}
	.insert {
	  font-size: 16px;
	
	} 
	
	.insert .file-hidden-list {
	  height: 0;
	  overflow: hidden;
	}
	.insert .file-list {
	  height: 90px;
	  overflow: auto;
	  text-align: center;
	}
	.insert .file-list .thumbnail {
	  width: auto;
	  float: left;
	  margin-left: 5%;
	  position: relative;
	  margin-top: 10px;
	  color: #555;
	  text-align: top;
	  padding: 5px 0px; 
	  -webkit-box-sizing: border-box;
	  -moz-box-sizing: border-box;
	  box-sizing: border-box;
	}
	.insert .file-list .thumbnail i {
	  font-size: 50px;
	}
	.insert .file-list .thumbnail p {
	  font-size: 14px;
	  margin-top: 10px;
	}
	.insert .file-list .thumbnail .delete i{
	  position: absolute;
	  font-size: 14px;
	  top: 0;
	  right: 0;
	  color: #0028b0;
	}
	
	#header {
		position: fixed;
	}
	
	.is-preload {
		align: center !important;
	}
	.search {
		display: flex;
		width: 40%;
		z-index: 1;
		position: relative;
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
	
	#sample6_postcode, 
	#sample6_address{
		display:inline-block;
	}	
</style>
	
	<body class="is-preload">
		<c:if test="${session_id eq null}">
			<script>
				alert("로그인 후 이용하세요!")
				location.replace("${pageContext.request.contextPath}/login.me");
			</script>
		</c:if>
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
						<li><a href="${pageContext.request.contextPath}/Mypage/Mypage.jsp">마이페이지</a></li>
						<li><a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		
			<div id="main"> 
				<form enctype="multipart/form-data" action="${pageContext.request.contextPath}/board/BoardModifyOk.bo" method="post" name="boardform">
				<input type="hidden" name="boardnum" value="${board.getBoardnum()}">
					<br><br><br><br>
					<input type="hidden" name="productstatus" value="0"/> 
					<!-- 판매 내용 입력 div -->						
					<div style="margin-left: 22%; margin-right: 22%;">
						
						<div id="saletitle">
							<h3>판매하기</h3>
						</div>
					
						<!-- 글 제목 -->
						<div id="divstyle">
							<div id="fontstyle">
								제목
							</div>
							<div>
								<input value="${board.getBoardTitle()}" type="text" name="boardtitle" id="inputstyle" style="margin-left: 19%;" >
							</div>
						</div>
						
						<!-- 이미지 삽입-->
						<div id="divstyle">
							<div class="insert">
								<div id="fontstyle">상품 이미지</div>
								<c:choose>
								<c:when test="${board.getFilename() != 'null'}">
									<img src="${pageContext.request.contextPath}/sale,rentalpost/files/${board.getFilename()}" alt="상품이미지" width=200 height=200 style="margin-left:107px;">
								</c:when>
								<c:otherwise>
									<div class="file-hidden-list" ></div>
			 					<div class="addFile" style="margin-left:11%">
			  						<input type="file" id="file" name="file1" accept="image/*" onchange="loadFile(event)">
								</div>
								<img id="output" style="height:150px;border:none;"/>
								</c:otherwise>
							</c:choose>
	  						</div>
						</div>
				
						<!-- 카테고리 선택 -->
						<c:if test="${board.getBoardStatus() eq 0}">
						<div class="dropdown" id="divstyle" >
							<div id="fontstyle">
								카테고리 선택
							</div>
			   				<select name="boardcategory" class="catebtn" id="inputstyle" style="margin-left:8.5%">
				      			<option value="${board.getBoardCategory()}">${board.getBoardCategory()}</option>
				      			<c:if test="${board.getBoardCategory() ne '여성의류'}"><option value="여성의류">여성의류</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '남성의류'}"><option value="남성의류">남성의류</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '패션잡화'}"><option value="패션잡화">패션잡화</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '디지털/가전'}"><option value="디지털/가전">디지털/가전</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '도서/티켓/취미/애완'}"><option value="도서/티켓/취미/애완">도서/티켓/취미/애완</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '생활/문구/가구'}"><option value="생활/문구/가구">생활/문구/가구</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '스포츠/레저'}"><option value="스포츠/레저">스포츠/레저</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '뷰티/미용'}"><option value="뷰티/미용">뷰티/미용</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '유아동/출산'}"><option value="유아동/출산">유아동/출산</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '기타'}"><option value="기타">기타</option></c:if>
			     			</select>
						</div>
						</c:if>
						
						<c:if test="${board.getBoardStatus() eq 1}">
						<div class="dropdown" id="divstyle">
							<div id="fontstyle">
								카테고리 선택
							</div>
			   				<select name="rentcategory" onchange="selectCategory()" class="catebtn" id="inputstyle" style="margin-left:8.5%">
			   					<option value="${board.getRentCategory()}" selected="selected">${board.getRentCategory()}</option>
			   					<c:if test="${board.getRentCategory() ne '물품'}"><option value="물품">물품</option></c:if>
			   					<c:if test="${board.getRentCategory() ne '공간'}"><option value="공간">공간</option></c:if>
			   				</select>
			   				<select name="boardcategory" class="product" id="inputstyle" style="display:none;margin:10px 0 0 23.8%">
				      			<c:if test="${board.getRentCategory() eq '물품'}"><option value="${board.getBoardCategory()}">${board.getBoardCategory()}</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '여성의류'}"><option value="여성의류">여성의류</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '남성의류'}"><option value="남성의류">남성의류</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '패션잡화'}"><option value="패션잡화">패션잡화</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '디지털/가전'}"><option value="디지털/가전">디지털/가전</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '도서/티켓/취미/애완'}"><option value="도서/티켓/취미/애완">도서/티켓/취미/애완</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '생활/문구/가구'}"><option value="생활/문구/가구">생활/문구/가구</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '스포츠/레저'}"><option value="스포츠/레저">스포츠/레저</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '뷰티/미용'}"><option value="뷰티/미용">뷰티/미용</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '유아동/출산'}"><option value="유아동/출산">유아동/출산</option></c:if>
				      			<c:if test="${board.getBoardCategory() ne '기타'}"><option value="기타">기타</option></c:if>
			     			</select>
					        <select name="boardcategory" class="space" id="inputstyle" style="display:none;margin:10px 0 0 23.8%">
					        	   <c:if test="${board.getRentCategory() eq '공간'}"><option value="${board.getBoardCategory()}">${board.getBoardCategory()}</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '스터디'}"><option value="스터디">스터디</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '파티'}"><option value="파티">파티</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '세미나'}"><option value="세미나">세미나</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '요리'}"><option value="요리">요리</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '촬영스튜디오'}"><option value="촬영스튜디오">촬영 스튜디오</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '춤연습실'}"><option value="춤연습실">춤 연습실</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '노래연습실'}"><option value="노래연습실">노래 연습실</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '전시장'}"><option value="전시장">전시장</option></c:if>
					               <c:if test="${board.getBoardCategory() ne '기타'}"><option value="기타">기타</option></c:if>
					         </select>
						</div>
						</c:if>

						<!-- 가격 -->		 		
						<div class="money" id="divstyle">
							<div id="fontstyle">
								가격
							</div>
							<input value="${board.getProductPrice()}" type="text" id="inputstyle" name="productprice" onkeypress="onlyNumber();" style="margin-left:18.7%" placeholder="원"/> 
							<div class="smallcheckbox" style="padding:1px; ">
								<c:choose>
									<c:when test="${board.getProductOffer() eq 0}">
										<input type="checkbox" id="productoffer" name="productoffer" value="0">
										<label style="margin:5px 0 0 23.5%; zoom:0.7" for="productoffer">가격 제안받기</label>
									</c:when>
									<c:otherwise>
										<input type="checkbox" id="productoffer" name="productoffer" value="0" checked="checked">
										<label style="margin:5px 0 0 23.5%; zoom:0.7" for="productoffer">가격 제안받기</label>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						
					
						<!-- 주소 -->
						<div id="divstyle">
							<div id="fontstyle">
								거래 지역
							</div>
							<div style="width:70%;margin-left:23.5%">
								<input type="button" name="findaddr" id="sample6_findaddr" style="margin-bottom:10px;" 
									onclick="sample6_execDaumPostcode();" value="주소 검색"/><br>
								<input type="text" name="userpostcode" id="sample6_postcode" style="margin-bottom:10px;" 
									placeholder="우편번호" readonly/>  
								<input  value="${board.getLocation()}" type="text" name="productlocation" id="sample6_address" style="margin-bottom:10px;"  readonly placeholder="주소"/>
								<input type="text" name="useraddrdetail" id="sample6_detailAddress" style="margin-bottom:10px;" 
									placeholder="상세주소"/>  
								<input type="text" name="useraddretc" class="inputstyle"
									id="sample6_extraAddress" placeholder="참고항목" readonly/>
							</div>
						</div>
						
						<!-- 달력 -->
						<c:if test="${board.getBoardStatus() eq 1}">
						<div class="t_parent" id="divstyle">
						        <div id="fontstyle" style="margin-right: 13%; margin-top:-10px;">
									대여 기간
								</div>
								
								<div id="calender-wrap">
									<div class="term" style="display:inline-block;">
								       <input value="${board.getAvTime1()}" type='date' name="avtime1" id="term" style="border: 1px solid #ccc; border-radius: 4px;"/>
						        	</div> 
						        	&nbsp;&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;&nbsp;
						        	<div class="term2" style="display:inline-block;">
						        		&nbsp;
						        		<input value="${board.getAvTime2()}" type='date' name="avtime2" id="term2" style="border: 1px solid #ccc; border-radius: 4px;"/>
							        </div>
							    </div>
				        </div>
				        </c:if>
				
						<!-- 상품 설명 -->
						<div class="col-12" id="divstyle">
							<div id="fontstyle">
								상품 설명
							</div>
							<textarea name="productexplain" class="textarea" id="inputstyle" placeholder="상품을 자세하게 설명해주세요!" rows="6" style="resize:none;margin-left:13%">${board.getProductExplain()}</textarea>
						</div>
			
						<!-- 버튼 --> 
						<div id="btnstyle">
							<a href="javascript:sendit()" class="button primary fit" style="width:20%; margin:3% 0 0 28%;">수정완료</a> 
							<input type="button" class="button fit" value="취소" onclick="goBack()" style="width:20%; margin-left:5%;">
						</div> 
	
						<br><br><br><br><br><br>
					</div>	
				</form>
			</div>
			
			
		
		<!-- Scripts -->
		<script src="../assets/js/jquery.min.js"></script>
		<script src="../assets/js/jquery.dropotron.min.js"></script>
		<script src="../assets/js/browser.min.js"></script>
		<script src="../assets/js/breakpoints.min.js"></script>
		<script src="../assets/js/util.js"></script>
		<script src="../assets/js/main.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="../sale,rentalpost/user.js"></script>
			
		<script>
			//가격 제안 체크박스 선택시 값 변경
			$('input:checkbox[id="productoffer"]').on("click", function(){
				if($(this).is(":checked") == true){
					$(this).val('1');
					console.log($('input:checkbox[id="productoffer"]').val())
				}
			})
		
			//파일 추가시 preview로 사진 보여주기
			var loadFile = function(event) {
			   var output = document.getElementById('output');
			   output.src = URL.createObjectURL(event.target.files[0]);
			   output.onload = function() {
			     URL.revokeObjectURL(output.src) 
			   }
			};
			
			function goBack(){
				window.history.back();
			}
			
			var cnt=0;
			function onlyNumber() {
			    if ((event.keyCode < 48) || (event.keyCode > 57)){
				    	console.log(document.getElementById("txtMobile2").value);
				    if(event.keyCode == 8){
				    	console.log("?");
			    		cnt-=1;
			    }
			        alert("숫자만 입력해주세요.");
			        event.returnValue = false;
			    }
			    	else{
			    	//숫자를 입력했을 때
			        if(cnt==4){
			        	console.log(cnt)
			        	console.log(document.getElementById("txtMobile2").value+="-");
			        }
			    	cnt+=1;
			    }
			}
			
			//제목 등 비어있는지 검사 
			const boardform = document.boardform;
			function sendit(){
				if (boardform.boardtitle.value == "" || boardform.boardtitle.value == null) {
					alert("제목을 입력해주세요.")
					boardform.boardtitle.focus();
					return false;
				}
				if (boardform.productprice.value == "" || boardform.productprice.value == null) {
					alert("가격을 입력해주세요.")
					boardform.productprice.focus();
					return false;
				}
				if (boardform.productlocation.value == "" || boardform.productlocation.value == null) {
					alert("주소를 입력해주세요.")
					boardform.productlocation.focus();
					return false;
				}
				if (boardform.productexplain.value == "" || boardform.productexplain.value == null) {
					alert("상품에 대해 설명해주세요.")
					boardform.productexplain.focus();
					return false;
				}
				boardform.submit();
			}
			
			/* selectbox 이벤트 */
			function selectCategory(){
				if($(".catebtn option:selected").val() == "물품"){
					$(".product").css("display","inline");
					$(".space").css("display","none");
					
				}else if($(".catebtn option:selected").val() == "공간"){
					$(".space").css("display","inline"); 	
					$(".product").css("display","none"); 	
				}
			}
//이거 필요한가?------------------------------------------------------------------------------------------------------------			
		function cancleFile(filename){
				if($.browser.msie){
					// input[name='   file1    ']     input[name='file1']
					$("input[name='"+filename+"']").replaceWith(("input[name='"+filename+"']").clone(true));
				}else{
					$("input[name='"+filename+"']").val("");
				}
			}
			
			function hiddenFile(o){
				  let file = '';
				  file += '<input type="file" name="file" id="'+o.id+'"/>';
				  return file;
			}

			function file(o){
				  let type = '';
				  if(o.ext === 'pptx' || o.ext === 'ppt'){
				    type = 'powerpoint';
				  }else if(o.ext === 'png' || o.ext === 'jpg'){
				    type = 'image';
				  }else if(o.ext === 'xlsx'){
				    type = 'excel';
				  }else if(o.ext === 'pdf'){
				    type = 'pdf';
				  }else {
				    type = 'alt';
				  }
				  let fileThumbnail = '';
				  fileThumbnail += '<div class="thumbnail">';
				  /* fileThumbnail += '  <i class="'+type+'"></i>'; */
				  fileThumbnail += '  <p class="name">'+o.name+'</p>';
				  fileThumbnail += '  <a href="#'+o.id+'" class="delete"><i class="far fa-minus-square"></i></a>';
				  fileThumbnail += '</div>';
				  return fileThumbnail;
			}

			function addFile(o){
				  $('.file-hidden-list').append(hiddenFile(o));
				  $('#' + o.id).click();
				  $('#' + o.id).on('change', function(e){
				    const arr1 = e.target.value.split('\\');
				    const name = arr1[arr1.length-1];
				    o.name = name;

				    const arr2 = e.target.value.split('.');
				    const ext = arr2[arr2.length-1];
				    o.ext = ext;

				    $('.file-list').append(file(o));
				  });
			}
				
			function makeid(length) {
				  var result           = '';
				  var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
				  var charactersLength = characters.length;
				  for ( var i = 0; i < length; i++ ) {
				     result += characters.charAt(Math.floor(Math.random() * charactersLength));
				  }
				  return result;
			}

					$(document).on('click', '#addFile', function(){
					  addFile({id:makeid(10)});
					});
					$(document).on('click', '.delete', function(){
					  const id = $(this).attr('href');
					  $(id).remove();
					  $(this).parent().remove();
					});
		
		</script>	
	</body>
</html>