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


</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
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
						<h2>회사소개</h2>
						<p>"한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약이다. (One small step for a man, one giant leap for mankind.)”<br>
							이 명언은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.  </p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts" style="padding-bottom: 80px;">
					<div class="blog-post-item">
						<div class="blog-thumb set-bg" data-setbg="../resources/img/hero/1.jpg" style="margin-bottom: 80px;">
						</div>
					</div>
					
					
					<div class="blog-post-item">
						<div class="blog-thumb set-bg" data-setbg="../resources/img/blog/1.jpg">

						</div>
						<div class="blog-content">
							<h2><a href="./single-blog.html">경영이념</a></h2>
							<br><br><br>
							<p> 바쁜 일상 속에서 의미 없이 지나가버리는 시간들...
								무언가를 시작해 보겠다고 다짐하지만 작심 3일이라는 말처럼 금방 잊히죠,
								목표 달성에 가장 필요한 것은 의지보다 반드시 해내야만 하는 환경이라는 결론을 얻었고,
								스스로 돈을 걸고 실천해나가는  ‘목표 달성 플랫폼 - 위대한 한 걸음’을 만들게 되었습니다..  </p>
						</div>
					</div>
					<div class="blog-post-item">
						<div class="blog-thumb set-bg" data-setbg="../resources/img/blog/3.jpg">
						
						</div>
						<div class="blog-content">
							<h2>회사비전 </h2>
							<br><br><br>
							<p> "변화와 혁신으로 새로운 가치를 추구하는" 위대한 한 걸음 프로젝트..
								목표를 달성하여 나무를 키워 변화하는 나무의 모습과 나의 모습을 보며 성취감과
								재미를 동시에 느끼고 돈까지 벌 수 있는 혁신적인 시스템을 통하여 국내에서 많은 유저의 유입과
								더 나아가 국내뿐만아닌 국제 챌린지를 목표로 나아가고 있습니다.<br><br>
							</p>
						</div>
					</div>
					<div class="blog-post-item">
						<div class="blog-thumb set-bg" style="height: 150px;">
							<div class="tab-element" style="text-align-last: center;">
								<ul class="nav nav-tabs" id="myTab" role="tablist" style="place-content: center;">
									<li class="nav-item">
										<a class="nav-link active" id="3-tab" href="serviceInfoView.do" role="tab" aria-controls="tab-3" aria-selected="true" style="width: 200px; height: 80px; padding-top: 28px; font-size: 15px;">
											한걸음 가이드
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link active" id="3-tab" href="guideInfoView.do" role="tab" aria-controls="tab-3" aria-selected="true" style="width: 200px; height: 80px; margin-left: 120px; padding-top: 28px; font-size: 15px;">
											나무 알아보기
										</a>
									</li>
								</ul>
							</div>
					</div>			
				</div>
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
	

	
	<!--====== Javascripts & Jquery ======-->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>