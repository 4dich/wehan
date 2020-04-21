<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>AD_CHALLENEGEDETAIL</title>
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
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<!-- bootstrap4 toggle -->
	<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
	<style>
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
		input{
		 background:white;
		 border:none;
		 -webkit-writing-mode: horizontal-tb !important;
    	 text-rendering: auto;
    	 letter-spacing: normal;
   		 word-spacing: normal;
   		 text-transform: none;
   		 text-indent: 0px;
   		 text-shadow: none;
   		 display: inline-block;
   		 text-align: start;
   		 -webkit-appearance: textfield;
   		 -webkit-rtl-ordering: logical;
   		 font: 400 13.3333px Arial;
		 font-style: italic;
		 font-size:14px;
		 width:300px;
		 }
		.contents-detail {
			width: 100%; 
			height: 40px; 
			padding: 0 22px; 
			margin-bottom: 35px; 
			font-size: 20px;
			font-family: 'Nanum Gothic Coding', monospace;
			border: 2px solid #e1e1e1; 
			border-top: none; 
			border-left: none; 
			border-right: none;
		}

		.contents-detail2 {
			width: 100%; 
			height: 150px; 
			padding: 10px 22px 10px 22px; 
			margin-bottom: 15px; 
			font-size: 20px; 
			font-family: 'Nanum Gothic Coding', monospace;
			border: 2px solid #e1e1e1; 
		}
		
		.contact-form input, .contact-form textarea {
			border: 0;
			background: none !important;
		}
	</style>
	<!--</head>-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
	
		<include file="/WEB-INF/views/common/ad_menuBar"/>
		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<!-- 로고구역 -->		
				<div class="mb-warp">
					<a href="homepage/index.html" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
			
					<!-- 관리자 사이드 메뉴 -->
					<div class="about-info">
						<h2>챌린지 정보</h2>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<!-- <a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br> -->
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<!-- <a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br> -->
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="ad_questionsList.do" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->

			<!-- 현재 height : 1080px 적용되어있음 -->
				<div class="page-section contact-page">
				<div class="contact-section">
					<div class="row">
						<div class="sampleArea" style="display: inline-flex;">
							<div class="col-xl-6">
								<div class="portfolio-item" style="margin-top: 60px;">
									<img src="resources/img/portfolio/1.jpg" alt="#">
									<div class="pi-info">
										<h3 style="padding-left: 60px; padding-bottom: 20px;">D-31일</h3>
									</div>
								</div>				
							</div>
							<div class="col-xl-6">
								<div class="contact-text-warp">
										<div class="row" style="margin-top:80px;">
											<div class="col-lg-12">
												<div class="contents-detail">
													<textarea style="width:100%; height:100%; background-color:white; resize: none; border:0;" id="chChName" name="chChName" >${ chal.chName }</textarea>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chCategory" value="${ chal.category }" disabled>
													${ ch.category }
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chChId" value="${ chal.chId }" disabled>
													${ ch.chId }
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chChPeople" value="${ chal.chPeople }" disabled>
													${ ch.chPeople }
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chDeadLine" value="${ chal.startDate }" disabled>
													${ ch.startDate }
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chEndDate" value="${ chal.endDate }" disabled>
													${ ch.endDate }
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chCeMethod" value="${ chal.ceMethod }" disabled>
													${ ch.ceMethod }
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chPrice" value="${ chal.price }" disabled>
													${ ch.price }
												</div>
											</div>
											<div class="col-lg-6">
												<div class="contents-detail">
													<input type="text" class="challengeDetail" name="chTotalPrice" value="${ chal.totalPrice }" disabled>
													${ ch.totalPrice }
												</div>
											</div>
											<br><br><br><br>
											<div class="col-lg-12">
												<div class="contents-detail2" style="padding:0;">
													<textarea id="chChContent"  class="challengeDetail"  name="chChContent"  
													disabled style="width:100%; height:100%; background-color:white; resize: none; border:0;
													padding:10px;">${ chal.chContent }</textarea>
												</div>
											</div>
										</div>
										<div style="margin-top:10px; font-weight: 700; display:inline-block"><i>챌린지 수정하기&nbsp;</i>
				       					<input id="toggle3" style="margin-left:60px;" type="checkbox" checked data-toggle="toggle" 
				       					data-on="<i class='fa fa-lock' aria-hidden='true'></i> 수정하기" 
				       					data-off="<i class='fa fa-unlock' aria-hidden='true'></i> 수정중" 
				       					data-onstyle="dark" data-offstyle="outline-dark" onchange="toggleBtn3();"></div>
								</div>
							</div>
						</div>
                    </div>
				</div>
			</div>
		<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
			All rights reserved </p>
		</div>
	</div>
	<!-- Main section end -->

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
		});
		
		
		function toggleBtn3(){
	    	if(document.getElementById('toggle3').checked==false){
	    		$('#chChName').attr('disabled',false);
	    		$('#chChContent').attr('disabled',false);
	    		
	    		cate.on("click",function(){
	    			$(this)[0].textContent = 1 - $(this)[0].textContent;
	            });
	    		
			}else{
				
				
				$('#intro').attr('disabled',true);
				$('#goal').attr('disabled',true);
				var userId = $('#userId')[0].innerText;
	   			var intro = $('#intro')[0].value;
	   			var goal = $('#goal')[0].value;
				
	   			myCate=""
	   			
	   			
	   			var interest = myCate;
	   			
	   			cate.off("click");
	    		
	    		
			}
	    }
		
	</script>
	
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
