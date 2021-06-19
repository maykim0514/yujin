<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<!--
	Inverse by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
	<title>보낸 쪽지함</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mainfixed.css" />
	<link href="../images/iconpng.png" rel="icon">
</head>
<style>
*:focus { 
		outline:none; 
	}
	#wrap{
		width:100%;
		margin:0 auto; 
	} 
	header{
		width:100%;
		height:120px;
	}
	aside{
		width:13.5%;
		height:820px;
		background:#ffffff;
		float:left;
	}
	section{
		width:86.5%;
		height:820px;
		background:#ffffff;
		float:left;
	}
	footer{
		width:100%;
		height:150px;
		background:#ffffff;
		clear:both;
	}
	#header > .logo{
		height: 27px;
		line-height: normal;
	}
	/* aside에 있는 쪽지함 선택하기 */
	.inboxlocation .button{
		float : left;
		border-radius: 0px 40px 40px 0px !important;
		background-color : white !important;
		color : black !important;
		width: 230px;
		font-weight : normal;
	}
	.inboxlocation .button:hover{
		float : left;
		border-radius: 0px 40px 40px 0px !important;
		background-color : rgba(144, 144, 144, 0.075) !important;
		color : black !important;
		width: 230px;
	}
	/* 쪽지 검색하기 */
	.search-wrap{
		border-bottom: 1px solid #ddd; 
		padding: 1rem;
	}
	.search {
	  width: 36%;
	  position: relative;
	  display: flex;
	}
	.keyword {
	  width: 100%;
	  border: 3px solid #00B4CC;
	  border-right: none;
	  padding: 5px;
	  height: 20px;
	  outline: none;
	  color: #9DBFAF;
	}
	.keyword:focus{
	  color: #00B4CC;
	}
	#keyword{
		height:50px; 
		border: 1px solid #ddd; 
		margin-left: 3%; 
		color:black;
	} 
	.searchButton {
		width: 20%;
		height: 50px;
		border: 1px solid #0028B0;
		background: #0028B0;
		text-align: center;
		color: #fff;
		border-radius: 0 5px 5px 0;
		cursor: pointer;
		font-size: 20px;
	}
	/* chrome 브라우저에 있는 스크롤 없애기 */
	body{
		-ms-overflow-style:none; 
	}
	body::-webkit-scrollbar { 
		display:none; 
	}
	/* 쪽지함 안에서 사용하는 작은 버튼들 */
	#small{
		zoom: 0.8;
		box-shadow: inset 0 0 0 1px #696969;
    	color: #696969 !important;
    	margin: 0px 7px 0px 0px;
	}
	/* 쪽지함 테이블 */
	.table-wrapper{
		width:100%;
		height:580px;
		overflow:scroll;
		overflow-x:hidden !important;
	}
	table thead {
		border-bottom: solid 1px #ddd !important;
	}
	table tbody tr:nth-child(2n + 1) {
  		background-color: #fff;
	}
	table td {
		padding: 0.2rem 0.2rem;
		font-size:0.9em;
	}
	/* 쪽지함 내용 */
	.content{
		color : black;
	}
	a:hover {
    	color: #0028B0 !important;
	}
	/* 체크박스 dropdown 선택 */
	.checkbox-dropdown{
		position: relative;
		display: inline-block;
	}
	.checkbox-content {
		 display: none;
		 position: absolute;
		 background-color: #ffffff;
		 min-width: 180px; 
		 line-height:10px;
		 box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		 z-index: 1;
		 top: 75%;
   		 left: 3%;
	}
	.checkbox-content a {
		 color: #6e6e6e;
		 padding: 12px 16px;
		 text-decoration: none;
		 display: block;
	}
	.checkbox-content a:hover {
		background-color: #F59A23; 
		color: #ffffff;
	}
	.show{
		display:block;
	}
	/* 삭제 ,답장,스팸 버튼 */
	.decision-btn{
		border-bottom: 1px solid #ddd; 
		width: 100%; 
		line-height:130%; 
		font-size:12px; 
		font-family:돋움;
	}
	#small{
		zoom: 0.8;
		box-shadow: inset 0 0 0 1px #696969;
    	color: #696969 !important;
    	margin-left:10px
	}
</style>

