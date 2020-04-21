<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>CH_DETAIL</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/jh-css.css"/>
	<!-- <link rel="stylesheet" href="../resources/css/left_section.css"/> -->
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>	

	<style>
		.contents-detail {
			width: 100%; 
			height: 40px; 
			padding: 0 22px; 
			margin-bottom: 35px; 
			font-size: 20px;
			font-family: 'Nanum Gothic Coding', monospace;
			border: 2px solid #e1e1e1; 
			border-top: none; 
			border-left: none; 
			border-right: none;
		}

		.contents-detail2 {
			width: 100%; 
			height: 150px; 
			padding: 10px 22px 10px 22px; 
			margin-bottom: 15px; 
			font-size: 20px; 
			font-family: 'Nanum Gothic Coding', monospace;
			border: 2px solid #e1e1e1; 
		}
		
		.contact-form input, .contact-form textarea {
			border: 0;
			background: none !important;
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

			<%@ include file="/WEB-INF/views/common/menuBar.jsp"%>

			<header class="header-section">
				<div class="nav-switch menuIcon msgCount">
					<i class="fa fa-bars"></i>
				</div>
				<!-- <div class="header-social">
					<a href="" style="color: red;">전체 챌린지</a>
					<a href="">프리미엄 챌린지</a>
					<a href="">TOP 10 챌린지</a>
				</div> -->
			</header>
			<div class="site-content-warp">
				<!-- Left Side section -->
				<div class="main-sidebar">
						<!-- 로고 구역 -->
						<div class="mb-warp">
							<a href="index.html" class="site-logo">
								<h2 style="margin-left: 6px;">위대한 한걸음</h2>
								<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
							</a>
						<!-- 서브메뉴 -->
						<form class="searchChallenge" action="searchChallenge.do">
							<div class="challenges-search" style="margin-left: 10px;">
								<input type="textarea" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 이름 검색">
								<a href="" class="site-btn2">
									<img src="resources/images/main/search.png" style="padding-left: 10px;" alt=""></a>
							</div>
						</form>

						<br><br>
	
						<div class="about-info" style="margin-left: 50px;">
							<p style="font-size: 15px;">
								나의 도전에 관한 <b>상세 내용</b>입니다.<br>
								이 도전을 위해 얼마를 투자했는지,<br>
								이 도전을 언제부터 시작했는지 등의<br> 
								모든 정보는 이 곳에서 확인 가능합니다.
							</p>
						</div>
						
						<button class="site-btn sb-dark" style="margin-left: 35px; width: 280px; font-size: 15px;" type="button" onclick="location.href='chalList.do'">
							리스트 페이지로 가기
							<img src="img/arrow-righ-3.png" alt="">
						</button>
						<br><br>
						 <!-- <ul class="contact-info">
							<li>서울특별시 강남구 테해란로14길 6</li>
							<li>남도빌딩 3F H반 T:1544-9970</li><br>
							<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
						</ul> -->
						
					</div>
				</div>
				<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section contact-page">
				<div class="contact-section">
					<div class="row">
						<div class="sampleArea" style="display: inline-flex;">
							<div class="col-xl-6">
								<div class="portfolio-item" style="margin-top: 60px;">
									<img src="resources/images/challenge/${ chal.chPicture }" style="height: 626px;" alt="">
									<div class="pi-info">
										<h3 style="padding-left: 60px; padding-bottom: 20px;">D-31일</h3>
									</div>
								</div>				
							</div>
							<div class="col-xl-6">
								<div class="contact-text-warp">
									<form class="contact-form" method="post" action="payinfo.do" style="margin-top: 65px;">
										<div class="row">
										<input type="hidden" name="price" value="${ chal.price }">
										<input type="hidden" name="chId" value="${ chal.chPId }">
										<input type="hidden" name="chName" value="${ chal.chName }">
										<input type="hidden" name="chPeople" value="${ chal.chPeople }">
										<input type="hidden" name="chPeopleCount" value="${ chal.chPeopleCount }">
										
										
											<div class="col-lg-12">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chName" value="${ chal.chName }" disabled>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="category" value="${ chal.category }" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chId" value="${ chal.chId }" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chPeople" value="${ chal.chPeople }" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="startDate" value="${ chal.startDate }" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="endDate" value="${ chal.endDate }" disabled>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="ceMethod" value="${ chal.ceMethod }" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="price" value="${ chal.price }" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="totalPrice" value="${ chal.totalPrice }" disabled>
												</div>
											</div>
											<br><br><br><br>
											<div class="col-lg-12">
												<div class="contents-detail2">
													<input type="text" class="challengeDetail" name="chContent" value="${ chal.chContent }" disabled>
												</div>
											</div>
										</div>
									<br><br>
									<button class="site-btn sb-solid mr-3 mb-3" style="color: white; float: right; width: 280px; font-size: 16px;" type="submit">
										챌린지 결제하기
										<img src="img/arrow-righ-2.png" alt="">
									</button>
									</form>
								</div>
							</div>
						</div>
                    </div>
				</div>
			</div>
		<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
			All rights reserved </p>
		</div>
	</div>
		<!-- Main section end -->
	
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