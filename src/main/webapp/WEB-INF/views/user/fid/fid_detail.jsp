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
	<link rel="stylesheet" href="resources/css/bootstrap.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	

	<!-- 피드 상세보기 CSS -->
	<link rel="stylesheet" href="resources/css/fidDetail-sr.css"/>
	
	<!-- 회원전용 사이드바 CSS -->
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	
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
						<h2>FID</h2>
						<p>피드관련<br>
							인증사진이 한장씩 쌓여<br>
							당신의 위대한 내일이 됩니다.												
						</p>
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
			<div class="page-section elements-page">
				<div class="elements-section">
					<div class="col-md-12"> 
						<div class="col-md-10"> 
							<div class="card">								
								<!-- 피드 사용자 정보창 -->								
								<div class="card-header">										
									<ul class="chat-list">
										<li class="in">
											<div class="chat-img" style="width: 70px;">
												<img alt="Avtar" src="https://bootdey.com/images/Content/avatar/avatar1.png">
											</div>
											<div class="chat-body">
												<div style="margin-top: 15px;">
													<h4 style="color: white;">
														넹넨네 &nbsp;
														<a href="mypageProfile.html" style="color:white" class="fa fa-home"></a>
													</h4>
													<br>
													<h6 style="color: white;">
														주 3회 팩하기
														<span class="unread">자기개발</span>
													</h6>
													<p style="color: white;">2020-03-25</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
								
								<!-- 사진 나오는 곳 -->
								<div class="card-body profile-userpic" style="text-align: center;">
									<img src="resources/images/image.png" class="img-responsive" alt=""> 
								</div>

								<!-- 본문 나오는 곳 -->
								<div class="card-body">
									<span>
										안녕하세요.<br> 
										오늘의 팩하기 사진입니당!
									</span>
								</div>																	
							</div>
						</div> 
						
						<!-- 댓글 -->
						<div class="col-md-10"> 
							<div class="portlet light bordered">
								<div class="portlet-title tabbable-line"></div>
								<div class="portlet-body">
									<div>									
										<!-- 댓글 쓰기 -->
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="home" align="center">
												<form>
													<div class="form-group" style="text-align: right;">														
														<textarea class="form-control" id="inputChallenge" style="height:100px; resize:none;" placeholder="친구의 피드에 댓글을 남겨보세요!"></textarea>
														<button class="site-btn sb-dark" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															댓글 등록
														</button>
														<button class="site-btn sb-dark" type="button" onclick="location.href='fidFriend.html'" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															목록가기
														</button>
													</div>
												</form>
											</div>
										</div>

										<!-- 댓글 읽기 -->
										<div class="card" style="margin-bottom: 20px;">
											<div class="card-body">
												<div class="row">		
													<div class="be-comment-block">
														<h1 class="comments-title">Comments (1)</h1>
														
													</div>									
													<div class="media g-mb-30 media-comment">
														<img class="d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15" src="https://bootdey.com/images/Content/avatar/avatar7.png" alt="Image Description">
														<div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
															<div class="g-mb-15">
																<h5 class="h5 g-color-gray-dark-v1 mb-0">
																	하핳하
																	<a href="mypageProfile.html" style="color:black" class="fa fa-home"></a>
																</h5>
																<span class="g-color-gray-dark-v4 g-font-size-12">2020-03-26</span>
															</div>													
															<p>
																안녕하세요!
															</p>	
														</div>
													</div>
												</div>
											</div>
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
