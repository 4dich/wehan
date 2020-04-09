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
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
		<style>
			tbody  td {padding:20px; padding-bottom: 0;}
			tbody  th {padding:10px;}
			#prof{margin-left: 105px; text-align: center; margin-top: 20px; font-size: 18px;}
			p{margin :0}
            .infoMenu{font-size: 16px;}
            input:disabled{
            background-color:white;
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

				<%@ include file="/WEB-INF/views/common/ad_menuBar.jsp" %>
			
				
				<header class="header-section">
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</header>
				<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<!-- 로고구역 -->		
				<div class="mb-warp">
					<a href="../homepage/index.html" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>

					<!-- 관리자 사이드 메뉴 -->
					<div class="about-info">
						<h2>결제정보</h2>
						<a href="adminProfile.html" id="ad_profile" class="infoMenu">회원정보</a><br><br>
						<a href="ad-chal.html" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad-cert.html" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="admin_notice.html" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="admin_qna.html" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
					<form action="dk.do">
					<h3>관리자 - 결제정보상세</h3>
					<div class="row" style="margin-left: 30px; height: 400px;">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<div style="margin-top: 50px; margin-right: 20px;">
                            <div class="ch-register-pic"></div>
                            <button class="site-btn" style="margin-top: 30px; margin-left: 100px; height: 300px; width: 280px; font-size: 15px;"> 프로필 사진 (300x280)</button>				
							<div id="prof">
							<p>카테고리 > 세부카테고리</p>
							<p style="font-size: 14px; margin-top: 10px;"><b>${ch.chName}</b></p>
							
							</div>
						</div>
						
                        <div class="col-xl-6" style="margin-left: 20px;">
							<div class="contact-text-warp">
								<div class="contact-form" style="margin-top: 60px;">
									<div class="row">	
                                        <div class="col-lg-12">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.userId}" disabled>
                                        </div>
										<div class="col-lg-12">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${ p.mList[0].userName}" disabled>
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="select" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.price} (원 )" disabled>
                                        </div>  
                                        <div class="col-lg-12">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.pmethod}" disabled>
                                        </div>                                
										<div class="col-lg-12">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="결제완료" disabled>
                                        </div>
									</div>
								</div>
							</div>
						</div>
						<div>
						<br><br>
							<button type="submit" class="site-btn" style="width:20%; height: 80px; margin: 20px; margin-left: 300px;">
								환불하기
							<button class="site-btn" style="width:20%; height: 80px;" onclick="location.href='serviceInfo.html'">
								취소하기
							</button>
					</div>
					</div>
				</form>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
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