<body class="is-preload">
	
	<c:if test="${session_id eq null}">
		<script>
			alert("로그인 후 이용하세요!")
			location.replace("${pageContext.request.contextPath}/member/MemberLogin.me");
		</script>
	</c:if>
	
	<div id ="wrap">
	
		<!-- Header -->
		<header id="header">
			<a class="logo" href="${pageContext.request.contextPath}/index.jsp" style="width:10%;">
				<img src="../images/logo.png" alt="" style="width:100%; position: relative; margin-top: -30px;"/>
			</a>
			<nav id="nav">
				<ul style="font-size:0.85em">
					<!-- 경로 설정해주기 -->
					<li><a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a></li>
					<li><a href="">마이페이지</a></li>
				</ul>
			</nav>
		</header>
		
		<!-- aside -->
		<aside id="aside">
			<br>
			<div>
				<div style="margin-left:17%">
					<a href="${pageContext.request.contextPath}/mail/MailWrite.ma" class="button primary small"
						onClick="window.open(this.href,'_blank','width=600px, height=630px,left=1200px,top=500px');return false;">쪽지 보내기</a><br><br>		
				</div>
				<div class="inboxlocation" align="center">
					<a href="${pageContext.request.contextPath}/mail/InboxList.ma" class="button primary small">받은 쪽지함</a><br>
					<a href="#" class="button primary small" style="background-color : #F59A23 !important">보낸 쪽지함</a><br>
					<a href="${pageContext.request.contextPath}/mail/ImportantInboxList.ma" class="button primary small">별표 쪽지함</a><br>
					<a href="${pageContext.request.contextPath}/mail/DraftMailList.ma" class="button primary small">임시 쪽지함</a><br>
					<a href="${pageContext.request.contextPath}/mail/DeletedInboxList.ma" class="button primary small">휴지통</a><br>
				</div>
			</div>
		</aside>
				
		<!-- section -->
		<section id="section">
		
			<!-- 쪽지함 찾기 -->
			<div class="search-wrap">
				<div class="search">
					<select name="type" style="height:50px;width:33%">
						<option value="">기준</option>
						<option value="C">내용</option>
						<option value="W">아이디</option>
					</select>
					<input id="keyword" name="keyword" type="text" value="" placeholder="쪽지 검색" style="border-radius: 5px 0 0 5px;display:inline"/>
					<input id="mailtype" name="mailtype" type="hidden" value="inbox"/>
					<a href="#" class="searchButton">
        				<i class="fa fa-search"></i>
        			</a>
				</div>
			</div>
			
			<div id="table-header" style="padding:0.8rem; height:84px">
				<div class="checkbox-dropdown">
					<div style="zoom:0.52;float:left;margin:20px 0px 20px 30px;">
						<input type="checkbox" id="check-all" name="check-all"/>
							<label for="check-all" style="padding:0"></label>
					</div>
					<input onclick="dropFunction();" type="image" name="checkboxbtn" id="checkboxbtn" src="../images/trianglebtn.png" width="35" height="28" style="margin:12px 0px 12px 15px; display:inline; float:left;">
					<div class="checkbox-content" id="listDropdown">
						<a href="#" onclick="selectAll();">전체선택</a>
						<a href="#" onclick="uncheckSelected();">선택안함</a>
					</div>
					<input type="image" name="refreshbtn" onclick="history.go(0);" src="../images/refreshbtn.png" width="50" height="40" style="margin:6px 57px 0px 30px; display:inline; float:left;">
					<div class="toggle-btn" style="display:none;">
						<a href="#" class="button small" id="small">삭제</a>
					</div>
				</div>
				<div class="paging" style="display:inline; float:right; margin-right:5.5%">
					<!-- 페이지 ajax -->
				</div>	
			</div>
			
			<div class="openMail"></div>
			
			<!-- 보낸 쪽지 보여주기 -->
			<div class="table-wrapper">
				<table style="width:100%">
					<colgroup>
						<col width="7%">
						<col width="13%">
						<col width="30%">
						<col width="35%">
						<col width="15%">
					</colgroup>
					<tbody class="mailList" style="color:black ;">
						<!-- 보낸 쪽지 목록 ajax -->
					</tbody>
				</table>
			</div>
		</section>
		
		<!-- footer -->
		<footer>
			<div id="footer">
				<div class="copyright" style="background:#353535;color:#fff;">
					<div style="width:100%;height:50px;">
						<ul class = "footer_list" style="width:55%;height:50px;list-style:none;text-align:center;margin: 0 auto;">
							<li><a href="#">회사소개</a></li>
							<li><a href="#">광고문의</a></li>
							<li><a href="#">이용약관</a></li>
							<li><a href="#">개인정보처리방침</a></li>
							<li><a href="#">고객센터</a></li>
						</ul>
					</div>	
					<div style="text-align:center">
					&copy; Untitled. All rights reserved.
					</div>
				</div>
			</div>
		</footer>
		<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>	
	<script>
		//검색어 찾기
		var searchForm = $("#searchForm");

		$("#searchForm a").on('click',function(e){
				e.preventDefault();
				if(!searchForm.find("option:selected").val()){
					alert('검색 기준을 선택하세요');
					return false;
				}
				if(!searchForm.find("input[name='keyword']").val()){
					alert("검색어를 입력하세요");
					return false;
				}
				searchForm.find("input[name='pageNum']").val("1");
				searchForm.submit();
			}	
		);
	
	</script>
	<script>
		var pageUL = $(".paging");
		var mailUL = $(".mailList");
		var openUL = $(".openMail")
		var searchUL = $(".search-wrap")
		var pageNum = 1;

		getList(1, "received");
		
		function getList(page, mailtype, keyword, option){
		
	
			$.ajax({
				url:"${pageContext.request.contextPath}/mail/MailInfo.ma?page=" + (page || 1) + "&mailtype=" + mailtype
						+ "&keyword=" + keyword + "&option=" + option,
				dataType:"text",
				success:function(list){
					//list.nowPage == list["nowPage"]
					list = JSON.parse(list);
					
					//페이징 처리
					var str1 = "";
					

					if(list.nowPage>1){
						str1 += "<strong><a id='changePage' href='" + (parseInt(list.nowPage) - 1) + "'>&lt;</a></strong>"
					}
					str1 += "&nbsp;&nbsp;&nbsp;"

					str1 += "<span><span style='font-size:0.8rem'>" + list.totalCnt + "개 중 " + list.startRow + "-" + 
							list.endRow + "</span>"
					
					str1 += "&nbsp;&nbsp;&nbsp;"
					
					if(list.nowPage<list.totalPage){
						str1 += "<strong><a id='changePage' href='" + (parseInt(list.nowPage) + 1) + "'>&gt;</a></strong>"
					}
					
					str1 += "</span>"				
					pageUL.html(str1);
					
					//목록 가져오기
					if(list.inboxList == null || list.inboxList.length == 0){
						var str = "<td colspan='5' align='center'>보낸 쪽지가 없습니다.</td>"
						mailUL.html(str);
						return;
					}
					
					var str2 = "";
					
					for(let i=0, len=list.inboxList.length; i < len; i++){
							str2 += "<tr id='tdWrap' style='background : #fafafa;'><td style='vertical-align: top;'>"
							str2 += "<div class='col-6 col-12-small' style='zoom:0.52; padding:9px 0px 0px 51px'>"
							str2 += "<input type='checkbox' id='checkbox-" + list.inboxList[i].mailnum + "' name='checkbox' class='checkboxSub'"
									+ "value='" + list.inboxList[i].mailnum + "'/>"
							str2 += "<label for='checkbox-" + list.inboxList[i].mailnum + "'></label></div></td>"
						if(list.inboxList[i].important != "1"){
							str2 += "<td style='vertical-align: middle;'>"
							str2 += "<img class='" + list.inboxList[i].mailnum + "' id='starimage'" + 
									"src='../images/originalstar2.png' width='30' height='25'" +
									"style='margin: auto; display:inline; float:left;'></td>"
						}else{
							str2 += "<td style='vertical-align: middle;'>"
							str2 += "<img class='" + list.inboxList[i].mailnum + "' id='starimage'" + 
									"src='../images/changedstar2.png' width='30' height='25'" +
									"style='margin: auto; display:inline; float:left;'></td>"
						}
							str2 += "<td>" + list.inboxList[i].targetid + "</a></td>"
							str2 += "<td><a id='getDetail' href='javascript:getMailDetail(" + 
									list.inboxList[i].mailnum + "," + list.nowPage + ");' class='content'>" + 
									list.inboxList[i].mailcontent + "</a></td>"
							str2 += "<td>" + list.inboxList[i].maildate + "</td></tr>"
					}
					mailUL.html(str2);
				},
				error:function(a, b, c){
					console.log(a)
					console.log(b)
					console.log(c)
				}
			});
		}
		
		function getMailDetail(mailnum){
			
			$.ajax({
				url:"${pageContext.request.contextPath}/mail/MailDetailInfo.ma?mailnum=" + mailnum,
				dataType:"text",
				//async:false,
				success:function(detail){
					detail = JSON.parse(detail);
					
					$("#table-header").css("display", "none");
					$(".table-wrapper").css("display", "none");
					$(".search-wrap").css("display", "none");
					$("#aside").css("border-right", "1px solid #ddd");
					
					console.log(detail);
					console.log(detail.userid);
					
					var str = "";
					
					str += "<div class='decision-btn'><div style='margin: 0 20px; width: 70%;'><br>"
					if(detail.important != "1"){
						str += "<img class='" + detail.mailnum + "' id='starimage' src='../images/originalstar2.png' width='30' height='25' style='margin: -8px 0px'>"
					}else{
						str += "<img class='" + detail.mailnum + "' id='starimage' src='../images/changedstar2.png' width='30' height='25' style='margin: -8px 0px'>"
					}
					str += "<a href='" + detail.mailnum + "' name='deleteFromDetail' class='button small' id='small'>삭제</a>"
					str += "<a href='#' name='goBack' class='button small' id='small'>뒤로가기</a>"
					str += "<div style='line-height:130%; font-size:12px; font-family:돋움;'></div><br></div></div>"
					str += "<div style='border-bottom: 1px solid #ddd; width: 100%;'>"
					str += "<div style='margin: 0 15px;'>"
					str += "받는사람&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + detail.targetid + "<br>"
					str += "받은시간&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + detail.maildate + "</div></div>"
					str += "<div style='margin: 0 15px; width: 70%'><br>"
					str += detail.mailcontent + "<br><br><br><br><br><br><br><br><br><br>"
					str += "<div style='text-align:center; margin-left:27%'>"
					str += "<a href='changeMail(" + detail.mailnum + ", 0)' id='prevMail' style='color:black;font-size:0.85em'>이전</a> |"
					str += "<a href='changeMail(" + detail.mailnum + ", 1)' id='nextMail' style='color:black;font-size:0.85em'>다음</a></div></div>"
					
					openUL.html(str);			
				}, 
				error:function(a, b, c){
					console.log(a)
					console.log(b)
					console.log(c)
				}
			});	
		}
		
		
