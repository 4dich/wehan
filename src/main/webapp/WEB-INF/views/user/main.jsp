<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/images/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">


		<!-- 메뉴 -->
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
				<a href=""><i class="fa fa-behance"></i></a> -->
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

					<div>
						<input type="textarea" style="width: 300px; height: 50px; border-radius: 3px; border:3px solid #242424">
						<a href="#" class="site-btn2">
						<img src="resources/images/main/search.png" alt=""></a>
					</div>
					<br><br>
					<!-- 서브메뉴 -->
					<div class="about-info">
						<h2>회사소개</h2>
						<p>"한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약이다. (One small step for a man, one giant leap for mankind.)”<br>
							이 명언은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.<br><br>
							혼자선 힘들었던 계획들, 같은 목표의 사람들과 함께 해보세요.<br>
						   	당신의 미래를 시작하기 위한 첫 걸음을 도와드릴게요.
						</p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>		
					<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
						All rights reserved </p>
					</div>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section">
				<div class="hero-section">
					<div class="hero-track">
						<a href="companyInfoView.do" style="margin-right: 0;">
							<div class="hs-item set-bg" data-setbg="resources/images/hero/1.jpg" style="height: 400px; width: 400px">
								<div class="hs-info">
									<h5>위대한 한걸음</h5>
									<p>알아보기</p>
									<img src="resources/images/arrow-righ-3.png" alt="">
								</div>
							</div>
						</a>						
						<a href="serviceInfoView.do">
							<div class="hs-item set-bg" data-setbg="resources/images/hero/3.jpg">
								<div class="hs-info">
									<h5>한걸음 가이드</h5>
									<p>알아보기</p>
									<img src="resources/images/arrow-righ-3.png" alt="">
								</div>
							</div>
						</a>
						<a href="guideInfoView.do">
							<div class="hs-item set-bg" data-setbg="resources/images/hero/2.jpg">
								<div class="hs-info">
									<h5>당신의 나무를 키워보세요</h5>
									<p>알아보기</p>
									<img src="resources/images/arrow-righ-3.png" alt="">
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<!-- Page end -->
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
