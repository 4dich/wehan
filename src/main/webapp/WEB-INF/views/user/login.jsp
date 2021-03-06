<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<title>WEHAN - 위대한 한걸음</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="resources/images/sitelogo.png" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<!-- 부트스트랩 -->

	 
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<style>
		.container {
			margin-top: 5%;
			margin-left: 20%;
			margin-right: 30%;
			width: 50%;
			border: 1px solid #dddddd;
		}

		.login{
			width:85%;
			height: 30px;
			font-size: 20px;
			border-left-width:0;
			border-right-width:0;
			border-top-width:0;
			border-bottom-width:1;
		}
		.about-info{width:348px;}
		.btn{
			width :200px;
		}
	</style>	
</head>
<body>
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
                    <!-- 서브메뉴 --><br><br>
					<div class="about-info">
						<h2>회사소개</h2>
						<p style="font-size: 12px;">한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약<br>(One small step for a man, one giant leap for mankind.)<br>
							이 명언은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.
							혼자선 힘들었던 계획들, 같은 목표의 사람들과 함께 해보세요.<br>
						   	당신의 미래를 시작하기 위한 첫 걸음을 도와드릴게요.
						</p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
					</ul>		
					<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
						All rights reserved </p>
					</div>
				</div>
			</div>
            <!-- Left Side section end -->
            

            <!-- page end Main section end 사이에 그대로 붙여넣어-->
            <!-- 카피라이트 -->
            <!-- Page end -->
            
            
            <!-- Main section end -->
			<div class="page-section">
				<div class="hero-section">
					<div class="hero-track">
						<div class="container" >
							<!-- <form action="login.do" method="post"> -->
								<br><br>
								<h2 style="color: #bd362f; margin-left: 43px;">생각말고</h2>
								<h2 style="color: black; margin-left: 43px;">실천하자</h2><br>
								<h2 style="color:#bd362f; margin-left: 400px;">Challenge</h2><br>
								<br><br>
								<div align="center">
									<input id="userId" type="text" class="login" name="userId" placeholder="아이디 입력"><br><br>
									<input id="password" type="password" class="login" name="password" placeholder="패스워드 입력"><br>
								</div>								
								<br><br><br>								
								
								<div class="row" style="margin-left: 48px;">
									<div>
										<a href="findIdPwdView.do" style="color: black;">아이디 찾기/비밀번호 찾기</a>
									</div>									
								</div>
								<br><br><br>
								<div class="row">
									<div>
										<b><a href="signInAgreeView.do" style="color: #bd362f; font-size: 20px; margin-left: 65px;">회원가입</a></b>
										<input id="submit" type="button"  class="btn btn-danger" style=" margin-left:290px; width:150px" value="로그인">
									</div>
								</div>
								<br><br>
							<!-- </form> -->
						</div>
					</div>
				</div>
			</div>
			<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
				All rights reserved </p></div>
				</div>
			<!-- Page end -->
		</div>
	</div>
	<!-- Main section end -->
	<script>
		$(function(){
			$("#userId").focus();
		});
		
	
		 $('#submit').click(function(){
			login();
		}); 
		
		 
		$("#userId").keydown(function(e){
			if(e.keyCode == 13){
				login();
			}
		});
		
		$("#password").keydown(function(e){
			if(e.keyCode == 13){
				login();
			}
		});
		
		function login(){
			var userId = $('#userId').val();
			var password = $('#password').val();
			$.ajax({
				url:"login.do",
				type:"post",
				dataType:"json",
				data:{"userId":userId,"password":password},
				success:function(data){
					console.log(data);
					console.log(data == "ok1");
					if(data == "ok1"){
						alert("관리자 권한으로 로그인 되었습니다.");
						location.href="ad_noticeListView.do";
					}else if(data == "ok2"){
						alert("로그인 되었습니다");
						location.href="index.jsp";
					}else if(data == "fail"){
						alert("아이디와 비밀번호가 일치하지 않습니다.");
					}else{
						alert("접속 제한 \n" + "차단 이유 : " + data.banReason + "\n" + "차단 날짜 : " + data.banDate +
								"\n" + "차단기간 : " + data.banTerm);
					}
				},error:function(){
					
				}
			});
		}
	</script>
	<!--====== Javascripts & Jquery ======-->
	
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>
	
	</body>
</html>