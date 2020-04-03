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
	<link href="../resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="../resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="../resources/css/style.css"/>

	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		<style>
			tbody  td {padding:20px; padding-bottom: 0;}
			tbody  th {padding:10px;}
			#prof{margin-left: 105px; text-align: center; margin-top: 20px; font-size: 18px;}
			p{margin :0}
		
		</style>


</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
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
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
					<form action="dk.do">
					<h3>회원가입</h3>
					<div class="row" style="margin-left: 30px; height: 400px;">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<div style="margin-top: 50px; margin-right: 20px;">
                            <div class="ch-register-pic"></div>
                            <button class="site-btn" style="margin-top: 30px; margin-left: 100px; height: 300px; width: 280px; font-size: 15px;"> 프로필 사진 (300x280)</button>				
							<br><br><button style="margin-left: 50%;">프로필수정</button>
						</div>
                        <div class="col-xl-6" style="margin-left: 20px;">
							<div class="contact-text-warp">
								<div class="contact-form" style="margin-top: 60px;">
									<div class="row">	
                                        <div class="col-lg-12">
                                            <input name="userId" type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="아이디">
                                        </div>
										<div class="col-lg-12">
                                            <input name="password" type="password" style="border-top: none; border-left: none; border-right: none;" placeholder="비밀번호">
                                        </div>
                                        <div class="col-lg-12">
                                            <input name="password2" type="password" style="border-top: none; border-left: none; border-right: none;" placeholder="비밀번호확인">
                                        </div>
                                        <div class="col-lg-12">
                                            <input name="userName" type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="이름">
                                        </div>
										<div class="col-lg-12">
                                            <input name="nickName"type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="닉네임">
                                        </div>
										<div class="col-lg-12">
                                            <input name="email" type="email" style="border-top: none; border-left: none; border-right: none;" placeholder="이메일">
                                        </div>
									</div>
								</div>
							</div>
						</div>
						
							<div class="col-lg-4">
								<input name="bankName" type="text" style="height: 46px; font-size:14px; font-style:italic; border: 2px solid #e1e1e1; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="은행명">
							</div>
							<div class="col-lg-4">
								<input name="accountHolder" type="text" style="height: 46px; font-size:14px; font-style:italic; border: 2px solid #e1e1e1; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="예금주">
							</div>
							<div class="col-lg-4">
								<input name="accountNumber"type="text" style="height: 46px; font-size:14px; font-style:italic; border: 2px solid #e1e1e1; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="계좌번호">
							</div>
						 
							<div class="col-lg-8" style="margin-top: 50px;">
								<input name="address" type="text" style="height: 46px; font-size:14px; font-style:italic; border: 2px solid #e1e1e1; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 83%;" placeholder="주소"><button style="margin-left: 10px;">주소검색</button>
							</div>
							<div class="col-lg-4" style="margin-top: 50px;">
								<input name="phone" type="text" style="height: 46px; font-size:14px; font-style:italic; border: 2px solid #e1e1e1; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="전화번호">
							</div>
						<div style="margin-top: 50px;">
							<button type="submit" class="site-btn" style="width:20%; height: 80px; margin: 20px; margin-left: 300px;" >
								회원가입
							</button>	
							<button type="button" class="site-btn" style="width:20%; height: 80px;" onclick="location.href='login.html'">
								취소하기
							</button>
						</div>
					</div>
				</form>
				</div>
			</div>
			<!-- Page end -->
			<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
				All rights reserved </p></div>
			</div>
		</div>
	
	<!-- Main section end -->
	
	
	<!--====== Javascripts & Jquery ======-->
	
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.nicescroll.min.js"></script>
	<script src="../resources/js/circle-progress.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/main.js"></script>

	</body>
</html>
