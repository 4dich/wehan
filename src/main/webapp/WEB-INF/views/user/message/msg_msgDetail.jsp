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
		
		<c:import url="/WEB-INF/views/common/menuBar.jsp"/>	
		
		
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
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
						<a class="site-btn sb-dark" href="getMsgList.do" style="color:black">
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
													<input type="hidden" value="${list[0].mrId}">
												<div class="chat-img" style="width: 70px;">
													<img alt="Avtar" src="resources/images/user/${fi.fImg}">
												</div>
												<div class="chat-body">
													<div style="margin-top: 15px;">
														<h5 style="color: white;">
															<input type="hidden" value="${fi.fId}">
															${fi.fName}
															<a href="mypageProfile.html" class="fa fa-home" style="color:white"></a>
															<span class="delete" style="cursor:pointer;" onclick="msgDelete();">
																메시지 삭제
															</sapn>
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
										<ul class="chat-list messageBody">
										<%-- 메시지가 없으면 --%>
										<c:if test="${ empty list }">
											<div id="emptyMsg" style="text-align:center;">
												<br><br>
												친구에게 메시지를 보내보세요!<br><br>
											</div>
										</c:if>
										
										<%-- 메시지가 있으면 --%>
										<c:if test="${ !empty list }">									
										<c:forEach var="m" items="${list}">
											<!-- 친구 메시지 -->
											<c:if test="${ sessionScope.loginUser.userId ne m.mSenderId }">												
												<li class="in">	
													<div class="chat-img">
														<input type="hidden" class="msgId" value="${m.mId}">
														<img alt="Avtar" class="mImg" src="resources/images/user/${m.mImg}">
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
										</c:if>
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
		
		// 엔터키로 메시지 전송
		$('#content').keyup(function(event){
			if(event.keyCode == 13) {
				$('#sendButton').click();
				return false;
			}
		});
	
		// 채팅 올라올때마다 스크롤 내리기 --> 안됨 ㅡㅡ
		$('.messageBody').stop().animate({
			scrollTop: $('.messageBody')[0].scrollHeight},
			1000);
	
	
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
					// 실시간 불러오기
					getMsgList();
					
					// input창 지우기
					$('#content').val('');
					
				}, error:function(){
					console.log("오류")
				}
				
			});
			
		});
		
		// 실시간 메시지받기 3초마다 한번씩 실행하기
		$(function(){
			getMsgList();
			
			setInterval(function(){
				getMsgList();
			}, 3000);
		});
		
		
		// 메시지 전송 후 실시간으로 메시지 받기
		function getMsgList(){
			var myId = '${sessionScope.loginUser.userId}';
			var fId = '${fi.fId}';
			var mId = [];
			
			$.ajax({
				url:"getMsgRealtime.do",
				data:{fId:fId},
				dataType:"json",
				success:function(data){
					
					
					$('.msgId').each(function(idx, elem){
						/* console.log('index('+idx+') : ' + $(this).val() ); */
						mId.push( $(this).val());
					});
					
					
					for(var i = 0; i < data.length; i++) {
						
						// 위에 있는 mId와 DB에 있는 mId의 숫자가 맞지 않으면 메시지가 추가된 것
						// 메시지가 추가되면 새로운 메시지 가져오기
						if(mId[i] != data[i].mId) {
							
							// 보낸사람 Id와 내 Id가 같으면 내가 보낸 것
							if(data[i].mSenderId == myId){
																
								var $li = $('<li>').attr('class','out');
								var $div1 = $('<div>').attr('class','chat-img');
								var $input = $('<input>').attr({ 'type' : 'hidden',
																  'class' : 'msgId'}).val(data[i].mId);
								var $img = $('<img>').attr({ 'alt' : 'Avtar',
															  'src'	: 'resources/images/user/' + data[i].mImg });
								
								
								var $div2 = $('<div>').attr('class','chat-body');
								var $div3 = $('<div>').attr('class','chat-message');
								var $h5 = $('<h5>').text(data[i].mSender);
								var $p1 = $('<p>').text(data[i].mDate);
								var $p2 = $('<p>').text(data[i].mContent);
								
								
								$li.append($div1.append($input).append($img));
								$li.append($div2.append($div3.append($h5.append($p1)).append($p2)));
								
								$('.messageBody').append($li);
								
							// 보낸사람 id와 내 id가 다르면 친구가 보낸 것
							} else {								
								var $li = $('<li>').attr('class','in');
								var $div1 = $('<div>').attr('class','chat-img');
								var $input = $('<input>').attr({ 'type' : 'hidden',
																  'class' : 'msgId'}).val(data[i].mId);
								var $img = $('<img>').attr({ 'alt' : 'Avtar',
															  'src'	: 'resources/images/user/' + data[i].mImg });
								
								
								var $div2 = $('<div>').attr('class','chat-body');
								var $div3 = $('<div>').attr('class','chat-message');
								var $h5 = $('<h5>').text(data[i].mSender);
								var $p1 = $('<p>').text(data[i].mDate);
								var $p2 = $('<p>').text(data[i].mContent);
								
								
								$li.append($div1.append($input).append($img));
								$li.append($div2.append($div3.append($h5.append($p1)).append($p2)));
								
								$('.messageBody').append($li);
							}
							
							
						}
					}
					
				}, error:function(){
					console.log("오류");
				}
			});			
		}
		
		// 메시지 삭제
		function msgDelete(){
			var fId = '${fi.fId}';
			var mrId = '${ list[0].mrId }';
			
			location.href="msgDelete.do?fId=" + fId + "&mrId=" + mrId;
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
