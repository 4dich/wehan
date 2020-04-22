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
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	
	<!-- JQuery -->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	
	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/jh-css.css"/>
	<link rel="stylesheet" href="resources/css/style.css"/>
	
	
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
									<img src="resources/images/challenge/${ chal.chPicture }" style="height: 626px;" alt="#">
								</div>				
							</div>
							<div class="col-xl-6">
								<div class="contact-text-warp">
									<form class="contact-form" style="margin-top: 65px;">
										<div class="row">
										<input type="hidden" name="chId" value="${chal.chId}">
										<input type="hidden" name="userId" value="${chal.userId}">
										<input type="hidden" name="chName" value="${chal.chName}">
										<input type="hidden" name="chPicture" value="${chal.chPicture}">
										<input type="hidden" name="startDate" value="${chal.startDate}">
										<input type="hidden" name="endDate" value="${chal.endDate}">
										<input type="hidden" name="category" value="${chal.category}">
										<input type="hidden" name="ceMethod" value="${chal.ceMethod}">
										<input type="hidden" name="price" value="${chal.price}">
										<input type="hidden" name="totalPrice" value="${chal.totalPrice}">
										<input type="hidden" name="minPerson" value="${chal.minPerson}">
										<input type="hidden" name="maxPerson" value="${chal.maxPerson}">
										<input type="hidden" name="chPeople" value="${chal.chPeople}">
										<input type="hidden" name="chPeopleCount" value="${chal.chPeopleCount}">
										
											<div class="col-lg-12 message-body">
												<div class="contents-detail" style="font-size:30px; display:inline-flex;" name = "chName" value="${ chal.chName }">
													<strong>${ chal.chName }</strong>
													<h5 style="margin-top:13px" name="category" value="${ chal.category }">
													<c:if test='${ chal.category eq "건강" or chal.category eq "health"}'>
														<span class="health" >건강</span>
													</c:if>
													<c:if test='${ chal.category eq "자기개발" or chal.category eq "motivated" or chal.category eq "자기계발"}'>
														<span class="motivated">자기개발</span>
													</c:if>
													<c:if test='${ chal.category eq "경제" or chal.category eq "economy"}'>
														<span class="economy">경제</span>
													</c:if>
													<c:if test='${ chal.category eq "취미" or chal.category eq "hobby"}'>
														<span class="hobby">취미</span>
													</c:if>
													<c:if test='${ chal.category eq "생활" or chal.category eq "life"}'>
														<span class="life">생활</span>
													</c:if>
													<c:if test='${ chal.category eq "그외" or chal.category eq "etc"}'>													
														<span class="etc">그외</span>
													</c:if>	
													</h5>		
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail">
													기간 : <strong>${ chal.startDate } ~ ${ chal.endDate }</strong>
												</div>
											</div>		
											<div class="col-lg-12">
												<div class="contents-detail">
													참여인원 : <strong>${ chal.chPeopleCount } 명</strong>

													<div class="btn-group dropright">
													  <button class="btn btn-secondary dropdown-toggle" style="border:0px; background:#8d918d; bottom:6px;"  
													  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													   	참가자 목록
													  </button>
													  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
													  	
													  </div>
													</div>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail" style="height:auto;">
													인증 방법 : <br>
													<strong>${ chal.ceMethod }</strong>
												</div>
											</div>
											
											<div class="col-lg-12">
												<div class="contents-detail"  name="price" value="${ chal.price }">
													참여 금액 : <strong>${ chal.price } 원</strong>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="contents-detail" name="totalPrice">
													모인 금액 : <strong><span id="tPrice"></span> 원</strong>
												</div>
											</div>
											<br><br><br><br>
											<div class="col-lg-12">
												<div class="contents-detail2" name="chContent" value="${ chal.chContent }">
													${ chal.chContent }
												</div>
											</div>
										</div>
									<br><br>
										<button class="site-btn sb-solid mr-3 mb-3" id="btn" style="color: white; float: right; width: 280px; font-size: 16px;" type="submit">
										챌린지 삭제하기
										<img src="resources/images/arrow-righ-2.png" alt="">
									</button>
									</form>	
								</div>
							</div>
						</div>
                    </div>
				</div>
			</div>
		</div>
		<!-- Page end -->
		
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
			All rights reserved </p>
		</div>
	
	<!-- Main section end -->

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
	<!-- 남은 날짜 출력 -->
	$(function(){
		var today = new Date();
		var a = '${chal.endDate}';
		var b = a.replace(/-/g,",");
		
		var endDate = new Date(b);
		
		var count = endDate.getTime() - today.getTime();
	 	
		count = Math.ceil(count / (1000*60*60*24));
		
		$('#count').text(count);
			
	});

	// 참여인원 목록 리스트 가져오기 ajax
	$(function(){
		var list = [];
		list = '${chal.chPeople}'.split(',');	
		
		var hostId = '${chal.userId}';
		var price = '${ chal.price }';
		
		
		$.ajaxSettings.traditional=true;
		$.ajax ({					
			url:'getChallengerList.do',
			data:{'list': list}, 
			type : 'post',
			success:function(data){	
				
				$('#tPrice').text((list.length-1) * price);
				
				for(var i = 0; i < data.length; i++) {
					
					// 내 아이디를 누르면 내 프로필로 이동
					
					if(data[i].userId == hostId){
							
							$a = $('<a>').attr({'class':'dropdown-item'});
						
							
							$strong = $('<strong>').text(data[i].userNickname);
			
			
							$('.dropdown-menu').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel + '&nbsp;＜주최자＞'));
						
					} else {
							$a = $('<a>').attr({'class':'dropdown-item'});
							
							$strong = $('<strong>').text(data[i].userNickname);
			
							$('.dropdown-menu').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel));
			
						
					}
				}
			}, error:function(){
				console.log('에러');
			}
			
		});
	});
	
	
	// 유저가 참여한 챌린진지 확인해서 버튼 생성
	$(function(){
		var list = [];
		list = '${chal.chPeople}'.split(',');
		
		var btn = $('#btn');
		
		var userId = '${loginUser.userId}';
		var check;
		
		for(var i = 0; i < list.length; i++){
			if(list[i] == userId) {
				btn.attr({
							'class':'site-btn sb-dark',
							'type' : 'button'
						}).css({'color':'black', 'cursor':'default'}).text('이미 참여한 챌린지입니다.');
			}
		}
		
		
	});
		
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
