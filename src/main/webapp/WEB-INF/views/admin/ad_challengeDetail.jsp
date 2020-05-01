<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
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
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<link rel="stylesheet" href="resources/css/adminmargin.css"/>
	<link rel="stylesheet" href="resources/css/padding.css"/>
	<style>
		.about-info{margin:0;}
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
			border: 1px solid #bbbbbb; 
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
	
		<c:import url="/WEB-INF/views/common/ad_menuBar.jsp" />
		
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
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
			
					<!-- 관리자 사이드 메뉴 -->
					<div class="about-info">
						<h2>챌린지 정보</h2>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="qnaListView.do" id="qnaList" class="infoMenu">문의사항</a><br><br>
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
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
									<form action="deleteCh.do" class="contact-form" method="post" style="margin-top: 65px;">
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
												<div style="font-size:30px; display:inline-flex;">
													<strong>${ chal.chName }</strong>
													<h5 style="margin-top:13px">
													<c:if test='${ chal.category eq "건강" or chal.category eq "health"}'>
														<span class="health">건강</span>
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
												<br><br>
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
													  <div class="dropdown-menu challengerList" aria-labelledby="dropdownMenuButton">
													  	
													  </div>
													</div>
												</div>
											</div>
											
											<div class="col-lg-12">
												<div class="contents-detail">
													성공인원 : <strong><span id="successChal"></span></strong>
													<div class="btn-group dropright">
													  <button class="btn btn-secondary dropdown-toggle successBtn" style="border:0px; background:#8d918d; bottom:6px;"  
													  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													   	성공자 목록
													  </button>
													  <div class="dropdown-menu successList" aria-labelledby="dropdownMenuButton">
													  	
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
											<br><br><br>
											<div class="col-lg-12">
												<div class="contents-detail2" name="chContent" value="${ chal.chContent }">
													${ chal.chContent }
												</div>
											</div>
										</div>
									<br><br>
									
										 <div id="test" style="display:none;" ></div>
								  			<div id="startDate" style="display:none;">${chal.startDate}</div>
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
	$(document).ready(function(){
		var today = new Date();
		var a = '${chal.endDate}';
		var b = a.replace(/-/g,",");
		
		var endDate = new Date(b);
		
		var count = endDate.getTime() - today.getTime();
	 	
		count = Math.ceil(count / (1000*60*60*24));
		
		
		$('#eDate').val(count);
	});
	
	$(function(){
		var date = new Date();
		var year = date.getFullYear();
		var month = (1 + date.getMonth());
		month = month >= 10 ? month : '0' + month;
		var day = date.getDate();
		day = day >= 10 ? day : '0' + day;
		$('#test').html(year+month+day);
		var currentDate = parseInt($('#test').text());
		
		var startDate = $('#startDate').text();
		var ss = startDate.split('-');
		var cc = "";
		for(var i=0;i<ss.length;i++){
			cc += ss[i];
		}
		var startDay = parseInt(cc); 
		if(currentDate>=startDay){
			$('#btn').remove();
		}
		
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
				
				$('#tPrice').text((list.length) * price);
				
				for(var i = 0; i < data.length; i++) {
					
					// 내 아이디를 누르면 내 프로필로 이동
					
					if(data[i].userId == hostId){
							
							$a = $('<a>').attr({'class':'dropdown-item'});
						
							
							$strong = $('<strong>').text(data[i].userNickname);
			
			
							$('.challengerList').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel + '&nbsp;＜주최자＞'));
						
					} else {
							$a = $('<a>').attr({'class':'dropdown-item'});
							
							$strong = $('<strong>').text(data[i].userNickname);
			
							$('.challengerList').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel));
			
						
					}
				}
			}, error:function(){
				console.log('에러');
			}
			
		});
	});
		
	
	// 성공인원 가져오기
	$(function(){
		var hostId = '${chal.userId}';
		var chId = '${chal.chId}';
		var endDate = new Date('${ chal.endDate }');
		var startDate = new Date('${ chal.startDate }');
		// 챌린지 기간 일수 (챌린지 마감일 - 챌린지 시작일)
		var date = (endDate - startDate) +1; 
		var time = Math.ceil(date/ (1000*60*60*24));
		// 챌린지 도전한 사람 수 
		var count = '${ chal.chPeopleCount }';	
		
		// 챌린지 끝나고 지난 기간 구하기 (마감일 - 오늘)
		var today = new Date();
		var a = '${chal.endDate}';
		var b = a.replace(/-/g,",");
		
		var endDate = new Date(b);
		// 챌린지 끝나고 지난 기간
		var t = endDate.getTime() - today.getTime();
	 	
		t = Math.ceil(t / (1000*60*60*24));
		
		
		// 마감 안된 챌린지면 진행중인 챌린지 나오기
		if(t > 0){
			$('#successChal').text('진행중인 챌린지입니다.');
			$('.successBtn').css('display','none');			
		}
		
		//마감된 챌린지면 성공인원 수 및 리스트 나오기
		else if(t < 0) {
		// 성공인원 수 구하기
		$.ajax({
			url:'getSuccessRate.do',
			type:'post',
			data:{'chId':chId,
				  'time':time},
			success:function(data){
				
				console.log(data);
				// 성공인원 수 넣기
				$('#successChal').text(data + ' 명');
				
				
			}, error:function(){
				console.log('error');
			}
		});
		
		// 성공인원 목록 가져오기
		$.ajax({
			url:'getSuccessList.do',
			type:'post',
			data:{'chId':chId,
				  'time':time},
			success:function(data){
				
				for(var i = 0; i < data.length; i++) {
					if(data[i].userId == hostId){
						
						$a = $('<a>').attr({'class':'dropdown-item'});
					
						
						$strong = $('<strong>').text(data[i].userNickname);
		
		
						$('.successList').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel + '&nbsp;＜주최자＞'));
					
					} else {
						$a = $('<a>').attr({'class':'dropdown-item'});
						
						$strong = $('<strong>').text(data[i].userNickname);
		
						$('.successList').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel));
			
						
					}
				} 
				
			}, error:function(){
				console.log('오류');
			}
		});
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
