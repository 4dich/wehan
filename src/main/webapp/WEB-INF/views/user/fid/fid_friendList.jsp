<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="stylesheet" href="resources/css/fidRecommend.css"/>
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>	
	<style>
	#fidListArea {
    width: 100%;
    height: 100%;
    margin-left: 15px;
    margin-top: 15px;
	}
	.qnaPaging{
	height: 10%;
    position: absolute;
    bottom: 0;
    text-align: center;
    width: 70%;
	}
	.about-info{width:348px;}
	.about-info p{font-size:12px;}
	</style>
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
				<a href="fid_ch_recommendView.do" >추천피드</a>
                <a href="fid_friendListView.do" style="color: red;">친구피드</a>
                <a href="fid_followView.do">팔로우</a>
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

                    <div>
						<input id="searchBox" class="searchBox" type="textarea" style="font-size:12px; padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 2px solid black;" placeholder="유저를 검색해주세요">
						<div id="search" class="site-btn2" style="padding:5px 5px 5px 5px; width:45px;">
						<img src="resources/images/main/search.png"  alt="" style="padding-left:10px;"></div>
					</div>
                   
                    <br><br>
					<!-- 서브메뉴 -->
					<div class="about-info" style="margin-top:70px;">
					<h2>피드</h2>
						<p>
                            친구들의 피드와 추천피드를 둘러보고
                            나와 비슷한 유저를 찾아보고 팔로우 할 수 있습니다. 
                            다른 유저들은 어떤챌린지를 어떻게 하고 있는지
                            구경하러 갈까요?

						</p>
					</div>
					                    
                    
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

						<div id="fidListArea">
							<!-- 피드 디테일로 연결 -->
							
								<!-- 인증사진리스트영역 -->
								<div id="photoList">
								
									<c:forEach var ="f" items="${ list }">
								
									<div class="photoBox" onclick="location.href='fid_detailView.do';">
										<!-- 인증사진 -->
										<input type="hidden" value="${ f.ceId }">
										<img src="resources/images/certify/${ f.cePicture }" alt="">
										<!-- 인증날짜 -->
										<p class="fidUploadDate">${ f.ceDate }</p>
										<!-- 인증유저 -->
										<p class="nick">${ f.nickName }</p>
										<p class="fidName">${ f.chName }</p>
									</div>
								
								</c:forEach>
							

							</div>

							
							<div class="qnaPaging">
								<c:if test="${pi.currentPage eq 1 }">
								<
								</c:if>
								
								<c:if test="${ pi.currentPage ne 1 }">
									<c:url var="before" value="fid_ch_recommendView.do">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
									</c:url>
									<a href="${ before }">&lt;</a> &nbsp;
								</c:if>
							
								<!-- 페이지 -->
								<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<font color="red" size = "4"><b>[${ p }]</b></font>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="pagenation" value="fid_ch_recommendView.do">
											<c:param name="currentPage" value="${ p }"/>
										</c:url>
										<a href="${ pagination }">${p}</a>
									</c:if>
								</c:forEach>
								
								<!-- 다음 -->
								<c:if test="${pi.currentPage eq pi.maxPage }">
									>
								</c:if>
								<c:if test="${pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="fid_ch_recommendView.do">
										<c:param name="currentPage" value="${pi.currentPage + 1 }"/>
									</c:url>
									<a href="${after}">&gt;</a>
								</c:if>
								
						
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
		$('.photoBox').click(function(){
		var ceId = $(this).find("input[type=hidden]").val();
		var currentPage = ${ pi.currentPage };
		console.log(ceId);
		location.href = "fid_detailView.do?ceId="+ceId+"&currentPage=" + currentPage;
		});
	</script>
	</body>
</html>
