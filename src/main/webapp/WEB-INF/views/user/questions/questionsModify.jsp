<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>WEHAN - 위대한 한걸음</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="resources/images/sitelogo.png" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="resources/css/admin_noticeInsert.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<link rel="stylesheet" href="resources/css/padding.css"/>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<style>
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
		a{text-decoration: none;}
	</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">

		<%-- <c:import url="/WEB-INF/views/common/ad_menuBar.jsp"/> --%>
	
		
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
                <a href="indexView.do" class="site-logo">
                    <h2 style="margin-left: 6px;">위대한 한걸음</h2>
                    <p style="padding-top: 15px;">THE GREAT ONE STEP</p>
                </a>

					<div class="about-info">
						<h2>문의사항</h2>
						<a href="ad_payListView.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="ad_profileListView.do" id="ad_profile" class="infoMenu">회원정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="ad_qnaListView.do" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts" style="overflow: hidden;outline: none;position: relative;">
				
					<div class="arrowBack">
						
					</div>
					<h3 class="user_questionshead">문의사항</h3>
					<br><br>
					
					<div class="blog-post-item">

						<div class="questionsInfo">
							<div class="questionsInfoArea">
								
								<form action="questionsModify.do" method="post">
									<table class="detailArea">
										<tr class="questionsTitleArea">
											<td class="questionsTitle1">제목</td>
											<td class="questionsTitle2">
												<input type="text" name="qTitle" value="${q.qTitle }">
												<input type="hidden" name="qId" value="${q.qId}">
											</td>
										</tr>
										<tr class="questionsUserNameArea">
											<td class="questionsUserName1">작성자</td>
											<td class="questionsUserName2">
												<input type="text" name="qUserid" value="${q.qUserid}" disabled>
											</td>
										</tr>
										<tr class="questionsTextBox">
											<td class="questionsTextArea"  colspan="2" style="height:500px; text-align:-webkit-auto;"> 
												<textarea name="qContent" style="width:100%; height:100%; padding:5%; resize:none">${q.qContent}</textarea>
											</td>
										</tr>
										
										<tr class="replybuttonArea">
											<td class="buttonArea"  colspan="2">												
												<input type="submit" class="site-btn" style="background-color: white; padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; width:120px;border: 2px solid #e1e1e1;" value="수정하기">
												<button class="site-btn" type="button" onclick="location.href='qnaListView.do'" style="background-color: white; padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px;">
													목록가기
												</button>
											</td>
										</tr>
									</table>
								</form>
							</div>							
						</div>
						
					</div>
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
