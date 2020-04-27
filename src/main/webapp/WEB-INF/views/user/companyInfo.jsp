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
	<link rel="stylesheet" href="resources/css/font.css"/>

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
						<h2 style="margin-left: 72px;">회사 소개</h2><br>
						<p>&nbsp;&nbsp;큰 목적만 세우고 이루지 못하는 때가 많으신가요?<br>
							&nbsp;&nbsp;큰 목적에만 너무 마음쓰지 마세요.<br>
							&nbsp;&nbsp;당신은 작은 목적을 가져도 아름다운 사람이니까요.<br>
							&nbsp;&nbsp;당신을 따뜻하게 해 줄 새로운 해가 떠오를 거에요.<br>
							&nbsp;&nbsp;그 때까지 작은 목적도 완수할 수 있는 달이 되어 드릴게요.
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
			<div class="page-section blog-page">
				<div class="blog-posts" style="padding-bottom: 80px;">
					<div class="blog-post-item">
						<div class="blog-thumb set-bg" data-setbg="resources/images/goal.png">
						</div>
						<div class="blog-content">
							<h2><a href="./single-blog.html">경영 이념</a></h2>
							<br>
							<p style="font-weight: bold">
								현대 사회에서 대부분의 사람들은 바쁜 일과, 업무에 치여 그저 바쁘게만 아무 의미없이 시간을 보내곤 합니다.<br>
								새해와 같이 특별한 날이 되거나 문득 무언가를 실천해 보겠다고, 시작해 보겠다고 다짐하지만 작심 3일이라는 말처럼 금방 잊히고 무너지죠.<br>
								우리는 생각했습니다. 목표 달성에 가장 필요한 것은 의지보다도 할 수 있는, 반드시 해내야만 하는 환경이 제일 중요한 것이라고.<br>
								돈은 정말 좋습니다. 그렇기 때문에 잃는다고 생각하면 아찔합니다.<br> 
								스스로 나의 소중한 돈을 걸고 목표를 위해 하나하나 실천해 가는  ‘목표 달성 플랫폼 - 위대한 한 걸음'.<br>
								우리가 만들었습니다. 함께 하시죠 !
							</p>
						</div>
					</div>
					<div class="blog-post-item"><br><br>
						<div class="blog-thumb set-bg" data-setbg="resources/images/goal2.jpg">
						
						</div><
						<div class="blog-content">
							<h2>회사 비전</h2>
							<br>
							<p style="font-weight: bold"> 
								"작은 변화"로 새로운 가치를 추구하는 우리의 "위대한 한 걸음" 프로젝트<br>
								목표를 달성하여 점점 발전하는 자기 자신과 그와 더불어 함께 자라는 나만의 나무 모습을 확인할 수 있습니다.<br>
								그 모습을 보며 성취감과 재미를 동시에 느끼고 돈까지 벌 수 있는 혁신적인 시스템을 통해 많은 사람들에게 동기를 부여하고 싶었습니다.<br>
								또한 같은 목표를 가진 사람들이 함께 모여, 만남의 장을 이루고 같이 발전해 나가는 모습을 보면서<br>
								쳇바퀴처럼 돌아가는 바쁜 일상에 안주하지 말고 자기 자신을, 나와 같은 환경의 여러 나라 사람들을<br>
								함께 어우를 수 있는 회사가 되기 위해 나아가고 있습니다.
							</p>
						</div>
					</div>
					<div class="blog-post-item">
						<div class="blog-thumb set-bg" style="height: 150px;">
							<div class="tab-element" style="text-align-last: center;">
								<ul class="nav nav-tabs" id="myTab" role="tablist" style="place-content: center;">
									<div style="text-align: center;">
										<button class="site-btn sb-solid mr-3 mb-3" type="button" onclick="location.href='serviceInfoView.do'">
											한걸음 가이드							
										</button>
										<button class="site-btn sb-solid mr-3 mb-3" type="button" onclick="location.href='guideInfoView.do'">
											나무 알아보기
										</button>
									</div>	
								</ul>
							</div>
					</div>			
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