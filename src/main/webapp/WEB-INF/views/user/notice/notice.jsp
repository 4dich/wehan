<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>WEHAN / 위대한 한걸음</title>
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
	<link rel="stylesheet" href="resources/css/notice.css"/>
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<style>
		.about-info{width:348px;}
		.about-info p{font-size:12px;}
		.thArea {
   			 border-bottom: 2px solid black;
   			 }
	</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
		
		
		<c:import url="/WEB-INF/views/common/menuBar.jsp"/>

		
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<a href="noticeList.do" style="color: red;">공지사항</a>
                <a href="qnaListView.do">문의사항</a>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			<!-- 로고 구역 -->
			<div class="mb-warp">
				<a href="indexView.do" class="site-logo">
					<h2 style="margin-left: 6px;">위대한 한걸음</h2>
					<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
				</a>
			<!-- 서브메뉴 --><br><br>
			<div class="about-info" style="margin-top:100px; margin-left:0;">
				<h2>공지사항</h2>
				<!-- 감성글 작성 -->
				<p> 
					당신과 당신의 친구를 위한 공지사항입니다.<br>
					당신의 위대한 한걸음을 위해 지켜주세요.<br>
				</p>
			</div>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					<h3 class="noticeText" style="text-align:center;">공지사항</h3>
					
					<div class="blog-post-item">

						<div id="searchArea">
							<form action="searchNotice.do">
								<div id="searchSelect"> 
									<select name="searchNotice" id="searchNotice">
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select>					
								</div>
								<!-- 검색 -->
								<input class="searchBox" name="searchWord" type="search" style="height:31px; width:55%">
								<button>
									<img src="resources/images/main/search.png" alt="">
								</button>
							</form>
						</div>


						<!-- 공지사항 테이블 -->
						<table class="qnaTable">
							
							<tr class="thArea">
								<th>NO</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							<!-- 반복문 예정 -->
							
							<c:forEach var="n" items="${list}">
								<tr class="noticeList">
									
									<td>
										<input type="hidden" value="${n.nId}">
										${n.nId}
									</td>									
									<td style="text-align:left">${n.nTitle}</td>
									<td>${n.nWriter}</td>
									<td>${n.nDate}</td>
									<td>${n.nCount}</td>
								</tr>	
							</c:forEach>					

						</table>
						
						<!-- 페이징 처리 -->
						<!-- 이전 -->
						<div class="qnaPaging">
							<c:if test="${pi.currentPage eq 1 }">
								<
							</c:if>
							<c:if test ="${pi.currentPage ne 1 }">
								<c:url var="before" value="noticeList.do">
									<c:param name="currentPage" value="${pi.currentjPage - 1}"/>
								</c:url>
								<a href="${ before }"><</a>
							</c:if>
							
							<!-- 페이지 -->
							<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<font color="red" size = "4"><b>[${ p }]</b></font>
								</c:if>
								
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="pagenation" value="noticeList.do">
										<c:param name="currentPage" value="${ p }"/>
									</c:url>
									<a href="${ pagination }">${p}</a>
								</c:if>
							</c:forEach>
							
							<!-- 다음 -->
							<c:if test="${pi.currentPage eq pi.maxPage }">
								>
							</c:if>
							<c:if test="${pi.currentPage ne pi.maxPage }">
								<c:url var="after" value="noticeList.do">
									<c:param name="currentPage" value="${pi.currentPage + 1 }"/>
								</c:url>
								<a href="${after}">></a>
							</c:if>
							
						
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
		</div>
	</div>
	<!-- Main section end -->

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
		});
		
		
			$('.qnaTable td').click(function(){
				var nId = $(this).parent().children().find("input[type=hidden]").val();
				var currentPage = ${pi.currentPage};
				
				location.href="noticeDetail.do?nId="+nId+"&currentPage=" + currentPage;
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
