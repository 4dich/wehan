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
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>

	<!-- 부트스트랩 -->

	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<style>
		.container {
			margin-top: 5%;
			margin-left: 20%;
			margin-right: 30%;
			width: 50%;
			border: 1px solid #dddddd;
		}

		.login{
			width:85%;
			height: 30px;
			font-size: 20px;
			border-left-width:0;
			border-right-width:0;
			border-top-width:0;
			border-bottom-width:1;
		}
		
		.btn{
			width :200px;
		}
	</style>	
</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
		<div class="site-menu-warp">
			<div class="close-menu">x</div>
			<!-- Main menu -->
			<ul class="site-menu">
				<!-- <li><a href="index.html" class="active">Home</a></li> -->
				<!-- <li><a href="portfolio.html">Message</a></li> -->
				<li><a href="ch-list.html">Challenge</a></li>
				<li><a href="fidRecommend.html">Fid</a></li>
				<li><a href="mypageProfile.html">My Page</a></li>
				<li><a href="qna.html">고객센터</a></li>
			 </ul>
			 <div class="menu-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
				<a href=""><i class="fa fa-behance"></i></a> -->
				<!-- <a href="#" class="site-btn">login</a> -->
	
				<a href="index.html" class="menuIcon">
				   <img src="resources/img/main/home.png" alt=""></a>
				<a href="message_followerlist.html" class="menuIcon">
				   <img src="resources/img/main/message.png" alt=""><div>1</div></a>
				<a href="login.html" class="menuIcon">
				   <img src="resources/img/main/login.png" alt=""></a>
			 </div>
		</div>
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		
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
					<div class="about-info">
						<h2>회사소개</h2>
                        <!-- 감성글 작성 -->
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
            

            <!-- page end Main section end 사이에 그대로 붙여넣어-->
            <!-- 카피라이트 -->
            <!-- Page end -->
            
            
            <!-- Main section end -->
			<div class="page-section">
				<div class="hero-section">
					<div class="hero-track">
						<div class="container" >
							<form action="login.do">
								<br><br>
								<h2 style="color: #bd362f; margin-left: 43px;">생각말고</h2>
								<h2 style="color: black; margin-left: 43px;">실천하자</h2><br>
								<h2 style="color:#bd362f; margin-left: 400px;">Challenge</h2><br>
								<br><br>
								<div align="center">
									<input type="text" class="login" name="userId" placeholder="아이디 입력"><br><br>
									<input type="password" class="login" name="password" placeholder="패스워드 입력"><br>
								</div>								
								<br><br><br>								
								
								<div class="row" style="margin-left: 48px;">
									<div>
										<a href="find.html" style="color: black;">아이디 찾기/비밀번호 찾기</a>
									</div>									
								</div>
								<br><br><br>
								<div class="row">
									<div>
										<b><a href="pAgree.html" style="color: #bd362f; font-size: 20px; margin-left: 65px;">회원가입</a></b>
										<input type="submit" class="btn btn-danger" style=" margin-left:290px; width:150px" value="로그인">
									</div>
								</div>
								<br><br>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
				All rights reserved </p></div>
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
