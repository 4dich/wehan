<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>CH_DETAILDOING</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	

	<!-- jquery -->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	
	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/jh-css.css"/>
	<!-- <link rel="stylesheet" href="../resources/css/left_section.css"/>
	<link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>	

	<style>
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
		.about-info{width:348px;}
		.about-info p{font-size:12px;}
	</style>
</head>
<body>
	    <!-- Page Preloder -->
		<div id="preloder">
			<div class="loader"></div>
		</div>
	
		<!-- Main section start -->
		<div class="main-site-warp">

			<%@ include file="/WEB-INF/views/common/menuBar.jsp"%>
			
			<header class="header-section">
				<div class="nav-switch menuIcon msgCount">
					<i class="fa fa-bars"></i>
				</div>
				<!-- <div class="header-social">
					<a href="" style="color: red;">전체 챌린지</a>
					<a href="">프리미엄 챌린지</a>
					<a href="">TOP 10 챌린지</a>
				</div> -->
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
						<div class="challenges-search">
							<input type="text" style="font-size:12px; padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 2px solid black;" placeholder="챌린지 검색">
							<a href="" class="site-btn2"><img src="resources/images/main/search.png" style="padding-left: 10px;" alt=""></a>
						</div>

						<br><br>
	
						<div class="about-info">
						    <p style="font-size: 12px; margin-top:20px;">
			                            나의 도전에 관한 <b>상세 내용</b>입니다.
			                            이 도전을 위해 얼마를 투자했는지,
			                            이 도전을 언제부터 시작했는지 등의
			                            모든 정보는 이 곳에서 확인가능합니다.
                        </p>
						</div>
						
						<button class="site-btn sb-dark" style="font-size: 16px;  border-radius: 3px; width: 347px;" type="button" onclick="location.href='chalList.do'">
							리스트 페이지로 가기
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
					<div class="row">
						<div class="sampleArea" style="display: inline-flex;">
							<div class="col-xl-6">
								<div class="portfolio-item" style="margin-top: 60px;">
									<img src="resources/images/challenge/${ chal.chPicture }" style="height: 626px;" alt="">
									<div class="pi-info">
										<span style="margin-left:45px; font-size:20px; font-weight:bolder;">마감까지</span>
										<h3 style="font-size:65px; color:#ffa722; text-align:center">
											D-<span id='count'></span>
										</h3>
									</div>
								</div>				
							</div>
							<div class="col-xl-6">
								<div class="contact-text-warp">
									<form class="contact-form" style="margin-top: 65px;">
										<div class="row">
											<input type="hidden" name="price" value="${chal.price}">
											<input id="chIdArea" type="hidden" name="chId" value="${chal.chId}">
											<input id="chNameArea" type="hidden" name="chName" value="${chal.chName}">
											
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
													  <button class="btn btn-secondary dropdown-toggle" style="border:0px; background:#8d918d; bottom:6px;"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
												<div class="contents-detail">
													모인 금액 : <strong><span id="tPrice"></span> 원</strong>
												</div>
											</div>
											<br><br><br><br>
											<div class="col-lg-12">
												<div class="contents-detail2">${ chal.chContent }</div>
											</div>											
										</div>
									</form>
									<br><br>
									<button class="site-btn sb-solid mr-3 mb-3" style="color: white; float: right; width: 280px; font-size: 16px;" type="button" onclick="certifyInsert();">
										인증사진 목록가기
										<img src="resources/images/arrow-righ-2.png" alt="">
									</button>
									<input type="hidden" id="loginId" value="${ loginUser.userId }">
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
		
		<script>
		
			function certifyInsert(){
				var list = [];
				list = '${chal.chPeople}'.split(',');	
				var chName = document.getElementById('chNameArea').value;
				var chId = document.getElementById('chIdArea').value;
				var userId = document.getElementById('loginId').value;
				console.log(userId);
				console.log(list);
				console.log(chName);
				console.log(chId);
				//location.href ="ch_certifyPhotoListView.do";
				
				var result = 'ft';
				
				for(var i in list){
					console.log(list[i]);
					if(list[i] == userId){
						result += 't';
					}
				}
				if(result == 'ftt'){
					location.href ="ch_certifyList.do?chId="+chId;
				}else{
					alert("챌린지 참여원이 아닙니다.");	
				}
				/* 챌린지 넘겨서 리스트 출력하기 */
				
				
				
			}
			// 남은 날짜 출력
			
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
						
						$('#tPrice').text((list.length) * price);
						
						for(var i = 0; i < data.length; i++) {
							
						// 주최자는 이름 옆에 주최자로 써주기					
							if(data[i].userId == hostId){
								// 내 아이디 누르면 내 프로필로 이동 (내가 주최자)
								if( '${loginUser.userId}' == data[i].userId) {
								
									$a = $('<a>').attr({'class':'dropdown-item', 
														'value':data[i].userId, 
														'href' : 'my_profileView.do'});
									$strong = $('<strong>').text(data[i].userNickname);
									
									
									$('.dropdown-menu').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel + '&nbsp;＜주최자＞'));
								
								} else { // 친구 아이디를 누르면 친구 프로필로 이동 (친구가 주최자)
									$a = $('<a>').attr({'class':'dropdown-item', 
										'value':data[i].userId, 
										'href' : 'other_profileView.do?otherId=' + data[i].userId});
									$strong = $('<strong>').text(data[i].userNickname);
					
					
									$('.dropdown-menu').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel + '&nbsp;＜주최자＞'));
								}
							} 
							// 주최자 아니면 이름 옆에 주최자라고 안써줌
							else {
								// 내 아이디 누르면 내 프로필로 이동 & <나> 라고 써줌
								if( '${loginUser.userId}' == data[i].userId) {
									
									$a = $('<a>').attr({'class':'dropdown-item', 
														'value':data[i].userId, 
														'href' : 'my_profileView.do'});
									$strong = $('<strong>').text(data[i].userNickname);
									
									
									$('.dropdown-menu').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel + '&nbsp;＜나＞'));
								
								} else { // 친구 아이디를 누르면 친구 프로필로 이동
									$a = $('<a>').attr({'class':'dropdown-item', 
										'value':data[i].userId, 
										'href' : 'other_profileView.do?otherId=' + data[i].userId});
									$strong = $('<strong>').text(data[i].userNickname);
					
					
									$('.dropdown-menu').append($a.append($strong).append('&nbsp;&nbsp;level.' + data[i].userLevel));
								}
							}
						}
					}, error:function(){
						console.log('에러');
					}
					
				});
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
