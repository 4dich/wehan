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
	
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<!-- bootstrap4 toggle -->
	<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
	
	
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
                        <img class="profile" src="resources/images/user/${ loginUser.picture }" style="width:150px;height:150px;">
                    </div>
                    <div class="profile-text">
                        <b>${ loginUser.nickName }</b>
					</div>
					
					<button class="site-btn sb-solid mr-3 mb-3" onclick="location.href='my_updateInfoView.do'">settings</button>
					<button class="site-btn sb-solid mr-3 mb-3" style="display:none">follow</button>

					<%-- <div class="profile-aboutme" style="text-align: left; margin-top:10px; padding:10px; height:65px; overflow-y: scroll;">
						<p>${ mypage.intro }</p>
                    </div> --%>
                    
                    <div style="text-align:center; margin:auto; width:100%">
                    	<table style="border: 1px solid #242424;">
                    		<tr>
                    			<td style="width:150px; background: #242424; color:white; padding:2px;">소개 <input id="toggle3" type="checkbox" checked data-toggle="toggle" data-size="xs" data-on="<i class='fa fa-lock' aria-hidden='true'></i>" data-off="<i class='fa fa-unlock' aria-hidden='true'></i>" data-onstyle="outline-success" data-offstyle="outline-danger" onchange="toggleBtn3();"></td>
                    			<td style="width:300px;"><textarea id="intro" rows=2 style="width:260px; height:50px; resize: none; overflow:hidden; border:0px; background:white" disabled>${ mypage.intro }</textarea></td>
                    		</tr>
                    	</table>
                    </div>

					<script>
						function toggleBtn3(){
					    	if(document.getElementById('toggle3').checked==false){
					    		$('#intro').attr('disabled',false);
					    		$('#intro').focus();
					    		$('#intro').value = $('#intro').value;
							}else{
								$('#intro').attr('disabled',true);
							}
					    }	
					</script>
					
					<br>
					
                 	<div style="text-align:center; margin:auto; width:70%">
	                    <table>
	                    	<tr>
	                    		<td style="width:50px; font-size:16px"><b>등급</b></td>
	                    		<td style="width:50px; text-align:right"></td>
	                    		<td style="width:50px; font-size:16px"><b>팔로우</b></td>
	                    		<td style="width:50px; text-align:right"></td>
	                    		<td style="width:50px; font-size:16px"><b>팔로잉</b></td>
	                    	</tr>
	                    	<tr style="border-top:1px solid #242424; margin-top:10px">
	                    		<td style="height:10px;"></td>
	                    		<td></td>
	                    		<td></td>
	                    		<td></td>
	                    		<td></td>
	                    	</tr>
	                    	<tr>
	                    		<td style="background:goldenrod; height:50px;"></td>
	                    		<td></td>
	                    		<td>${ follow }</td>
	                    		<td></td>
	                    		<td>${ following }</td>
	                    	<tr>
	                    	<tr style="border-bottom:1px solid #242424; margin-top:10px">
	                    		<td style="height:10px;"></td>
	                    		<td></td>
	                    		<td></td>
	                    		<td></td>
	                    		<td></td>
	                    	</tr>
	                    </table>
                    </div>
				</div>
			</div>
			<div class="page-section portfolio-page">
				<div class="portfolio-section">
					<div class="main-down" style="height: 40%; width:90%; margin:20px">
						<div class="main-down-title" style="height: 70px; background: #242424; color:white; padding: 20px; font-size: 21px; font-weight: 700;">
							관심 분야 &nbsp;&nbsp;&nbsp;
							
							<!-- 토글버튼 -->
							<input id="toggle1" type="checkbox" checked data-toggle="toggle" data-on="<i class='fa fa-lock' aria-hidden='true'></i> 수정하기" data-off="<i class='fa fa-unlock' aria-hidden='true'></i> 수정중" data-onstyle="outline-success" data-offstyle="outline-danger" onchange="toggleBtn1();">
							
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
								
								<!-- 관심분야 on/off -->
								<script>
									var cate = $('.category');
									for(var i=0; i<6; i++){
										cate[i].textContent=0;
									}
									var myCate = $('.myCate')[0].innerText;
									
 									if(myCate.includes('건강')){
 										cate[0].textContent = 1;
									}
									if(myCate.includes('취미')){
										cate[1].textContent = 1;
									}
									if(myCate.includes('자기개발')){
										cate[2].textContent = 1;
									}
									if(myCate.includes('경제')){
										cate[3].textContent = 1;
									}
									if(myCate.includes('생활')){
										cate[4].textContent = 1;
									}
									if(myCate.includes('기타')){
										cate[5].textContent = 1;
									}
									
									function toggleBtn1(){
								    	if(document.getElementById('toggle1').checked==false){
								    		cate.on("click",function(){
								    			$(this)[0].textContent = 1 - $(this)[0].textContent;
								            });
										}else{
											cate.off("click");
										}
								    }
									
									$(function(){
										setInterval(function(){
											for(var i=0; i<6; i++){
												if(cate[i].textContent==0){
													$(cate[i]).css('opacity','0.2');
												}else{
													$(cate[i]).css('opacity','1');
												}
											}
										},100);
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
							<input id="toggle2" type="checkbox" checked data-toggle="toggle" data-on="<i class='fa fa-lock' aria-hidden='true'></i> 수정하기" data-off="<i class='fa fa-unlock' aria-hidden='true'></i> 수정중" data-onstyle="outline-success" data-offstyle="outline-danger" onchange="toggleBtn2();">
							
							<!-- 나의 목표 on/off -->
							<script>
								function toggleBtn2(){
							    	if(document.getElementById('toggle2').checked==false){
							    		$('#goal').attr('disabled',false);
							    		$('#goal').focus();
							    		$('#goal').value = $('#goal').value;
									}else{
										$('#goal').attr('disabled',true);
									}
							    }	
							</script>
						</div>
						<div class="main-up-content" style="font-size:20px;">
							<textarea id="goal" cols="105" rows="9" style="resize: none; padding:3%; overflow:hidden; border:0px; background:white" disabled>${ mypage.goal }</textarea>
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
