<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>MAIN</title>
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
	<link rel="stylesheet" href="resources/css/style.css"/>

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

					<!-- 서브메뉴 -->
					<div class="about-info" style="margin-left: 5px;">
						<h4>&nbsp;&nbsp;"One small step for a man,<span style="line-height: 180%;">
						<br></span>&nbsp;&nbsp;One giant leap for mankind."</h4><br>
						<p>&nbsp;&nbsp;"한 인간에겐 작은 한 걸음이지만, 인류에겐 위대한 도약이다.”<br>
							&nbsp;이 말은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.<br>
							&nbsp;혼자서 힘들었던 계획들, 같은 목표의 사람들과 함께 해보세요.<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;당신의 미래를 시작하기 위한 첫 걸음을 도와드릴게요.
						</p>
					</div>
					<ul class="contact-info" style="text-align: center;">
					<br>
						<li>서울특별시 강남구 테헤란로14길 6</li>
						<li>남도빌딩 3F H 오후반 TEAM THROW</li>
						<li>ADMIN : 010-8691-8934</li>
						<li><a href="mailto:contactme@myemail.com">teamthrow@gmail.com</a></li>
					</ul>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section">
				<div class="hero-section">
					<div class="hero-scroll">
						<div class="hero-track">
							<a href="companyInfoView.do">
								<div class="hs-item set-bg" data-setbg="resources/images/main/company.jpg" style="margin-left: 22px;">
									<div class="hs-info">
										<h5>회사 소개</h5>
										<p>THE GREAT ONE STEP</p>
										<img src="resources/images/arrow-right.png" alt=""></a>
									</div>
								</div>
							</a>
							<a href="serviceInfoView.do">
								<div class="hs-item set-bg" data-setbg="resources/images/hero/1.jpg">
									<div class="hs-info">
										<h5>위대한 한걸음</h5>
										<p>자세한 가이드 알아보기</p>
										<img src="resources/images/arrow-right.png" alt=""></a>
									</div>
								</div>
							</a>
							<a href="guideInfoView.do">	
								<div class="hs-item set-bg" data-setbg="resources/images/main/tree.jpg">
									<div class="hs-info">
										<h5>나만의 나무를 키워보세요</h5>
										<p>자세히 살펴보기</p>
										<img src="resources/images/arrow-right.png" alt=""></a>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright" style="margin-left: 90px;"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> TEAM THROW
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
	</div>
	<!-- Main section end -->
	
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>
