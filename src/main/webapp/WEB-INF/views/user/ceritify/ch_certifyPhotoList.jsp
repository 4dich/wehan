<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
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
	<link rel="stylesheet" href="resources/css/ch_confirmPhotoList.css"/>
	<link rel="stylesheet" href="resources/css/style.css"/>	
	

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

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

                   <!--  <div class="challenges-search">
						<input type="textarea" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 검색">
                        <a href="#" class="site-btn2">
						<img src="resources/images/main/search.png" alt=""></a>
                    </div> -->
                    <!-- <div class="challenges-search">
						<input type="textarea" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 검색">
                        <a href=""><img src="img/arrow-righ-3.png" style="padding-left: 10px;" alt=""></a>
                    </div> -->
                    <br><br>
					<!-- 서브메뉴 -->
					<div class="about-info">
						<h2>인증사진리스트</h2>
						<p>"내가 도전하는 챌린지의 <b>인증사진리스트</b>입니다.<br>
							같이 도전하는 챌린져들의 인증샷을 <br>
							확인할 수 있으며, 나의 인증샷을 올려 <br>
							챌린지를 활성화 시켜보세요"
						</p>
					</div>
					                    
					<button id="challengeBack" class="site-btn sb-dark" style="margin-left: 15px; width: 280px; font-size: 15px;" type="button">
						챌린지로 돌아가기
						<img src="resources/images/arrow-righ-3.png" alt="">
					</button>
					<!-- <ul class="contact-info">
						<li>1525  Boring Lane, Los Angeles, CA</li>
						<li>+34 56672 9984 22</li>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					<a href="#" class="site-btn">see my portfolio <img src="img/arrow-right.png" alt=""></a> -->
					
				
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
                       
						<!-- 인증사진 -->

						<div id="ch_confirmPhotoListArea">
							<div id="buttonArea">
								<div class="challengeName">【      ${  list[0].chName }  】</div>
								<input type="button" value="인증등록" onclick="location.href='challengeRegister.html'">
							</div>
							<!-- 인증사진리스트영역 -->
							<div id="photoList">
							
								<c:forEach var ="c" items="${ list }">
								
									<div class="photoBox">
										<!-- 인증사진 -->
										<input type="hidden" value="${ c.ceId }">
										<img src="resources/images/certify/${ c.cePicture }" alt="">
										<!-- 인증날짜 -->
										<p class="confirmDate">${ c.ceDate }</p>
										<!-- 인증유저 -->
										<p class="nick">${ c.nickName }</p>
									</div>
								
								
								</c:forEach>
								
								<input type="hidden" id="chId" value="${ list[0].chId }">


							</div>




							<!-- 인증사진 리스트 끝 -->



						</div>

						<!-- 인증사진 끝 -->
						
						
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
	$(function(){
		var chId = $('#chId').val();
		console.log(chId);
		var check = 'chal';
		console.log(check);
		$('.photoBox').click(function(){
			var ceId = $(this).find("input[type=hidden]").val();
			var currentPage = ${ pi.currentPage };
			console.log(ceId);
			location.href = "fid_detailView.do?ceId="+ceId+"&currentPage=" + currentPage+"&check="+check;
		});

		$('#challengeBack').click(function(){
			 location.href = "hiddenDetailInList.do?chId="+chId;
		 });
		
	});
	</script>
	</body>
</html>
