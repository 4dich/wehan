<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	<link rel="stylesheet" href="resources/css/admin_noticeInsert.css"/>

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

		<c:import url="../common/ad_menuBar.jsp"/>
	
		
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
						<h2>공지사항</h2>
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
					<a href="admin_notice.html">
						<div class="arrowBack">
							<img src="../resources/img/arrow-righ-3.png" alt="">
						</div>
					</a><br>
					<h3 class="admin_noticehead">관리자 공지사항</h3>
					
					<div class="blog-post-item">

						<div class="qnaInfo">
							<div class="qnaInfoArea">

								<table class="detailArea">
									<tr class="qnaNumber">
										<td>번호</td>
										<td><input type="text" value="1" disabled></td>
									</tr>
									<tr class="qnaTitleArea">
										<td class="qnaTitle1">제목</td>
										<td class="qnaTitle2"><input type="text" placeholder="제목을 입력해주세요"></td>
									</tr>
									<tr class="qnaUserNameArea">
										<td class="qnaUserName1">유저명</td>
										<td class="qnaUserName2"><input type="text" value="관리자" disabled></td>
									</tr>
									<tr class="qnaDateArea">
										<td class="qnaDate1">등록날짜</td>
										<td class="qnaDate2"><input type="text" value="sysdate" disabled></td>
									</tr>
									<tr class="qnaTextBox">
										<td class="qnaTextArea"  colspan="2"> 
										<input class="textInput" type="text" placeholder="공지내용을 입력해주세요">
										</td>
									</tr>
									
									<tr class="replybuttonArea">
										<td class="buttonArea"  colspan="2">
											<div class="replyButton" id="replyBtn"><a>등록하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../resources/img/arrow-righ-3.png" alt=""></a></div>
											<div class="replyButton" id="deleteBtn"><a>삭제하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../resources/img/arrow-righ-3.png" alt=""></a></div>	
										</td>
									</tr>
								</table>


								
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

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
		});
	</script>
	
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