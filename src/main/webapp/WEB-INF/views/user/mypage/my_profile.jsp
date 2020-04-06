<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
	
	
    <style>
    .profile-images {
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
    .menuIcon images{
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
	
	.main-up, .main-down, .profile-aboutme{
		font-size: 14px;
		/* border: 2px solid #e1e1e1; */
		border: 2px solid #242424;
	}
	/* 토글버튼  */
	.slow .toggle-group { transition: left 0.7s; -webkit-transition: left 0.7s; }
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
                <a href="my_profileView.do" style="color: red;">Profile</a>
                <a href="my_challengeView.do">My Challenge</a>
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
					
					<div class="profile-images">
                        <img class="profile" src="resources/images/hansol_profile2.jpg" style="width:150px;height:150px;">
                    </div>
                    <div class="profile-text">
                        <b>디히</b>
					</div>
					
					<button class="site-btn sb-dark" onclick="location.href='my_updateInfoView.do'">settings</button>
					<button class="site-btn sb-solid mr-3 mb-3" style="display:none">follow</button>

					<div class="profile-aboutme" style="text-align: left; margin-top:10px; padding:10px; height:65px; overflow-y: scroll;">
						<p>${ mypage.intro }</p>
                    </div>

                    <div class="profile-follow">
                        <div class="grade">
                                                               등급<br>
                            <div style="width:40px; height:40px; background-color: goldenrod;"></div>
                        </div>
                        <div class="follow">
                                                               팔로우<br>
                            <b>301</b>
                        </div>
                        <div class="following">
                                                               팔로잉<br>
                            <b>243</b>
                        </div>
                    </div>
				</div>
			</div>
			<div class="page-section portfolio-page">
				<div class="portfolio-section">
					<div class="main-down" style="height: 40%; width:90%; margin:20px">
						<div class="main-down-title" style="height: 70px; background: #242424; color:white; padding: 20px; font-size: 21px; font-weight: 700;">
							관심 분야 &nbsp;&nbsp;&nbsp;
							<input type="checkbox" checked data-toggle="toggle" data-style="slow" data-on="<i class='fa fa-lock' aria-hidden='true'></i> 수정하기" data-off="<i class='fa fa-unlock' aria-hidden='true'></i> 수정중" data-onstyle="success" data-offstyle="danger">
							<!-- <img id="interestModify" src="resources/images/mypage/setting.png" style="height: 30px; width: 30px;"> -->
						</div>
						<div class="main-down-content" style="height: 28%; width: 100%; margin-top: 15px; text-align:center">
							<div style="display: inline-block; width:100%;">
								<div style="display: inline;"><img class='category' src="resources/images/mypage/lifestyle.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/poker.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/document.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/money.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/buy.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/support.png" style="width:150px; height:150px; margin: 15px;"></div>
								
								<div class="myCate" style="display:none">${ mypage.interest }</div>
								
								<script>
								
									var cate = $('.category');
									var cateStat = new Array(0,0,0,0,0,0);
									var myCate = $('.myCate')[0].innerText;
									
 									if(myCate.includes('건강')){
										cateStat[0]=1;
									}
									if(myCate.includes('취미')){
										cateStat[1]=1;
									}
									if(myCate.includes('자기개발')){
										cateStat[2]=1;
									}
									if(myCate.includes('경제')){
										cateStat[3]=1;
									}
									if(myCate.includes('생활')){
										cateStat[4]=1;
									}
									if(myCate.includes('기타')){
										cateStat[5]=1;
									}
									
									
									$(function(){
										for(var i=0; i<6; i++){
											if(cateStat[i]==0){
												$(cate[i]).css('opacity','0.2');
											}else{
												$(cate[i]).css('opacity','1');
											}
										}
									});
									
									$('.category').click(function(){
										if($(this).css('opacity') == '1'){
											$(this).css('opacity','0.2');
										}else{
											$(this).css('opacity','1');
										}
									});
									
									$("#interestModify").click(function(){
										
									});
								</script>
							</div>
							<div style="display: inline-block; width:100%;">
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">건강</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">취미</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">자기개발</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">경제</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">생활</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">기타</div>
							</div>                        
						</div>
					</div>
					<div class="main-up" style="height: 52%; width: 90%; margin:20px">
						<div class="main-up-title" style="height: 70px; background: #242424; color:white; padding: 20px; font-size: 21px; font-weight: 700;">
							나의 목표&nbsp;&nbsp;&nbsp;
							<input type="checkbox" checked data-toggle="toggle" data-style="slow" data-on="<i class='fa fa-lock' aria-hidden='true'></i> 수정하기" data-off="<i class='fa fa-unlock' aria-hidden='true'></i> 수정중" data-onstyle="success" data-offstyle="danger">
						</div>
						<div class="main-up-content" style="padding:3%;">
							${ mypage.goal }
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