//쪽지함----------------------------------------------------------------------------------------------------------------------		
		//페이징 처리
		$(".paging").on("click", "a#changePage", function(e){
			e.preventDefault();
			getList($(this).attr('href'), "received", keyword, option);
		});
		
		//ajax로 IMPORTANT DB UPDATE
		var impcheck = 0;
		function changeStar(mailnum){
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/mail/ImpChangeOK.ma?mailnum=" + mailnum,
				async: false,
				success:function(result){
					result = JSON.parse(result);
					impcheck = result.important;
				}
			});
			return impcheck;
		}
		
		//별 이미지 바꿔주기
		$(".mailList").on("click", "img#starimage", function(){
			var mailnum = $(this).attr("class");
			impcheck = changeStar(mailnum);
			
			if(impcheck == 1){
				$(this).attr("src", "${pageContext.request.contextPath}/images/changedstar2.png");
			}else{
				$(this).attr("src", "${pageContext.request.contextPath}/images/originalstar2.png");
			}
		});
		
		//개별 선택
		$(".mailList").on("click", "input.checkboxSub", function(){
			if($("#check-all").is(":checked")){
				$("#check-all").prop("checked", false);
			}
			if($(".checkboxSub").is(":checked")){
				$(".toggle-btn").css("display","inline");				
			}else{
				$(".toggle-btn").css("display","none");		
			}
		})
		
		//전체 선택 및 해제
		$("#check-all").click(function(){
			if($("input:checkbox[id='check-all']").prop("checked")){
				$("input[type=checkbox]").prop("checked", true);
				$(".toggle-btn").css("display","inline");
			}else{
				$("input[type=checkbox]").prop("checked", false);
				$(".toggle-btn").css("display","none");	
			}
		})
		
		//메일 휴지통 이동
		function deleteAction(){
			
			var checkbox = "";
			$("input[name='checkbox']:checked" ).each(function(){
				checkbox = checkbox + $(this).val()+"," ;
			});
			
			//맨끝 콤마 지우기
			checkbox = checkbox.substring(0,checkbox.lastIndexOf(",")); 
				
			console.log("### checkRow => {" + checkbox + "}");
				 
			if(confirm("쪽지를 삭제 하시겠습니까?")){
				$.ajax({
					type: "post",
					url: "${pageContext.request.contextPath}/mail/DeleteMailOK.ma",
					data:{"checkbox":checkbox},
					//contentType:"text",
					success:function(data){
						alert("휴지통으로 이동되었습니다.");
						getList(pageNum, "received")
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
		 
		//버튼 클릭해서 선택한 checkbox들의 메일 휴지통으로 이동시켜주기
		$("#small").on("click", function(e){
			e.preventDefault();
			deleteAction();
		});
		
		//dropdown에 있는 전체선택 누를시
		function selectAll(){
			$("input[type=checkbox]").prop("checked", true);
			$(".toggle-btn").css("display","inline");
		}
		
		//dropdown에 있는 선택해제 누를시
		function uncheckSelected(){
			checkboxList = document.querySelectorAll(".checkboxSub");
			if($("input:checkbox[id='check-all']").prop("checked")){
				$("input[type=checkbox]").prop("checked", false);
				$(".toggle-btn").css("display","none");
			}
			for(var i = 0; i < checkboxList.length + 1; i++){
				if($(checkboxList[i]).is(":checked")){
					$(checkboxList[i]).prop("checked", false);
				}
			}
		}
		
		//dropdown 버튼 클릭시 dropdown-content 보여주기
		function dropFunction() {
			console.log("들어옴")
		    document.getElementById("listDropdown").classList.toggle("show");
		}

		//사용자가 다른 곳을 클릭했을 때 dropdown 닫아주기
		window.onclick = function(event) {
			if (!event.target.matches("#checkboxbtn")) {
			    var dropdowns = document.getElementsByClassName("checkbox-content");
			    //var i;
			    for (var i = 0; i < dropdowns.length; i++) {
			    	var openDropdown = dropdowns[i];
			    	if (openDropdown.classList.contains("show")) {
			    		openDropdown.classList.remove("show");
			      	}
			    }
			}
		}
		
//쪽지 상세보기 ------------------------------------------------------------------------------------------------------------------
		
		//쪽지 상세보기 페이징 처리
		function changeMail(mailnum, num){
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/mail/ChangeMail.ma?mailnum=" + mailnum + "&action=" + num + "&mailtype=received",
				success:function(result){
					result = JSON.parse(result);
					changedMailnum = result.changedMailnum;
					console.log(changedMailnum)
					getMailDetail(changedMailnum);
				}
			});
		}
		
		//쪽지 상세보기 별 이미지 바꿔주기
		$(".openMail").on("click", "img#starimage", function(){
			var mailnum = $(this).attr("class");
			impcheck = changeStar(mailnum);
			
			if(impcheck == 1){
				$(this).attr("src", "${pageContext.request.contextPath}/images/changedstar2.png");
			}else{
				$(this).attr("src", "${pageContext.request.contextPath}/images/originalstar2.png");
			}
		});
		
		//쪽지 상세보기에서 뒤로가기
		$(".openMail").on("click", "a[name='goBack']", function(e){
			e.preventDefault();
			$(".openMail").css("display", "none");
			$("#table-header").show();
			$(".table-wrapper").show();
			$(".search-wrap").show();
			getList(pageNum, "received", keyword, option);
		})
		
		//쪽제 상세보기 삭제클릭시
		$(".openMail").on("click", "a[name='deleteFromDetail']", function(e){
			e.preventDefault();
			deleteFromDetail($(this).attr("href"));
		})
		
		//쪽지 상세보기에서 쪽지 휴지통 이동
		function deleteFromDetail(mailnum){
			if(confirm("쪽지를 삭제 하시겠습니까?")){
				$(".openMail").css("display", "none");
				$.ajax({
					type: "get",
					url: "${pageContext.request.contextPath}/mail/DeleteFromDetailOK.ma?mailnum="+ mailnum,
					//async: false,
					success:function(){
						console.log("들어옴")
						alert("휴지통으로 이동되었습니다.");
						$("#table-header").show();
						$(".table-wrapper").show();
						$(".search-wrap").show();
						getList(pageNum, "received");
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
//검색하기--------------------------------------------------------------------------------------------------------

		var search = $(".search");
		var option = null;
		var keyword = null;
		
		$(".searchButton").on('click', function(e){
				e.preventDefault();
				option = search.find("option:selected").val();
				keyword = search.find("input[name='keyword']").val();
				
				if(!option){
					alert('검색 기준을 선택하세요');
					return false;
				}
				if(!keyword){
					alert("검색어를 입력하세요");
					return false;
				}
				getList(1, "received", keyword, option)
			}
		);
	</script>		
	</body>
</html>