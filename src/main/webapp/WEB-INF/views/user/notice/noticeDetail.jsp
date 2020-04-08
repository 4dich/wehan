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
		<link rel="stylesheet" href="resources/css/noticeDetail.css"/>
		<!-- <link rel="stylesheet" href="../resources/css/left_section.css"/> -->
		<link rel="stylesheet" href="resources/css/style.css"/>
	
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
			
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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
				<a href="noticeView.do" style="color: red;">공지사항</a>
                <a href="qnaView.do">문의사항</a>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			<!-- 로고 구역 -->
			<div class="mb-warp">
				<a href="indexView.do" class="site-logo">
					<h2 style="margin-left: 6px;">위대한 한걸음</h2>
					<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
				</a>
			<!-- 서브메뉴 -->
			<div class="about-info">
				<h2>공지사항</h2>
				<!-- 감성글 작성 -->
				<p>
					당신과 당신의 친구를 위한 공지사항입니다.<br>
					당신의 위대한 한걸음을 위해 지켜주세요.<br>
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
			<div class="page-section blog-page">
				<div class="blog-posts">
					<div class="arrowBack">
						<a href="noticeList.do">
							<img src="resources/images/arrow-righ-3.png" alt="">
						</a>
					</div>
					<br>
					<div class="blog-post-item">

						<div class="qnaInfo">
							<div class="qnaInfoArea">

								<table class="detailArea">
									<tr class="qnaNumber">
										<td>번호</td>
										<td>${n.nId}</td>
									</tr>
									<tr class="qnaTitleArea">
										<td class="qnaTitle1">제목</td>
										<td class="qnaTitle2">${n.nTitle}</td>
									</tr>
									<tr class="qnaUserNameArea">
										<td class="qnaUserName1">작성자명</td>
										<td class="qnaUserName2">${n.nWriter}</td>
									</tr>
									<tr class="qnaDateArea">
										<td class="qnaDate1">등록날짜</td>
										<td class="qnaDate2">${n.nDate}</td>
									</tr>
									<tr class="qnaTextBox">
										<td class="noticeTextArea" colspan="2" style="height:500px; text-align:-webkit-auto;"> 
											<div style="white-space:pre; width:100%; height:100%; padding:5%;">${n.nContent}</div>
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
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
		</div>
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
