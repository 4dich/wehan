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
	<link rel="stylesheet" href="resources/css/bootstrap.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	

	<!-- 피드 상세보기 CSS -->
	<link rel="stylesheet" href="resources/css/fidDetail-sr.css"/>
	
	<!-- 회원전용 사이드바 CSS -->
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	
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
						<h2>인증글 정보</h2>
						<a href="pay.html" id="ad_profile" class="infoMenu">결제정보</a><br><br>
						<a href="adminProfile.html" id="ad_profile" class="infoMenu">회원정보</a><br><br> <!-- 사이드 메뉴들 -->
						<a href="ad-chal.html" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="admin_notice.html" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="admin_qna.html" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section elements-page">
				<div class="elements-section">
					<div class="col-md-12"> 
						<div class="col-md-10"> 
							<div class="card">								
								<!-- 피드 사용자 정보창 -->								
								<div class="card-header">										
									<ul class="chat-list">
										<li class="in">
											<div class="chat-img" style="width: 70px;">
												<img alt="Avtar" src="resources/images/user/01.jpg">
											</div>
											<div class="chat-body">
												<div style="margin-top: 15px;">
													<h4 style="color: white;">
														${ c.ceContent }
														<a href="mypageProfile.html" style="color:white" class="fa fa-home"></a>
													</h4>
													<br>
													<h6 style="color: white;">
														주 3회 팩하기
														<span class="unread">자기개발</span>
													</h6>
													<p style="color: white;">${ c.ceDate }</p>
													<p style="color: white;">비공개여부 : ${ c.ceDel }</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
								
								<!-- 사진 나오는 곳 -->
								<div class="card-body profile-userpic" style="text-align: center;">
									<img src="resources/images/certify/${c.cePicture}" class="img-responsive" alt=""> 
								</div>

								<!-- 본문 나오는 곳 -->
								<div class="card-body">
									<span>
									
									</span>
								</div>																	
							</div>
						</div> 
						
						<!-- 댓글 -->
						<div class="col-md-10"> 
							<div class="portlet light bordered">
								<div class="portlet-title tabbable-line"></div>
								<div class="portlet-body">
									<div>									
										<!-- 댓글 쓰기 -->
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="home" align="center">
												<!-- <form> -->
													<div class="form-group" style="text-align: right;">														
														
														<button id="btnNotOpen" class="site-btn sb-dark" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															비공개 처리
														</button>
														<button id="btnList" class="site-btn sb-dark" type="button" onclick="location.href='ch_confirmPhotoList.html'" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															목록가기
														</button>
													</div>
												<!-- </form> -->
											</div>
										</div>

										<!-- 댓글 읽기 -->
										<div class="card" style="margin-bottom: 20px;">
											<div class="card-body">
												<div class="row">		
													<div class="be-comment-block">
														<h1 class="comments-title">Comments (1)</h1>
														
													</div>									
													<div class="media g-mb-30 media-comment">
														<img class="d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15" src="https://bootdey.com/images/Content/avatar/avatar7.png" alt="Image Description">
														<div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
															<div class="g-mb-15">
																<h5 class="h5 g-color-gray-dark-v1 mb-0">
																	하핳하
																	<a href="mypageProfile.html" style="color:black" class="fa fa-home"></a>
																</h5>
																<span class="g-color-gray-dark-v4 g-font-size-12">2020-03-26</span>
															</div>													
															<p>
																안녕하세요!
															</p>	
														</div>
													</div>
												</div>
											</div>
										</div>
										
										
										
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
		$("#btnNotOpen").on("click",function(){
			alert("해당 인증사진을 비공개 처리하시겠습니까?");
			location.href="ad_certifyDetailUpdate.do?ceId="+ ${c.ceId};
		});
		$("#btnList").on("click",function(){
			location.href="ad_certifyView.do";
		});
	});
	
	function getReplyList() {
		var ceId = ${c.ceId};
		
		$.ajax({
			url : "replyList.do",
			data : {ceId:ceId},
			//  	속성명 : 위에 선언된 변수명
			dataType: "json",
			success : function(data){
				
			},error:function(){
				console.log("전송실패");
			}
		});
		
	}
	</script>

	</body>
</html>
