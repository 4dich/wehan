<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="../resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="../resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="../resources/css/style.css"/>

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<style>
	.Find{
		width: 40%;
		border-left-width:0;
		border-right-width:0;
		border-top-width:0;
		border-bottom-width:0;
		background-color: white;
	}
	
	.Tab{
		width:60%;
		margin-left: 20%;
		margin-top: 8%;
		border: 1px solid #dddddd;
	}

	.btn-danger{
		font-size: larger;
	}

	.input{
		width:70%;
		height:40px;
		border-left-width:0;
		border-right-width:0;
		border-top-width:0;
		border-bottom-width:1;
	}
	#idFind{
		height: 30%;
	}
	#pwdFind{
		display: none;
		height: 30%;
	}
		
</style>
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
						<h2>회사소개</h2>
                        <!-- 감성글 작성 -->
                        <p>"한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약이다. (One small step for a man, one giant leap for mankind.)”<br>
							이 명언은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.  </p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					
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
						<div class="Tab"  align="center">
							<div class="selectTab">
								<br><br>
								<h3><input type="button" class="Find" value="아이디 찾기" onclick="Find('id');">
								<input type="button" class="Find" value="비밀번호 찾기" onclick="Find('pwd');"></h3>
							</div>

							<div class="selectFind">
								<br><br><br>
								<div id="idFind" >
									<input class="input" type="email" placeholder="이메일 입력">
									<br><br><br><br>
									<input type="button" class="btn btn-danger" value="확인하기">
									<br><br>
								</div>
								<div id="pwdFind">
									<input class="input" type="text" placeholder="id입력">
									<br><br>
									<input class="input" type="email" placeholder="이메일 입력">
									<br><br><br><br>
									<input type="button" class="btn btn-danger" value="확인하기">
									<br><br>
								</div>
							</div>
						</div>
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
		function Find(select){
			if(select == 'id'){
				$('.Find').eq(0).css({'color':'#bd362f'});
				$('.Find').eq(1).css({'color':'black'});
				$('#idFind').show();
				$('#pwdFind').hide();
			}else{
				$('.Find').eq(0).css({'color':'black'});
				$('.Find').eq(1).css({'color':'#bd362f'});
				$('#idFind').hide();
				$('#pwdFind').show();
			}			
		}
	</script>
	<!--====== Javascripts & Jquery ======-->
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.nicescroll.min.js"></script>
	<script src="../resources/js/circle-progress.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/main.js"></script>
	
	</body>
</html>
