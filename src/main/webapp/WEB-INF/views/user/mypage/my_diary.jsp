<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
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
	
	/* calendar*/
	#calendar {
		width: 100%;
	}
	#calendar a {
		color: #8e352e;
		text-decoration: none;
	}
	#calendar ul {
		list-style: none;
		padding: 0;
		margin: 0;
		width: 100%;
	}
	#calendar li {
		display: block;
		float: left;
		width: 14.342%;
		padding: 5px;
		box-sizing: border-box;
		border: 1px solid #ccc;
		margin-right: -1px;
		margin-bottom: -1px;
	}
	#calendar ul.weekdays {
		height: 40px;
		background: #ccc;
	}
		
	#calendar ul.weekdays li {
		text-align: center;
		text-transform: uppercase;
		line-height: 20px;
		padding: 10px 6px;
		color: #fff;
		font-size: 13px;
		
		color: white;
		background-color: #323232;
		border: 1px solid gray;
	}
	#calendar .days li {
		height: 140px;
	}
	#calendar .days li:hover {
		background: #d3d3d3;
	}
	#calendar .date {
		text-align: center;
		/* padding: 10px; */
		background-color: gray;
		color: #fff;
		width: 28px;
		border-radius: 60%;
		float: left;
		
	}
	#calendar .event {
		clear: both;
		display: block;
		font-size: 13px;
		border-radius: 4px;
		padding: 5px;
		margin-top: 40px;
		margin-bottom: 5px;
		line-height: 14px;
		background: #e4f2f2;
		border: 1px solid #b5dbdc;
		color: #009aaf;
		text-decoration: none;
		overflow: hidden;
	}
	#calendar .event-desc {
		color: #666;
		margin: 3px 0 7px 0;
	text-decoration: none;
	}
	#calendar .other-month {
		background: #f5f5f5;
		color: #666;
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
/* 	.main-up::-webkit-scrollbar{
		height: 5px;
	}
	.main-down::-webkit-scrollbar{
		width: 5px;
	}
	
	.main-up::-webkit-scrollbar-thumb, .main-down::-webkit-scrollbar-thumb{
		background-color: #242424;
	}
	.main-up::-webkit-scrollbar-track, .main-down::-webkit-scrollbar-track{
		background-color: grey;
	} */

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
                <a href="my_challengeView.do">My Challenge</a>
                <a href="my_diaryView.do" style="color: red;">My Diary</a>
				<a href="getMsgList.do">Message</a>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp" style="text-align: center;">

                    <a href="indexView.do" class="site-logo">
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
					<div class="main-up" style="height: 20%; width: 100%; border: 1px solid gray; padding:1%; overflow-x:scroll; white-space:nowrap;">
						<div style="height: 96%; width: 26%; border: 1px solid gray; display: inline-block; margin-right: 10px">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								1일 1커밋
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 1px solid gray; display: inline-block; margin-right: 10px">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								30분 조깅
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 1px solid gray; display: inline-block; margin-right: 10px">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								10시 이후에 안먹기
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 1px solid gray; display: inline-block; margin-right: 10px">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								example
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 1px solid gray; display: inline-block; margin-right: 10px">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								example
							</div>
						</div>
						
						
						
					</div>
					<div class="main-down" style="height: 1200px; width: 100%; padding:3%; overflow:auto; margin-top: -1px;">
						<div id="calendar-wrap">
							<header>
								<h2>&lt;<script>document.write(new Date().getMonth()+1);</script>월, <script>document.write(new Date().getFullYear());</script>년&gt;</h2>
								<br>
							</header>
							<div id="calendar">
								<ul class="weekdays">
									<li>Sunday</li>
									<li>Monday</li>
									<li>Tuesday</li>
									<li>Wednesday</li>
									<li>Thursday</li>
									<li>Friday</li>
									<li>Saturday</li>
								</ul>
								<!-- Days from previous month -->
								<ul class="days">
									<li class="day other-month">
										<div class="date">27</div>                     
									</li>
									<li class="day other-month">
										<div class="date">28</div>
										<div class="event">
											<div class="event-desc">
												HTML 5 lecture with Brad Traversy from Eduonix
											</div>
											<div class="event-time">
												1:00pm to 3:00pm
											</div>
										</div>                     
									</li>
									<li class="day other-month">
										<div class="date">29</div>                     
									</li>
									<li class="day other-month">
										<div class="date">30</div>                     
									</li>
									<li class="day other-month">
										<div class="date">31</div>                     
									</li>
									<!-- Days in current month -->
									<li class="day">
										<div class="date">1</div>                      
									</li>
									<li class="day">
										<div class="date">2</div>
										<div class="event">
											<div class="event-desc">
												Career development @ Community College room #402
											</div>
											<div class="event-time">
												2:00pm to 5:00pm
											</div>
										</div>                     
									</li>
								</ul>
									<!-- Row #2 -->
								<ul class="days">
									<li class="day">
										<div class="date">3</div>                      
									</li>
									<li class="day">
										<div class="date">4</div>                      
									</li>
									<li class="day">
										<div class="date">5</div>                      
									</li>
									<li class="day">
										<div class="date">6</div>                      
									</li>
									<li class="day">
										<div class="date">7</div>
										<div class="event">
											<div class="event-desc">
												Group Project meetup
											</div>
											<div class="event-time">
												6:00pm to 8:30pm
											</div>
										</div>                     
									</li>
									<li class="day">
										<div class="date">8</div>                      
									</li>
									<li class="day">
										<div class="date">9</div>                      
									</li>
								</ul>
									<!-- Row #3 -->
								<ul class="days">
									<li class="day">
										<div class="date">10</div>                     
									</li>
									<li class="day">
										<div class="date">11</div>                     
									</li>
									<li class="day">
										<div class="date">12</div>                     
									</li>
									<li class="day">
										<div class="date">13</div>                     
									</li>
									<li class="day">
										<div class="date">14</div><div class="event">
											<div class="event-desc">
												Board Meeting
											</div>
											<div class="event-time">
												1:00pm to 3:00pm
											</div>
										</div>                     
									</li>
									<li class="day">
										<div class="date">15</div>                     
									</li>
									<li class="day">
										<div class="date">16</div>                     
									</li>
								</ul>
									<!-- Row #4 -->
								<ul class="days">
									<li class="day">
										<div class="date">17</div>                     
									</li>
									<li class="day">
										<div class="date">18</div>                     
									</li>
									<li class="day">
										<div class="date">19</div>                     
									</li>
									<li class="day">
										<div class="date">20</div>                     
									</li>
									<li class="day">
										<div class="date">21</div>                     
									</li>
									<li class="day">
										<div class="date">22</div>
										<div class="event">
											<div class="event-desc">
												Conference call
											</div>
											<div class="event-time">
												9:00am to 12:00pm
											</div>
										</div>                     
									</li>
									<li class="day">
										<div class="date">23</div>                     
									</li>
								</ul>
										<!-- Row #5 -->
								<ul class="days">
									<li class="day">
										<div class="date">24</div>                     
									</li>
									<li class="day">
										<div class="date">25</div>
										<div class="event">
											<div class="event-desc">
												Conference Call
											</div>
											<div class="event-time">
												1:00pm to 3:00pm
											</div>
										</div>                     
									</li>
									<li class="day">
										<div class="date">26</div>                     
									</li>
									<li class="day">
										<div class="date">27</div>                     
									</li>
									<li class="day">
										<div class="date">28</div>                     
									</li>
									<li class="day">
										<div class="date">29</div>                     
									</li>
									<li class="day">
										<div class="date">30</div>                     
									</li>
								</ul>
								<!-- Row #6 -->
								<ul class="days">
									<li class="day">
										<div class="date">31</div>                     
									</li>
									<li class="day other-month">
										<div class="date">1</div> <!-- Next Month -->                      
									</li>
									<li class="day other-month">
										<div class="date">2</div>                      
									</li>
									<li class="day other-month">
										<div class="date">3</div>                      
									</li>
									<li class="day other-month">
										<div class="date">4</div>                      
									</li>
									<li class="day other-month">
										<div class="date">5</div>                      
									</li>
									<li class="day other-month">
										<div class="date">6</div>                      
									</li>
								</ul>
							</div><!-- /. calendar -->
							<div class="cal-detail" style="display: none; width:500px; height: 500px; border: 2px solid #242424; background:white; position:absolute; left: 1000px; top: 300px; padding:30px">
								대충 달력 상세정보
								<div class="close-cal">x</div>
							</div>
						</div><!-- /. wrap -->
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

	<script>
		$('#calendar .days li').click(function(){
			$(".cal-detail").show();
		});
		
		$(".close-cal").click(function(){
			$(".cal-detail").css("display","none");
		});
		
	</script>

	</body>
</html>
