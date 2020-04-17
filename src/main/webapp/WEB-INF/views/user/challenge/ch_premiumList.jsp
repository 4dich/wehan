<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>CH_PREMIUMLIST</title>
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
    <link rel="stylesheet" href="resources/css/ch-list.css"/>
    <!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
    <!-- <link rel="stylesheet" href="resources/css/left_section.css"/> -->
    <link rel="stylesheet" href="resources/css/style.css"/>	

    <style>
        .textBox {
            width: 60%;
            height: 50%;
            background-color: white;
            opacity: 80%;
            position: absolute;
            bottom: 0;
            padding: 4% 11px 2% 15px;
        
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

		<%@ include file="/WEB-INF/views/common/menuBar.jsp"%>

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
            </div>            
            <div class="header-social">
                <a href="chalList.do">전체 챌린지</a>
                <a href="premiumList.do" style="color: red;">프리미엄 챌린지</a>
                <a href="getChallengeTop10List.do">TOP 10 챌린지</a>
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
                    <form class="searchPremiumChallenge" action="searchPremiumChallenge.do">
	                    <div class="challenges-search">
							<input type="text" name="searchPremiumChallenge" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 이름 검색">
	                        <a href="" class="site-btn2">
	                            <img src="resources/images/main/search.png" style="padding-left: 10px;" alt="">
	                        </a>
	                    </div>
                    </form>
                    
                    <br><br>
                    <!-- 서브메뉴 -->
                    <div class="about-info" style="margin-left: 50px;">
                        <p style="font-size: 15px;">
			                            나의 도전에 관한 <b>상세 내용</b>입니다.<br>
			                            이 도전을 위해 얼마를 투자했는지,<br>
			                            이 도전을 언제부터 시작했는지 등의<br> 
			                            모든 정보는 이 곳에서 확인가능합니다.
                        </p>
                        
                    </div>
                    <button class="site-btn sb-dark" style="margin-left: 40px; width: 280px; font-size: 15px;" type="button" onclick="location.href='registerPremiumChal.do'">
                        	챌린지 등록하기
                        <img src="resources/img/arrow-righ-3.png" alt="">
                    </button>
                    <br><br>
                
                    <!-- <ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul> -->
                
            </div>
        </div>
        <!-- Left Side section end -->

			<!-- Page start -->
			<div class="page-section contact-page">
				<div class="contact-section">
					<div class="row">
                        <div class="sampleArea">
                            <div id="ch_confirmPhotoListArea">
                                <div id="photoList">
                                	<c:forEach var="ch" items="${ list }">
                                    <a class="detailInList" id="test" style="cursor:pointer" onclick="getdetailInList(this);" name="${ ch.chId }">
                                    	<input type="hidden" id="hiddenDetailInList" name="hiddenDetailInList"/>
                                        <div class="photoBox">
											<img src="resources/images/challenge/${ ch.chPicture }" alt=""/>
                                            <div class="textBox">
                                             <h5>${ ch.chName }</h5>
                                                <br>
                                                <h5>${ ch.price }</h5>
                                                <h5 style="float: right;">${ ch.startDate }</h5>
                                            </div>
                                        </div>
                                    </a>
                                    </c:forEach>		
								</div>
                             </div>  
                                    <div class="qnaPaging" style="float: right; margin-right: 29px; margin-top: 20px;">
										<!-- [이전] -->
										<c:if test="${ pi.currentPage eq 1 }">
											&lt; &nbsp;
										</c:if>
										<c:if test="${ pi.currentPage ne 1 }">
											<c:url var="before" value="premiumList.do">
												<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
											</c:url>
											<a href="${ before }">&lt;</a> &nbsp;
										</c:if>
										
										<!-- 페이지 -->
										<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
											<c:if test="${ p eq pi.currentPage }">
												<b>${ p }</b> &nbsp;
											</c:if>
											
											<c:if test="${ p ne pi.currentPage }">
												<c:url var="pagination" value="premiumList.do">
													<c:param name="currentPage" value="${ p }"/>
												</c:url>
												<a href="${ pagination }">${ p }</a> &nbsp;
											</c:if>
										</c:forEach>
										
										<!-- [다음] -->
										<c:if test="${ pi.currentPage eq pi.maxPage }">
											>
										</c:if>
										<c:if test="${ pi.currentPage ne pi.maxPage }">
											<c:url var="after" value="premiumList.do">
												<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
											</c:url> 
											<a href="${ after }">></a>
										</c:if>				
									</div>
                                </div>
                            </div>
            <!-- Page end -->
            		</div>
            	</div>
            </div>
            <div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
            </div>
	
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
