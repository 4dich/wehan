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
	
	/* calendar*/
	body {
	font-family: Tahoma;
	}
	header {
	text-align: center;
	}
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
	border: none !important;
	padding: 10px 6px;
	color: #fff;
	font-size: 13px;
	}
	#calendar .days li {
	height: 140px;
	}
	#calendar .days li:hover {
	background: #d3d3d3;
	}
	#calendar .date {
	text-align: center;
	margin-bottom: 5px;
	/* padding: 10px; */
	background: #ccc;
	color: #fff;
	width: 20px;
	border-radius: 20%;
	float: right;
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
	
	.portfolio-section {
	    padding-right: 30px;
	    margin-left: 1px;
	    height: 100%;
	}
	/* ============================
					Mobile Responsiveness
	============================*/
	/* @media (max-width: 768px) {
	#calendar .weekdays, #calendar .other-month {
		display: none;
	}
	#calendar li {
		height: auto !important;
		border: 1px solid #ededed;
		width: 100%;
		padding: 10px;
		margin-bottom: -1px;
	}
	#calendar .date {
		float: none;
	} */
	.close-cal {
	font-size: 30px;
	color: #242424;
	float: right;
	margin-right: 30px;
	padding-top: 0px;
	cursor: pointer;
	}

	/*스크롤바*/
	.main-down::-webkit-scrollbar{
		width: 12px;
	}

	.main-up::-webkit-scrollbar {
		height: 12px;
	}
	.main-up::-webkit-scrollbar-thumb, .main-down::-webkit-scrollbar-thumb {
		background-color: #242424;
	}
	.main-up::-webkit-scrollbar-track, .main-down::-webkit-scrollbar-track {
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
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
                <a href="my_profileView.do">Profile</a>
                <a href="my_challengeView.do">My Challenge</a>
                <a href="my_diaryView.do" style="color: red;">My Diary</a>
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

					<!-- <div class="row">
						<div class="col-lg-4">
							등급<br>
							<div style="width:40px; height:40px; background-color: goldenrod;"></div>
						</div>
						<div class="col-lg-4">
							팔로우<br>
							301
						</div>
						<div class="col-lg-4">
							팔로잉<br>
							243
						</div>
					</div> -->

					<!-- <a href="index.html" class="site-logo">
						<h2>Nissa</h2>
						<p>Photography Studio</p>
					</a>
					<div class="about-info">
						<h2>My name is Michael Smith.</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus libero mauris, bibendum eget sapien ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Suspendisse maximus malesuada  </p>
					</div>
					<ul class="contact-info">
						<li>1525  Boring Lane, Los Angeles, CA</li>
						<li>+34 56672 9984 22</li>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					<a href="#" class="site-btn">see my portfolio <img src="img/arrow-right.png" alt=""></a>
				 --></div>
			</div>
			
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section portfolio-page">
				<div class="portfolio-section">

					<div class="main-up" style="height: 20%; width: 96%; border: 2px solid #242424; padding:1%; overflow-x:scroll; white-space:nowrap;">
						<div style="height: 96%; width: 26%; border: 2px solid #242424; display: inline-block;">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								1일 1커밋
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 2px solid #242424; display: inline-block;">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								30분 조깅
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 2px solid #242424; display: inline-block;">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								10시 이후에 안먹기
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 2px solid #242424; display: inline-block;">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								example
							</div>
						</div>
						<div style="height: 96%; width: 26%; border: 2px solid #242424; display: inline-block;">
							<div class="main-up-stamp" style="display: inline-block;">
								<img src="resources/images/stamp_yes.jpg" style="width: 100px; height: 100px;">
							</div>
							<div class="main-up-content" style="display: inline-block; margin: 10px; overflow: hidden;">
								example
							</div>
						</div>
						
						
						
					</div>
					<div class="main-down" style="height: 70%; width: 96%; border: 2px solid #242424; padding:3%; white-space:nowrap; overflow:auto; margin-top: -2px;">
						<!-- <div style="display:inline-block; height:96%; width:96%; border: 1px dotted gray; margin-right:2%; text-align:center;" ></div> -->
						<div id="calendar-wrap">
							<header>
								<h1>March, 2020</h1>
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
