<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
	<link rel="stylesheet" href="resources/css/qnaDetail.css"/>
	<!-- <link rel="stylesheet" href="resources/css/left_section.css"/> -->
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
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
                <a href="notice.html">공지사항</a>
                <a href="qna.html" style="color: red;">문의사항</a>
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
				<h2>문의사항</h2>
				<!-- 감성글 작성 -->
				<p>위대한 한걸음에 궁금증이 생기신다면 <br>
				언제든지 문의해주세요! </p>
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
						<a href="questionsList.do">
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
										<td>${q.qId}</td>
									</tr>
									<tr class="qnaTitleArea">
										<td class="qnaTitle1">제목</td>
										<td class="qnaTitle2">${q.qTitle}</td>
									</tr>
									<tr class="qnaUserNameArea">
										<td class="qnaUserName1">작성자명</td>
										<td class="qnaUserName2">${q.qUserid}</td>
									</tr>
									<tr class="qnaDateArea">
										<td class="qnaDate1">등록날짜</td>
										<td class="qnaDate2">${q.qDate}</td>
									</tr>
									<tr class="qnaTextBox">
										<td class="qnaTextArea"  colspan="2"> 
										${q.qContent}
										</td>
									</tr>						
										
										<c:if test="${'user' eq q.qUserid }">
										<tr class="replybuttonArea">
											<c:url var="qModifyView" value="questionsModifyView.do">
												<c:param name="qId" value="${ q.qId }" />
												<c:param name="currentPage" value="${currentPage}" />
											</c:url>
											<c:url var="qDelete" value="questionsDelete.do">
												<c:param name="qId" value="${ q.qId }" />
												<c:param name="currentPage" value="${currentPage}" />
											</c:url>										
											<td class="buttonArea"  colspan="2">
												<a class="site-btn" href="${qModifyView}" style="background-color: white; padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px;">
													수정하기
												</a>
												<a class="site-btn" href="${qDelete}" style="background-color: white; padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px;">
													삭제하기
												</a>
											</td>
										</tr>
									</c:if>	
									
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
