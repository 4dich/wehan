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

	<!-- 메시지 CSS -->
	<link rel="stylesheet" href="resources/css/message-sr.css"/>

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
		
		<c:import url="/WEB-INF/views/common/menuBar.jsp"/>

		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<a href="my_profileView.do" >Profile</a>
                <a href="my_challengeView.do">My Challenge</a>
				<a href="my_diaryView.do">My Diary</a>
				<a href="msg_msgListView.do" style="color: red;">Message</a>
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
					<!-- 서브 메뉴 -->
					<div class="about-info">
						<h2>친구 목록</h2>
						<p>
							친구와 대화를 나눠보세요.<br>
							함께 도전하면 성공할 확률도 올라갑니다. <br><br>
						</p>
						<a class="site-btn sb-dark" href="msg_msgListView.do" style="color:black">
							메시지 목록
							<img src="resources/images/arrow-righ-3.png" alt="">
						</a>
					</div>
					<!-- <ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul> -->
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section elements-page">
				<div class="elements-section">
					<div class="container">
						<div class="row">
							<div class="col-md-10">

						<!-- 검색창 -->
						<div class="s130">
							<form style="padding-top:0vh">
							  <div class="inner-form" style="height: 50px;">
								<div class="input-field first-wrap">
								  <div class="svg-wrapper">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
									  <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
									</svg>
								  </div>
								  <input id="search" type="text" placeholder="친구를 검색하세요">
								</div>
								<div class="input-field second-wrap" style="min-width:100px">
								  <button class="btn-search" type="button" style="background-color: black;">SEARCH</button>
								</div>
							  </div>
							</form>
						  </div>

							<div class="chat_container">
								<div class="job-box">
									<div class="inbox-message">
										<ul>
										
											<c:forEach var="f" items="${ friendList }">
											<li>
												<div class="message-avatar">
													<img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
												</div>
												<div class="message-body">
													<div class="message-body-heading">
														
														<h5>${ f.msgFriendName } <span class="pending">${ f.msgFriendCategory }</span></h5>
														<span>
															<button class="site-btn" onclick="location.href='message_msgroom.html'" style="background-color: white; padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; ">
																메시지 보내기
															</button>
															<button class="site-btn" onclick="location.href='mypageProfile.html'" style="background-color: white; padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; ">
																피드 가기
															</button>
														</span>
													</div>
													<p>팔로잉 : ${f.msgFollowingNum}명 / 팔로워 ${f.msgFollowerNum}명</p>
												</div>												
											</li>
											</c:forEach>											
										</ul>
									</div>
								</div>
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
