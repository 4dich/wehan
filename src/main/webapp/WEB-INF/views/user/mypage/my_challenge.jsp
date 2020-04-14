<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    
    
    
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
    <style>
    .site-logo {
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
	
	/* tab css 수정 */
	.tab-element .nav-tabs .nav-link {
		border: 1px solid gray;
		text-align: left;
		background-color: white;
		border-radius: 0;
		position: relative;
		width: 100%;
		padding: 17px 30px;
		font-size: 14px;
		text-transform: uppercase;
		color: #323232;
		font-weight: 700;
		line-height: 1.3;
		cursor: pointer;
	}
	
	.tab-element .nav-tabs .nav-link.active {
		background: #242424;
		color: #fff;
		border-color: #242424;
	}
	
	.tab-element .nav-tabs {
		border-bottom: none;
		margin-bottom: 25px;
	}
	
	.tab-element .nav-item {
		margin-right: 10px;
		margin-bottom: 10px;
	}
	
	/* circle bar */
	.circle-item-warp {
		margin-bottom: 30px;
		overflow: hidden;
	}
	
	.circle-progress {
		float: left;
		margin-right: 10px;
	}
	
	.circle-progress canvas {
		-webkit-transform: rotate(90deg);
		transform: rotate(90deg);
	}
	
	.circle-progress .circle-warp {
		float: left;
		margin-right: 20px;
	}
	
	.circle-progress h2 {
		padding-bottom: 18px;
		overflow: hidden;
		font-size: 72px;
		font-family: "Playfair Display", serif;
		line-height: 1;
		font-weight: 900;
		position: relative;
	}
	
	.circle-progress h2 span {
		font-size: 40px;
		position: relative;
		top: -30px;
	}
	
	.circle-progress-text {
		padding-top: 15px;
	}
	
	.circle-progress-text h5 {
		font-weight: 700;
	}
	
	.circle-progress-text p {
		margin-bottom: 0;
		color: #828282;
	}
	
	/* progress-bar */
	@-webkit-keyframes progress-bar-stripes {
	  from {
	    background-position: 40px 0;
	  }
	  to {
	    background-position: 0 0;
	  }
	}
	@-o-keyframes progress-bar-stripes {
	  from {
	    background-position: 40px 0;
	  }
	  to {
	    background-position: 0 0;
	  }
	}
	@keyframes progress-bar-stripes {
	  from {
	    background-position: 40px 0;
	  }
	  to {
	    background-position: 0 0;
	  }
	}
	.progress {
	  height: 20px;
	  margin-bottom: 20px;
	  overflow: hidden;
	  background-color: #f5f5f5;
	  border-radius: 4px;
	  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	}
	.progress-bar {
	  float: left;
	  width: 0%;
	  height: 100%;
	  font-size: 12px;
	  line-height: 20px;
	  color: #fff;
	  text-align: center;
	  background-color: #337ab7;
	  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	  -webkit-transition: width 0.6s ease;
	  -o-transition: width 0.6s ease;
	  transition: width 0.6s ease;
	}
	.progress-striped .progress-bar,
	.progress-bar-striped {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  -webkit-background-size: 40px 40px;
	  background-size: 40px 40px;
	}
	.progress.active .progress-bar,
	.progress-bar.active {
	  -webkit-animation: progress-bar-stripes 2s linear infinite;
	  -o-animation: progress-bar-stripes 2s linear infinite;
	  animation: progress-bar-stripes 2s linear infinite;
	}
	.progress-bar-success {
	  background-color: #5cb85c;
	}
	.progress-striped .progress-bar-success {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	.progress-bar-info {
	  background-color: #5bc0de;
	}
	.progress-striped .progress-bar-info {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	.progress-bar-warning {
	  background-color: #f0ad4e;
	}
	.progress-striped .progress-bar-warning {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	.progress-bar-danger {
	  /* background-color: #d9534f; */
	  background-color: #242424;
	}
	.progress-striped .progress-bar-danger {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	
	/*스크롤바*/
	.main-down::-webkit-scrollbar{
		width: 5px;
	}
	
	.main-down::-webkit-scrollbar-thumb{
		background-color: #242424;
	}
	.main-down::-webkit-scrollbar-track{
		background-color: grey;
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
					<div id="lv" style="width: 350px; height: 470px; border: 1px solid gray; padding:20px; margin:auto; margin-top: -30px">
						<div id="lv-img" style="width: 300px; height:320px; margin:auto; background-image: url('resources/images/level/astro2.gif'); background-size: cover; border-radius: 15px;">
							<img src="resources/images/level/lv4.png">
						</div>
						<div id="lv-progress" style="width: 300px; margin:auto; margin-top: 10px;">
							<div>
								<div id="nickName" style="font-size:24px; margin-bottom: 10px; text-align:left"><b>${loginUser.nickName}</b></div>
								<div id="lv-text" style="font-size:16px; margin-bottom: 5px; text-align:left" >Lv 4</div>
							</div>
							<div class="progress" style="border:1px solid gray; margin-bottom:-3px; ">
								<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar"
									aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:66%"> Exp 10
								</div>
						    </div>
							<div id="lv-progress1" style="width: 140px; text-align:left; display:inline-block; font-size: 12px">
								0
							</div>
							<div id="lv-progress2" style="width: 140px; text-align:right; display:inline-block; font-size: 12px">
								15
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section portfolio-page">
				<div class="portfolio-section">
					<!-- Statistics 영역 -->				
					<div class="main-down" id="statistics" style="height: 40%; width:90%; margin-left:20px">
						<div class="main-down-title" style="height: 70px; padding: 20px; font-weight:900; font-size: 21px; font-weight: 700;">
							<div style="width:100px; height:100px; margin-left:-39px; display:inline-block; background-image: url('resources/images/icons/bookmark.png'); background-repeat : no-repeat; background-size : cover;"></div>
							<div style="margin:-100px 24px 0 60px;">
								<i>Statistics</i>
							</div>
						</div>
						<div class="main-down-content" style="height: 75%; width: 100%; margin-top: 5px; text-align:center; border:1px solid gray;">
							<div style="display: inline-block; width:100%; margin-top:15px;">
								<div style="display: inline-block; width:300px; height:40px; margin: 0 15px 0 15px; padding: 5px">챌린지 달성률</div>
								<div style="display: inline-block; width:300px; height:40px; margin: 0 15px 0 15px; padding: 5px">챌린지 달성수</div>
								<div style="display: inline-block; width:300px; height:40px; margin: 0 15px 0 15px; padding: 5px">사이트 가입일</div>
							</div>
							<div style="display: inline-block; width:100%; margin-top:8px;">
								<div class="circle-item-warp" style="display: inline-block; width:320px; height:165px; margin: 0 15px 0 15px; border:1px solid gray; border-radius:15px; padding: 10px" >
									<div class="circle-progress" data-cptitle="Passion" data-cpid="id-1" data-cpvalue="80" data-cpcolor="#242424" style="margin-left: 20px; margin-top: 20px"></div>
									<div style="display:inline-block; font-size:50px; font-family: 'Playfair Display', serif; font-weight:700; margin-left: -50px; margin-top: 20px">%</div>
									<div class="circle-progress-text">
										<p>50, Total challenges</p>
									</div>
								</div>
								<div class="circle-item-warp" style="display: inline-block; width:320px; height:165px; margin: 0 15px 0 15px; border:1px solid gray; border-radius:15px; padding: 25px 10px 0 40px;" >
									<div class="milestone">
										<h2>40</h2>
										<div class="milestone-info" style="text-align:left;">
											<h5>Challenges<br>completed</h5>
											<p id="exp" style="color:gray">Lv 4, Exp 10</p>
										</div>
									</div>
								</div>
								<div class="circle-item-warp" style="display: inline-block; width:320px; height:165px; margin: 0 15px 0 5px; border:1px solid gray; border-radius:15px; padding: 25px 10px 0 40px;" >
									<div class="milestone">
										<h2 id="gapDate"></h2>
										<div class="milestone-info" style="text-align:left;">
											<h5>Days<br>have passed</h5>
											<p id="joinDate" style="color:gray">${ loginUser.joinDate }</p>
										</div>
									</div>
									
									<script>
										var nDate = new Date();
										var jDateString = $("#joinDate")[0].innerText;
										var jDateArr = jDateString.split('-');
										var jDate = new Date(jDateArr[0],jDateArr[1]-1,jDateArr[2]);
										
										var gap = nDate.getTime() - jDate.getTime();
										var result = Math.floor(gap / (1000 * 60 * 60 * 24)) + 1;
										
										$("#gapDate")[0].innerText = result;
										
										/* $(function(){
											$("#t1").data("cpvalue",90);
										}); */
									</script>
								</div>
								<!-- <div style="display: inline-block; width:300px; height:165px; margin: 0 15px 0 15px; border:1px solid gray">3</div> -->
							</div>
             
						</div>
					</div>
					
					<!-- Challenge 영역 -->
					<div class="main-up" id="challenge" style="height: 40%; width: 90%; margin-left:20px">
						<div class="main-up-title" style="height: 70px; padding: 20px; font-size: 21px; font-weight: 700;">
							<div style="width:100px; height:90px; margin-left:-38px; margin-top:13px; display:inline-block; background-image: url('resources/images/icons/bookmark.png'); background-repeat : no-repeat; background-size : cover; z-index:2"></div>
							<div style="margin:-100px 24px 0 60px;"><i>Challenges</i></div>
						</div>
						
						
						<div class="tab-element">
							<ul class="nav nav-tabs" id="myTab" role="tablist" style="margin: 0px 0px -30px 80px;">
								<li class="nav-item">
									<a class="nav-link active" style="width:259px; text-align:center" id="1-tab" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">전체</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" style="width:259px; text-align:center" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">진행중</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" style="width:259px; text-align:center" id="3-tab" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">진행예정</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" style="width:259px; text-align:center" id="4-tab" data-toggle="tab" href="#tab-4" role="tab" aria-controls="tab-4" aria-selected="false">진행완료</a>
								</li>
							</ul>
							<div class="tab-content" id="myTabContent" >
								<!-- 전체 챌린지 -->
								<div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
									<div class="main-down" style="width: 100%; height: 350px; border: 1px solid gray; padding:3%; margin-top:19px; overflow-y:scroll;">
										<c:forEach var="c" items="${ clist }">
											<div style="width: 100%; height: 80px; background: white; border: 1px solid gray; margin-top:-1px">
												<div class="result" style="display: inline-block; width: 150px; height: 100%; background:white; padding: 25px; text-align: center;">1</div>
												<div class="sArr" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.startDate }</div>
												<div style="display: inline-block; width: 20px; padding: 25px 0 25px 0;">~</div>
												<div class="eArr" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.endDate }</div>
												<img src="resources/images/user/${c.chPicture }" style="width: 75px; height: auto">
												<div style="display: inline-block; width: 400px; height: 100%; padding: 25px; text-align: center;">${ c.chName }</div>
											</div>
										</c:forEach>
										<!-- <script>
										
											$(function(){
											
												var $sArr = $('.sArr');
												var $eArr = $('.eArr');
												var today = new Date();
												var $result = $('.result');
												for(var i=0; i<$sArr.length; i++){
													console.log('시작일: ' + $sArr[i].innerText);
													console.log('종료일: ' + $eArr[i].innerText);
													
													var sYear = $sArr[i].innerText.split('/')[0] + 20;
													var sMonth = $sArr[i].innerText.split('/')[1];
													var sDay = $sArr[i].innerText.split('/')[2];
													var sDate = new Date(sYear,sMonth-1,sDay);
													
													var eYear = $eArr[i].innerText.split('/')[0] + 20;
													var eMonth = $eArr[i].innerText.split('/')[1];
													var eDay = $eArr[i].innerText.split('/')[2];
													var eDate = new Date(eYear,eMonth-1,eDay);
													
													console.log(sDate.getTime());
													console.log(eDate.getTime());
													console.log(today.getTime());
													
													if(sDate.getTime()>today.getTime()){
														$result[i].innerText = '진행예정';
														$result.parent().eq(i).children().eq(0).css('background-color','#F7D147');
													}else if(sDate.getTime()<today.getTime() && eDate.getTime()>today.getTime()){
														$result[i].innerText = '진행중';
														$result.parent().eq(i).children().eq(0).css('background-color','#FE736C');
													}else{
														$result[i].innerText = '진행완료';
														$result.parent().eq(i).children().eq(0).css('background-color','#3A7D7C');
													}
												}
											});
										</script> -->
									</div>
								</div>
								<!-- 진행중 챌린지 -->
								<div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
									<div class="main-down" style="width: 100%; height: 350px; border: 1px solid gray; padding:3%; margin-top:19px; overflow-y:scroll;">
										<c:forEach var="c" items="${ clist }">
											<div style="width: 100%; height: 80px; background: white; border: 1px solid gray; margin-top:-1px">
												<div class="result2" style="display: inline-block; width: 150px; height: 100%; background:white; padding: 25px; text-align: center;">1</div>
												<div class="sArr2" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.startDate }</div>
												<div style="display: inline-block; width: 20px; padding: 25px 0 25px 0;">~</div>
												<div class="eArr2" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.endDate }</div>
												<img src="resources/images/user/${c.chPicture }" style="width: 75px; height: auto">
												<div style="display: inline-block; width: 400px; height: 100%; padding: 25px; text-align: center;">${ c.chName }</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<!-- 진행예정 챌린지 -->
								<div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
									<div class="main-down" style="width: 100%; height: 350px; border: 1px solid gray; padding:3%; margin-top:19px; overflow-y:scroll;">
										<c:forEach var="c" items="${ clist }">
											<div style="width: 100%; height: 80px; background: white; border: 1px solid gray; margin-top:-1px">
												<div class="result3" style="display: inline-block; width: 150px; height: 100%; background:white; padding: 25px; text-align: center;">1</div>
												<div class="sArr" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.startDate }</div>
												<div style="display: inline-block; width: 20px; padding: 25px 0 25px 0;">~</div>
												<div class="eArr" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.endDate }</div>
												<img src="resources/images/user/${c.chPicture }" style="width: 75px; height: auto">
												<div style="display: inline-block; width: 400px; height: 100%; padding: 25px; text-align: center;">${ c.chName }</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<!-- 진행완료 챌린지 -->
								<div class="tab-pane fade" id="tab-4" role="tabpanel" aria-labelledby="tab-4">
									<div class="main-down" style="width: 100%; height: 350px; border: 1px solid gray; padding:3%; margin-top:19px; overflow-y:scroll;">
										<c:forEach var="c" items="${ clist }">
											<div style="width: 100%; height: 80px; background: white; border: 1px solid gray; margin-top:-1px">
												<div class="result4" style="display: inline-block; width: 150px; height: 100%; background:white; padding: 25px; text-align: center;">1</div>
												<div class="sArr" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.startDate }</div>
												<div style="display: inline-block; width: 20px; padding: 25px 0 25px 0;">~</div>
												<div class="eArr" style="display: inline-block; width: 100px; padding: 25px 0 25px 10px;">${ c.endDate }</div>
												<img src="resources/images/user/${c.chPicture }" style="width: 75px; height: auto">
												<div style="display: inline-block; width: 400px; height: 100%; padding: 25px; text-align: center;">${ c.chName }</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<script>
									$(function(){
									
										var $sArr = $('.sArr');
										var $eArr = $('.eArr');
										var today = new Date();
										var $result = $('.result');
										var $result2 = $('.result2');
										var $result3 = $('.result3');
										var $result4 = $('.result4');
										
										for(var i=0; i<$sArr.length; i++){
											console.log('시작일: ' + $sArr[i].innerText);
											console.log('종료일: ' + $eArr[i].innerText);
											
											var sYear = $sArr[i].innerText.split('/')[0] + 20;
											var sMonth = $sArr[i].innerText.split('/')[1];
											var sDay = $sArr[i].innerText.split('/')[2];
											var sDate = new Date(sYear,sMonth-1,sDay);
											
											var eYear = $eArr[i].innerText.split('/')[0] + 20;
											var eMonth = $eArr[i].innerText.split('/')[1];
											var eDay = $eArr[i].innerText.split('/')[2];
											var eDate = new Date(eYear,eMonth-1,eDay);
											
											console.log(sDate.getTime());
											console.log(eDate.getTime());
											console.log(today.getTime());
											
											if(sDate.getTime()>today.getTime()){
												$result[i].innerText = '진행예정';
												$result.parent().eq(i).children().eq(0).css('background-color','#F7D147');
												
												$result2.parent().eq(i).css('display','none');
												
												$result3[i].innerText = '진행예정';
												$result3.parent().eq(i).children().eq(0).css('background-color','#F7D147');
												
												$result4.parent().eq(i).css('display','none');
											}else if(sDate.getTime()<today.getTime() && eDate.getTime()>today.getTime()){
												$result[i].innerText = '진행중';
												$result.parent().eq(i).children().eq(0).css('background-color','#FE736C');
												
												$result2[i].innerText = '진행중';
												$result2.parent().eq(i).children().eq(0).css('background-color','#FE736C');
												
												$result3.parent().eq(i).css('display','none');
												
												$result4.parent().eq(i).css('display','none');
											}else{
												$result[i].innerText = '진행완료';
												$result.parent().eq(i).children().eq(0).css('background-color','#3A7D7C');
												
												$result2.parent().eq(i).css('display','none');
												
												$result3.parent().eq(i).css('display','none');
												
												$result4[i].innerText = '진행완료';
												$result4.parent().eq(i).children().eq(0).css('background-color','#3A7D7C');
											}
										}
									});
								</script>
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
