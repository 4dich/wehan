<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>CH_LIST</title>
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
    <link rel="stylesheet" href="../resources/css/ch-list.css"/>
    <!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
    <!-- <link rel="stylesheet" href="../resources/css/left_section.css"/> -->
    <link rel="stylesheet" href="../resources/css/style.css"/>	
    
	<link rel="stylesheet" href="../resources/css/category.css"/>

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

		<include file="/WEB-INF/views/common/menuBar.jsp">

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
            </div>            
            <div class="header-social">
                <a href="ch-list.html" style="color: red;">전체 챌린지</a>
                <a href="ch-listPremium.html">프리미엄 챌린지</a>
                <a href="ch-listTop10.html">TOP 10 챌린지</a>
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
                    <div class="challenges-search">
						<input type="textarea" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 검색">
                        <a href="" class="site-btn2">
                            <img src="../resources/img/main/search.png" style="padding-left: 10px;" alt="">
                        </a>
                    </div>

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
                    <button class="site-btn sb-dark" style="margin-left: 40px; width: 280px; font-size: 15px;" type="button" onclick="location.href='ch-register.html'">
                        	챌린지 등록하기
                        <img src="../resources/img/arrow-righ-3.png" alt="">
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
                    <!-- 카테고리 -->
						<div id="category">
							<div class="ca health" onclick="health();">건강</div>
							<div class="ca hobby">취미</div>
							<div class="ca selfImprovement">자기계발</div>
							<div class="ca economy">경제</div>
							<div class="ca life">생활</div>
							<div class="ca except">그외</div>
						</div>
					<div class="row">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
                        </div> -->


                        
						


                        <div class="sampleArea">

                            <div id="ch_confirmPhotoListArea">
                                <div id="photoList">
                                    <a href="ch-detail.html">
                                        <div class="photoBox">                                        
                                            <img src="../resources/img/blog/1.jpg" alt=""/>
                                            <div class="textBox">
                                                <h5>참가 전 챌린지 상세보기 가기</h5>
                                                <br>
                                                <h5>W10,000</h5>
                                                <h5 style="float: right;">2020-03-24</h5>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="ch-end.html">
                                        <div class="photoBox">
                                            <img src="../resources/img/blog/1.jpg" alt="">
                                            <div class="textBox">
                                                <h5>마감된 챌린지 상세보기</h5>
                                                <br>
                                                <h5>W10,000</h5>
                                                <h5 style="float: right;">2020-03-24</h5>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="ch-detailIng.html">
                                        <div class="photoBox">
                                            <img src="../resources/img/blog/1.jpg" alt="">
                                            <div class="textBox">
                                                <h5>진행중인 챌린지 상세보기</h5>
                                                <br>
                                                <h5>W10,000</h5>
                                                <h5 style="float: right;">2020-03-24</h5>
                                            </div>
                                        </div>
                                    </a>
                                    
                                    <div class="photoBox">
                                        <img src="../resources/img/blog/1.jpg" alt="">
                                        <div class="textBox">
                                            <h5>누가 집에 먼저 들어가나</h5>
                                            <br>
                                            <h5>W10,000</h5>
                                            <h5 style="float: right;">2020-03-24</h5>
                                        </div>
                                    </div>
                                    <div class="photoBox">
                                        <img src="../resources/img/blog/1.jpg" alt="">
                                        <div class="textBox">
                                            <h5>누가 집에 먼저 들어가나</h5>
                                            <br>
                                            <h5>W10,000</h5>
                                            <h5 style="float: right;">2020-03-24</h5>
                                        </div>
                                    </div>
                                    <div class="photoBox">
                                        <img src="../resources/img/blog/1.jpg" alt="">
                                        <div class="textBox">
                                            <h5>누가 집에 먼저 들어가나</h5>
                                            <br>
                                            <h5>W10,000</h5>
                                            <h5 style="float: right;">2020-03-24</h5>
                                        </div>
                                    </div>
                                    
                                    <div class="photoBox">
                                        <img src="../resources/img/blog/1.jpg" alt="">
                                        <div class="textBox">
                                            <h5>누가 집에 먼저 들어가나</h5>
                                            <br>
                                            <h5>W10,000</h5>
                                            <h5 style="float: right;">2020-03-24</h5>
                                        </div>
                                    </div>
                                    <div class="photoBox">
                                        <img src="../resources/img/blog/1.jpg" alt="">
                                        <div class="textBox">
                                            <h5>누가 집에 먼저 들어가나</h5>
                                            <br>
                                            <h5>W10,000</h5>
                                            <h5 style="float: right;">2020-03-24</h5>
                                        </div>
                                    </div>
                                    <div class="photoBox">
                                        <img src="../resources/img/blog/1.jpg" alt="">
                                        <div class="textBox">
                                            <h5>누가 집에 먼저 들어가나</h5>
                                            <br>
                                            <h5>W10,000</h5>
                                            <h5 style="float: right;">2020-03-24</h5>
                                        </div>
                                    </div>
                                </div>  
                                    <div class="qnaPaging" style="float: right; margin-right: 7px; margin-top: 20px;">
                                        <a><</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a>●</a>
                                        <a>●</a>
                                        <a>●</a>
                                        <a>●</a>
                                        <a>●</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a>></a>
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
	
	<!--====== Javascripts & Jquery ======-->
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.nicescroll.min.js"></script>
	<script src="../resources/js/circle-progress.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/main.js"></script>

    

	<script>


		var health = document.getElementsByClassName('health');
		var hobby = document.getElementsByClassName('hobby');
		var selfImprovement = document.getElementsByClassName('selfImprovement');
		var economy = document.getElementsByClassName('economy');
		var life = document.getElementsByClassName('life');
		var except = document.getElementsByClassName('except');

		
		$(document).ready(function(){
			$('.health').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.hobby').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.selfImprovement').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.economy').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.life').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.except').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
			});

		});
		
	</script>
	</body>
</html>
