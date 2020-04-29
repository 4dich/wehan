<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Blacklist</title>
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
	<link rel="stylesheet" href="resources/css/adminmargin.css"/>
	<link rel="stylesheet" href="resources/css/padding.css"/>
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
						<h2>블랙리스트</h2>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="qnaListView.do" id="qnaList" class="infoMenu">문의사항</a><br><br>
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
					</div>
					
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					
					<div class="blog-post-item">
						<!-- 문의사항 테이블 -->
						<table id="memberList" class="qnaTable">
							<tr class="thArea">
								<th>유저 아이디</th>
								<th>차단 이유</th>
								<th>차단 기간</th>
								<th>차단 날짜</th>
								<th>차단상태</th>
							</tr>
							<!-- 반복문 예정 -->
							<c:forEach var="b" items="${list}">
							<tr class="noticeList">
								<td>${b.userId}</td>
								<td>${b.banReason}</td>
								<td>${b.banTerm}</td>
								<td>${b.banDate}</td>
								<td>${b.status}</td>
							</tr>
							</c:forEach>
						</table>
						
						<div class="qnaPaging">
							<c:if test="${ pi.currentPage eq 1 }">
							</c:if>
							<c:if test="${ pi.currentPage ne 1 }">
								<c:url var="before" value="blackList.do">
									<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
								</c:url>
								<a href="${ before }"><</a>
							</c:if>
							
							<!-- 페이지 -->
							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<div style="width:24px; height:24px; background:#242424; color:white; display:inline-block; border-radius:70%">${ p }</div>
								</c:if>
								
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="pagination" value="blackList.do">
										<c:param name="currentPage" value="${ p }"/>
									</c:url>
									<a href="${ pagination }">${ p }</a>
								</c:if>
							</c:forEach>
							
							<!-- [다음] -->
							<c:if test="${ pi.currentPage eq pi.maxPage }">
							</c:if>
							<c:if test="${ pi.currentPage ne pi.maxPage }">
								<c:url var="after" value="blackList.do">
									<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
								</c:url> 
								<a href="${ after }">></a>
							</c:if>
						</div>
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