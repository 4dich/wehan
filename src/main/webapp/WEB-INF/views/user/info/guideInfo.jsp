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
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<!-- 회원전용 사이드바 CSS -->
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->

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

			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<!-- 로고 구역 -->
				<div class="mb-warp">
					<a href="indexView.do" class="site-logo" style="margin-bottom: 70px;">
						<h2 style="margin-left: 11px;">위대한 한걸음</h2>
						<p style="padding-top: 20px;">THE GREAT ONE STEP</p>
					</a>

					<!-- 서브메뉴 -->
					<div class="about-info" style="margin-left: 5px;">
						<h2 style="margin-left: 68px;">나무 키우기</h2><br>
						<p>&nbsp;&nbsp;"한 인간에겐 작은 한 걸음이지만, 인류에겐 위대한 도약이다.”<br>
							&nbsp;&nbsp;이 말은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.<br>
							혼자서는 힘들었던 계획들, 같은 목표의 사람들과 함께 해보세요.<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;당신의 미래를 시작하기 위한 첫 걸음을 도와드릴게요.
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
			<div class="page-section elements-page">
				<div class="elements-section">
					<div class="element">						
						<img src="resources/images/main/tree1.JPG" style="max-width:100%; height:auto">
						<img src="resources/images/main/tree2.JPG" style="max-width:100%; height:auto">	
						<img src="resources/images/main/tree3.JPG" style="max-width:100%; height:auto">						
						<div style="text-align: center;">
							<button class="site-btn sb-solid mr-3 mb-3" type="button" onclick="location.href='companyInfoView.do'">
								회사소개								
							</button>
							<button class="site-btn sb-solid mr-3 mb-3" type="button" onclick="location.href='serviceInfoView.do'">
								한걸음 가이드
							</button>
						</div>					
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
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
