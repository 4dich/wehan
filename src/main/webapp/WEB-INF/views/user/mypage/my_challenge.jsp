<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>위대한 한걸음</title>
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
	
    <style>

	.main-down::-webkit-scrollbar{
		height: 10px;
	}

	.main-up::-webkit-scrollbar {
		width: 10px;
	}
	.main-up::-webkit-scrollbar-thumb, .main-down::-webkit-scrollbar-thumb {
		background-color: #242424;
	}
	.main-up::-webkit-scrollbar-track, .main-down::-webkit-scrollbar-track {
		background-color: grey;
	}

    .profile-img {
        width: 150px;
        height: 150px; 
        border-radius: 70%;
        overflow: hidden;

        background: #BDBDBD; 
        margin-left: 30%;
        margin-bottom: 20px;
    }

    .profile-text{
        margin-bottom: 20px;
    }

    .profile-aboutme{
        border: 2px solid #efefef;
        margin-bottom: 20px;
        padding: 0.5%;
    }

    .profile-follow{
        text-align: center;
        margin-left: 10%;
    }
    .site-logo {
        display: block;
        margin-bottom: 40px;
    }

    .main-sidebar .mb-warp {
        padding: 90px 95px 100px 145px;
    }
    
    .grade{
        float:left;
        margin-right: 70px;
    }
    
    .follow{
        float:left;
    }
    
    .following{
        float:none;
    }

    .menuIcon{
    background: white;
    border-radius: 20%;
    position: relative;
    }
    .menuIcon:hover{
        box-shadow: 0px 0px 0px 2px #b5b5b5;
    }
    .menuIcon img{
        width: 30px;
        height: 30px;
    }

    .menuIcon div{
        position: absolute;
        background: red;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        text-align: center;
        line-height: 1.3;
        font-size: 15px;
        font-weight: bold;
        top: -10px;
        right: -10px;
	}
	
	.circle-progress h2 span {
		font-size: 40px;
		position: relative;
		display: none;
		/* top: -30px; */
	}
    </style>
</head>
<body>
	<!-- Page Preloder -->
	<!-- <div id="preloder">
		<div class="loader"></div>
	</div> -->

	<!-- Main section start -->
	<div class="main-site-warp">
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
        <!-- 메뉴 끝 -->
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
                <a href="my_profileView.do">Profile</a>
                <a href="my_challengeView.do" style="color: red;">My Challenge</a>
                <a href="my_diaryView.do">My Diary</a>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp" style="text-align: center;">

                    <a href="index.html" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>

					<div class="challenge-tree" style="width: 300px; margin:auto">
						<img src="resources/images/tree.jpg">
					</div>
					<div class="challenge-exp" style="margin:auto">
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%">
							  90%
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section portfolio-page">
				<div class="portfolio-section">
					<div class="main-up" style="height: 260px; width: 1200px; padding:3%; margin:20px; white-space:nowrap; overflow:hidden;">
						<ul style="list-style: none; padding-left:0px">
						<li style="display: inline-block;">
							<div style="height:180px; width:355px; background: white; border:2px solid #242424; margin-right:25px; text-align:center; padding: 25px;">
								<div class="circle-item-warp">
									<div class="circle-progress-text">
										<p>챌린지 달성률</p>
									</div>
									<div class="circle-progress" data-cptitle="Passion" data-cpid="id-1" data-cpvalue="95" data-cpcolor="#242424" style="display: inline-block;"></div>
									<div style="display: inline-block; font-size: 30px; margin-left: 20px;">%</div>
								</div>
							</div>
						</li>
						<li style="display: inline-block;">
							<div style="height:180px; width:355px; background: white; border:2px solid #242424; margin-right:25px; text-align:center; padding: 25px;" >
								<div class="circle-item-warp">
									<div class="circle-progress-text"> 
										<p>챌린지 달성수</p>
									</div>
									
									<div class="circle-progress" data-cptitle="Passion" data-cpid="id-2" data-cpvalue="105" data-cpcolor="#242424";"></div>
								</div>
							</div>
						</li>
						<li style="display: inline-block;">
							<div style="height:180px; width:355px; background: white; border:2px solid #242424; margin-right:25px; text-align:center; padding: 25px;" >
								<!-- 나무의 경험치 <br><br>
								<b>LV3, 90%</b> -->
								<div class="circle-item-warp">
									<div class="circle-progress-text">
										<p>출석일</p>
									</div>
									<div class="circle-progress" data-cptitle="Passion" data-cpid="id-3" data-cpvalue="25" data-cpcolor="#242424";"></div>
								</div>
							</div>
						</li>
						</ul>
					</div>
					<!-- <div class="main-down" style="height: 56%; width: 90%; border: 1px dotted gray; padding:3%; margin:20px; overflow:auto;">
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
						<div style="height: 24%; width: 98%; border: 1px dotted gray;"></div>
					</div> -->
					<div class="tab-element">
						<ul class="nav nav-tabs" id="myTab" role="tablist" style="margin-left: 20px; margin-bottom: 0px; margin-bottom: -30px;">
							<li class="nav-item" >
								<a class="nav-link active" id="1-tab" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">전체</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="4-tab" data-toggle="tab" href="#tab-4" role="tab" aria-controls="tab-4" aria-selected="false">진행예정</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">진행중</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="3-tab" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false"">진행완료</a>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent" >
							<!-- single tab content -->
							<div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
								<div class="main-down" style="width: 1200px; height: 400px; border: 2px solid #242424; padding:3%; margin:20px; overflow:auto;">
									<div style="height: 24%; width: 98%;  background: white; border: 1px solid #e1e1e1;">
										<div style="display: inline-block; width: 100px; height: 100%; background:gold;  padding: 25px; text-align: center;">진행중</div>
										<img src="resources/images/hansol_profile.jpg" style="width: 50px; height: 50px;">
										<div style="display: inline-block; width: 200px; height: 100%; background:orange; padding: 25px; text-align: center; ">1번 퀘스트</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab-4" role="tabpanel" aria-labelledby="tab-4">
								<div class="main-down" style="width: 1200px; height: 400px; border: 2px solid #242424; padding:3%; margin:20px; overflow:auto;">
									<div style="height: 24%; width: 98%; background: white; border: 1px solid #e1e1e1;">
										<div style="display: inline-block; width: 100px; height: 100%; background:linear-gradient( to right, yellow, white );  padding: 25px; text-align: center;">예정</div>
										<div style="display: inline-block; height: 100%; padding: 25px;">2번 퀘스트</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
								<div class="main-down" style="width: 1200px; height: 400px; border: 2px solid #242424; padding:3%; margin:20px; overflow:auto;">
									<div style="height: 24%; width: 98%;  background: white; border: 1px solid #e1e1e1;">
										<div style="display: inline-block; width: 100px; height: 100%; background:linear-gradient( to right, red, white );  padding: 25px; text-align: center;">진행중</div>
										<div style="display: inline-block; height: 100%; padding: 25px; ">3번 퀘스트</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
								<div class="main-down" style="width: 1200px; height: 400px; border: 2px solid #242424; padding:3%; margin:20px; overflow:auto;">
									<div style="height: 24%; width: 98%; background: white; border: 1px solid #e1e1e1;">
										<div style="display: inline-block; width: 100px; height: 100%; background:linear-gradient( to right, greenyellow, white );  padding: 25px; text-align: center;">완료</div>
										<div style="display: inline-block; height: 100%; padding: 25px;">4번 퀘스트</div>
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
