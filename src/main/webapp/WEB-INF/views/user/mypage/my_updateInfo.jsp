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
	<link href="resources/images/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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
			<!-- Page start -->
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
					<form action="my_updateInfo.do" method="post">
					<h3>회원정보 - 회원정보수정</h3>
					<div class="row" style="margin-left: 30px; height: 400px;">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<div style="margin-top: 50px; margin-right: 20px;">
                            <div class="ch-register-pic"></div>
                            <!-- <button class="site-btn" style="border: 2px solid #242424; margin-top: 30px; margin-left: 100px; height: 300px; width: 280px; font-size: 15px;"> 프로필 사진 (300x280)</button> -->
                            <img class="profile" src="resources/images/user/${ loginUser.picture }" style="width:300px;height:300px; object-fit:contain; border:1px solid #242424;">
							<input type="text" name="picture" style="display:none" value="${ loginUser.picture }">
							<br><br><button style="margin-left: 50%;">프로필수정</button>
						</div>
                        <div class="col-xl-6" style="margin-left: 20px;">
							<div class="contact-text-warp">
								<div class="contact-form" style="margin-top: 60px;">
									<div class="row">	
                                        <div class="col-lg-12">
                                            <input type="text" name="userId" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="아이디" value="${ loginUser.userId }">
                                        </div>
										<div class="col-lg-12">
                                            <input type="password" name="password" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="비밀번호" value="${ loginUser.password }">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="password" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="비밀번호확인" value="${ loginUser.password }">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" name="userName" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="이름" value="${ loginUser.userName }">
                                        </div>
										<div class="col-lg-12">
                                            <input type="text" name="nickName" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="닉네임" value="${ loginUser.nickName }">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" name="birthDay" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="생년월일" value="${ loginUser.birthDay }">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" name="email" style="border: 1px solid #242424; border-top: none; border-left: none; border-right: none;" placeholder="이메일" value="${ loginUser.email }">
                                        </div>
									</div>
								</div>
							</div>
						</div>
						
						
							<div id="account" style="display:none">${ loginUser.account }</div>
						
							<div class="col-lg-4">
								<input type="text" class="account" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #242424; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="은행명">
							</div>
							<div class="col-lg-4">
								<input type="text" class="account" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #242424; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="예금주">
							</div>
							<div class="col-lg-4">
								<input type="text" class="account" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #242424; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="계좌번호">
							</div>
							
							<input type="text" class="account" name="account" style="display:none">
							
							<script>
								var account = $("#account")[0].innerHTML;
								var acSplit = account.split(',');
								
								$('.account')[0].value = acSplit[0];
								$('.account')[1].value = acSplit[1];
								$('.account')[2].value = acSplit[2];
							</script>
							
							<script>
								var accountMod = $('.account')[0].value + "," + $('.account')[1].value + "," + $('.account')[2].value;
								
								$(".account")[3].value = accountMod;
							</script>
							
							
						 
							<div class="col-lg-8" style="margin-top: 50px;">
								<input type="text" name="address" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #242424; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 83%;" placeholder="주소" value="${ loginUser.address }"><button style="margin-left: 10px;">주소검색</button>
							</div>
							<div class="col-lg-4" style="margin-top: 50px;">
								<input type="text" name="phone" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #242424; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="전화번호" value="${ loginUser.phone }">
							</div>
						<div style="margin-top: 50px;">
							<button type="submit" class="site-btn" style="width:20%; height: 80px; margin: 20px; margin-left: 300px;">
								정보수정
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
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
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
