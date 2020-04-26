<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<style>
		.infoMenu{font-size: 16px;}
		.about-info{margin:0;}	
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
		a{text-decoration: none; color: black;}
	</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">

	<%@ include file="/WEB-INF/views/common/ad_menuBar.jsp" %>

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			
				<div class="mb-warp">
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>

					<div class="about-info">
						<h2>회원정보</h2>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="ad_questionsList.do" id="ad_questions" class="infoMenu">문의사항</a><br><br>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
					</div>
					
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					
					<div class="blog-post-item">
						<form action="mlistSearch.do">
							<div id="searchArea"  style="margin-top:0 ;">
								<div id="searchSelect"> 
									<select name="selecter" id="selecter">
										<option value="userId">아이디</option>
										<option value="nickName">닉네임</option>
										<option value="userName">이름</option>
									</select>					
								</div>
								<!-- 검색 -->
								<input id="searchValue" name="searchValue" class="searchBox" type="search">
								<button id="search"><img src="resources/images/main/search.png" alt=""></button>
							</div>
						</form>
						<!-- 문의사항 테이블 -->
						<table id="memberList" class="qnaTable">
							<tr class="thArea">
								<th>아이디</th>
								<th>닉네임</th>
								<th>이름</th>
								<th>생년월일</th>
								<th>휴대폰번호</th>
								<th>계좌번호</th>
								<th>블랙리스트</th>
							</tr>
							<!-- 반복문 예정 -->
							<c:forEach var="m" items="${list}">
							<tr class="noticeList">
								<td>${m.userId}</td>
								<td>${m.nickName}</td>
								<td>${m.userName}</td>
								<td>${m.birthDay}</td>
								<td>${m.phone}</td>
								<td>${m.account}</td>
								<td>${m.blacklistYN}</td>
							</tr>
							</c:forEach>
						</table>
						<c:if test="${!empty searchValue}">
							<div class="qnaPaging">
								<c:if test="${ pi.currentPage eq 1 }">
									< &nbsp;
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
									<c:url var="before" value="mlistSearch.do">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
										<c:param name="searchValue" value="${searchValue}"/>
										<c:param name="selecter" value="${selecter}"/>
									</c:url>
									<a href="${ before }"><</a> &nbsp;
								</c:if>
								
								<!-- 페이지 -->
								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<font color="red" size="4"><b>[${ p }]</b></font>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="pagination" value="mlistSearch.do">
											<c:param name="currentPage" value="${ p }"/>
											<c:param name="searchValue" value="${searchValue}"/>
											<c:param name="selecter" value="${selecter}"/>
										</c:url>
										<a href="${ pagination }">${ p }</a> &nbsp;
									</c:if>
								</c:forEach>
								
								<!-- [다음] -->
								<c:if test="${ pi.currentPage eq pi.maxPage }">
									>
								</c:if>
								<c:if test="${ pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="mlistSearch.do">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
										<c:param name="searchValue" value="${searchValue}"/>
										<c:param name="selecter" value="${selecter}"/>
									</c:url> 
									<a href="${ after }">></a>
								</c:if>
							</div>
						</c:if>
						
						<c:if test="${empty searchValue}">
							<div class="qnaPaging">
								<c:if test="${ pi.currentPage eq 1 }">
									< &nbsp;
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
									<c:url var="before" value="mlist.do">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
									</c:url>
									<a href="${ before }"><</a> &nbsp;
								</c:if>
								
								<!-- 페이지 -->
								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<font color="red" size="4"><b>[${ p }]</b></font>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="pagination" value="mlist.do">
											<c:param name="currentPage" value="${ p }"/>
										</c:url>
										<a href="${ pagination }">${ p }</a> &nbsp;
									</c:if>
								</c:forEach>
								
								<!-- [다음] -->
								<c:if test="${ pi.currentPage eq pi.maxPage }">
									>
								</c:if>
								<c:if test="${ pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="mlist.do">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
									</c:url> 
									<a href="${ after }">></a>
								</c:if>
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
	
	
		<div class="copyright"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
  			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
		</div>
	<!-- Main section end -->
	<script>
		$(document).ready(function(){
			var msg2 = "<%= request.getAttribute("msg2")%>";
			if(msg2 != "null"){
				alert(msg2);
				location.href="loginView.do";
			}
			
			$('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
			
		});
		
		$(".noticeList").click(function(){
			var index = $('.noticeList').index(this) + 1;
			var userId = $('.qnaTable tr:eq('+index+')').children().eq(0).text();
			console.log(userId);
			location.href='mlistDetail.do?userId='+ userId;
		});
		
	</script>
	
	<!--====== Javascripts & Jquery ======-->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>