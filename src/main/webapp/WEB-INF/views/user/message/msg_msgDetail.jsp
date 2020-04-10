<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>WEHAN - 위대한 한걸음</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/images/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>


	<!-- 메시지 CSS -->
	<link rel="stylesheet" href="resources/css/messageroom-sr.css"/>
	
	<!-- 회원전용 사이드바 CSS -->
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->


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
		
		<c:import url="/WEB-INF/views/common/ad_menuBar.jsp"/>	
		
		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<a href="my_profileView.do" >Profile</a>
                <a href="my_challengeView.do">My Challenge</a>
				<a href="my_diaryView.do">My Diary</a>
				<a href="msg_msgListView.do" style="color: red;">Message</a>
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
						<h2>메시지 보내기</h2>
						<p>
							친구와 대화를 나눠보세요.<br>
							함께 도전하면 성공할 확률도 올라갑니다. <br><br>
						</p>
						<a  class="site-btn sb-dark" href="msg_friendListView.do" style="color:black">
							친구 목록
							<img src="resources/images/arrow-righ-3.png" alt="">
						</a>
						<br><br>
						<a class="site-btn sb-dark" href="msg_msgListView.do" style="color:black">
							메시지 목록
							<img src="resources/images/arrow-righ-3.png" alt="">
						</a>
					</div>
					<!-- <ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul> -->
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section elements-page">
				<div class="elements-section">
					<div class="container content">
						<div class="row">
							<div class="col-xl-10 col-lg-10 col-md-10 col-sm-12 col-12">
								<div class="card" style="margin-bottom: 20px;">
									<div class="card-header">
										<!-- 채팅창 친구/챌린지 정보 -->
										<ul class="chat-list">
											<li class="in">
												<div class="chat-img" style="width: 70px;">
													<img alt="Avtar" src="resources/images/user/${fi.fImg}">
												</div>
												<div class="chat-body">
													<div style="margin-top: 15px;">
														<h5 style="color: white;">
															<input type="hidden" value="${fi.fId}">
															${fi.fName}
															<a href="mypageProfile.html" class="fa fa-home" style="color:white"></a>
															<span class="delete">메시지 삭제</sapn>
														</h5>
														<h6 style="color: white;"></h6><br>
														<p style="color: white;">
															${fi.fIntro}
														</p>
													</div>													
												</div>
											</li>
										</ul>
									</div>

									<!-- 메시지 내용 시작 -->
									<div class="card-body height3">
										<ul class="chat-list">
										
										<c:forEach var="m" items="${list}">
											<!-- 친구 메시지 -->
											<c:if test="${ sessionScope.loginUser.userId ne m.mSenderId }">												
												<li class="in">	
													<div class="chat-img">
														<input type="hidden" class="msgId" value="${m.mId}">
														<img alt="Avtar" src="resources/images/user/${m.mImg}">
													</div>
													<div class="chat-body">
														<div class="chat-message">
															<h5>${ m.mSender  }
																<p>${ m.mDate }</p>
															</h5>														
															<p>${ m.mContent }</p>
														</div>
													</div>
												</li>
											</c:if>	
											<!-- 내 메시지 -->
											<c:if test="${ sessionScope.loginUser.userId eq m.mSenderId }">												
												<li class="out">
													<div class="chat-img">
													<input type="hidden" class="msgId" value="${m.mId}">
														<img alt="Avtar" src="resources/images/user/${m.mImg}">
													</div>
													<div class="chat-body">
														<div class="chat-message">
															<h5>${ m.mSender }
																<p>${ m.mDate }</p>
															</h5>
															<p>${ m.mContent }</p>
														</div>
													</div>
												</li>
											</c:if>	
										</c:forEach>
											
										</ul>
									</div>
									<br><br><br><br><br><br>
									<!-- 메시지 입력 -->
									<div class="bottom_wrapper clearfix">
										<div class="message_input_wrapper">
											<input class="message_input" id="content" placeholder="메시지를 넣어주세요" />
										</div>										
										<button type="button" class="send_message" id="sendButton">Send</button>										
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
	
	<script>
		
	
		// 메시지 전송용
		$('#sendButton').on("click",function(){
			var fId = '${fi.fId}';
			var content = $('#content').val();
			
			$.ajax({
				url:"saveMsgContent.do",				
				data:{
					"fId" : fId, 
					"content" : content},
				type:"post",
				success:function(data){
					getMsgList();
					/* location.href="msgDetail.do?fId=" + fId; */
				}, error:function(){
					console.log("오류")
				}
				
			});
			
		});
		
		// 메시지 받기용
		function getMsgList(){
			var myId = '${sessionScope.loginUser}';
			var fId = '${fi.fId}';
			var mId = $('.msgId');
			
			$.ajax({
				url:"getMsgRealtime.do",
				data:{fId:fId},
				dataType:"json",
				success:function(data){
					
					console.log(data);
					console.log(mId[0].val());
					console.log(data[1].mId);
					console.log(mId.length);
					
					for(var i = 0; i < mId.length; i++){
						
						if(mId[i] != data[i].mId){
							console.log("mId"+ mId[i].val() + ": data" + data[i].mId);
						} else {
							console.log("시바");
						}
					}
					
					
					
				}, error:function(){
					console.log("오류");
				}
				
				
			});
			
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
