<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>CH_TOP10LIST</title>
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
	<link rel="stylesheet" href="resources/css/jh-css.css"/>
	<!-- <link rel="stylesheet" h="../resources/css/left_section.css"/> -->
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>

	<!-- 스타일 -->
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

        .topAllImages {
            width: 99.5%;
            height: 240px;
            position: relative;
            display: inline-block;
        }

        .topImgWrap {
            position: absolute;
            top: 0;
        }

        .topAllCovers {
            margin-top: 1px;
            width: 99.9%;
            height: 235px;
            background-color: white;
            opacity: 50%;
            position: absolute;
            top: 0;
        }

        .top1Package {
            width: 347.3px;
            height: 300px;
            border: 2.5px solid black;
            margin-left: 50px;
            margin-top: 10px;
            margin-bottom: 20px;
            display: inline-flex;
        }

        .top1Line {
            width: 343px;
            height: 60px;
            border: 2px solid black;
            border-top: none;
            border-left: none;
            border-right: none;
            font-size: 38px;
            color: black;
            padding-left: 20px;
        }

        .top1ChalName {
            margin-top: 10px;
            width: 345px;
            height: 60px;
            font-size: 23px;
            color: black;
            text-align: center;
            z-index: 1000px;
        }

        .top1UserId {
            margin-top: 10px;
            width: 345px;
            height: 50px;
            font-size: 20px;
            color: black;
            text-align: center;
        }

        .top1Deadline {
            margin-top: 20px;
            width: 345px;
            height: 40px;
            font-size: 18px;
            padding-right: 15px;
            color: black;
            text-align: right;
        }

        .top1People {
            width: 345px;
            height: 40px;
            font-size: 18px;
            padding-right: 15px;
            color: black;
            text-align: right;
        }

        .top3Package {
            width: 347.3px;
            height: 300px;
            border: 2px solid gray;
            margin-left: 50px;
            margin-top: 10px;
            margin-bottom: 20px;
            display: inline-flex;
        }

        .top3Line {
            width: 345px;
            height: 60px;
            border: 1px solid gray;
            border-top: none;
            border-left: none;
            border-right: none;
            font-size: 40px;
            color: gray;
            padding-left: 20px;
        }

        .top3ChalName {
            margin-top: 10px;
            width: 345px;
            height: 60px;
            font-size: 23px;
            color: gray;
            text-align: center;
        }

        .top3UserId {
            margin-top: 10px;
            width: 345px;
            height: 50px;
            font-size: 20px;
            color: gray;
            text-align: center;
        }

        .top3Deadline {
            margin-top: 20px;
            width: 345px;
            height: 40px;
            font-size: 18px;
            padding-right: 15px;
            color: gray;
            text-align: right;
        }

        .top3People {
            width: 345px;
            height: 40px;
            font-size: 18px;
            padding-right: 15px;
            color: gray;
            text-align: right;
        }

        .top10Line {
            width: 1150px;
            height: 60px;
            border: 1px solid lightgray;
            margin-left: 50px;
            margin-bottom: 10px;
        }

        .top10Wrap {
            display: inline-flex;
        }

        .top10Number {
            width: 90px;
            height: 60px;
            padding: 16px 0 16px 18px;
            text-align: center;
        }

        .top10ChalName {
            width: 380px;
            height: 60px;
            padding: 16px 18px 16px 0;
            text-align: center;
        }

        .top10Divide {
            font-size: 40px;
            font-weight: lighter;
            color: #d3d3d3;
        }

        .top10UserId {
            width: 150px;
            height: 60px;
            padding: 16px 0 16px 0;
            text-align: center;
        }

        .top10Deadline {
            width: 150px;
            height: 60px;
            padding: 16px 0 16px 0;
            text-align: center;
        }

        .top10People {
            width: 180px;
            height: 60px;
            padding: 16px 0 16px 18px;
            text-align: center;
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

		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
                <a href="chalList.do" >전체 챌린지</a>
                <a href="premiumcondition.do">프리미엄 챌린지</a>
                <a href="chalTop10List.do" style="color: red;">TOP 10 챌린지</a>
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
					<!-- 챌린지 검색 -->
					<form class="searchChallenge">
	                    <div class="challenges-search">
							<input type="text" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 이름 검색">
	                        <a href="" class="site-btn2">
	                            <img src="resources/images/main/search.png" style="padding-left: 10px;" alt="">
	                        </a>
	                    </div>
                    </form>
                    <br><br>
				<!-- 서브메뉴 -->
                <div class="about-info" style="margin-left: 50px;">
					<p style="font-size: 15px;">
						나를 위한 새로운 도전을 만들 수 있어요.<br>
						나와 같은 생각을 가진 사람들과<br>
						또 내 의지를 붙잡아 줄 수 있는 사람들과<br> 
						<b>함께하는 도전</b>, 여기서 가능합니다.  
					</p>
				</div>
				<button class="site-btn sb-dark" style="margin-left: 40px; width: 280px; font-size: 15px;" type="button" onclick="location.href='ch_registerView.do'">
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
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<div class="sampleArea">
							
							<c:forEach var="list" items="${ list }">
							
								<!-- TOP3 -->
								<c:if test= "${ list.ranking lt 4 }">
									<a href='hiddenDetailInList.do?chId=${list.chId}'>
										 <div class="top1Package">
			                                <div class="top1Wrap">
			                                    <div class="top1Line">#TOP ${ list.ranking }</div>
			                                    <div class="topAllImages">
			                                        <img src="resources/images/challenge/${ list.chPicture }" style="width: 100%; height: 98%;" alt="">
			                                        <div>
			                                            <div class="topAllCovers"></div>
			                                        </div>
			                                        <div class="topImgWrap">
			                                            <div class="top1ChalName" style="color:#2c0083">
			                                            	<input type="hidden" value="${list.chId}"/>
			                                            	<br><strong>${ list.chTitle }</strong>
			                                            </div>
			                                            <div class="top1UserId">
			                                            	<input type="hidden" value="${list.userId}"/>
			                                            	${list.userName }
			                                            </div>
			                                            <div class="top1Deadline"> ${list.endDate} 까지</div>
			                                            <div class="top1People">${list.chPeopleCount} 명</div>
			                                        </div>
			                                    </div> 
			                                </div>    
			                            </div>
		                            </a>
								</c:if>
								
								<!-- 4위 이하 -->
								<c:if test= "${ list.ranking gt 3 }">
									<a href='hiddenDetailInList.do?chId=${list.chId}' style="color:black">
										<div class="top10Line">
			                                <div class="top10Wrap">
			                                    <div class="top10Number">Top ${list.ranking}</div>
			                                    <span class="top10Divide">ㅣ</span>
			                                    <div class="top10ChalName">
			                                    	<input type="hidden" value="${list.chId}"/>
			                                    	<strong>${ list.chTitle }</strong>
			                                    </div>
			                                    <span class="top10Divide">ㅣ</span>
			                                    <div class="top10UserId">
			                                   		<input type="hidden" value="${list.userId}"/>
			                                        ${list.userName }
			                                    </div>
			                                    <span class="top10Divide">ㅣ</span>
			                                    <div class="top10Deadline"> ${list.endDate} 까지</div>
			                                    <span class="top10Divide">ㅣ</span>
			                                    <div class="top10People">참여 인원 : ${list.chPeopleCount} 명</div>
			                                </div>
			                            </div>
		                            </a>								
								</c:if>
							</c:forEach>
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
