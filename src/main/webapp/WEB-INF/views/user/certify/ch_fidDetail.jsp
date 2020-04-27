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
	

	<!-- 피드 상세보기 CSS -->
	<link rel="stylesheet" href="resources/css/fidDetail-sr.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<!-- 회원전용 사이드바 CSS -->
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
.delBtn{
	position : absolute;
 	width: 30px;
 	height: 30px;
 	top: 2px;
 	right: 4px;
 	border: none;
 	background: white;
 	font-size: 25px;
}
.rdiv{
	position: relative;
}
.crId{
	display: none;
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
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
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
					<br><br>
                    <!-- 서브메뉴 -->
					<div class="about-info" style="margin-top:100px;">
						<h2>FID</h2>
						<p>피드관련<br>
							인증사진이 한장씩 쌓여<br>
							당신의 위대한 내일이 됩니다.												
						</p>
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
												<img alt="Avtar" src="resources/images/user/${ c.picture }">
											</div>
											<div class="chat-body">
												<div style="margin-top: 15px;">
													<h4 style="color: white;">
														${ c.nickName } &nbsp;
														<a href="other_profileView.do?otherId=${ c.userId }" style="color:white" class="fa fa-home"></a>
													</h4>
													<br>
													<h6 style="color: white;">
														${ c.chName }
														<span class="unread">${ c.category }</span>
													</h6>
													<p style="color: white;">${ c.ceDate }</p>
													<input type="hidden" id="certifyId" value="${ c.ceId }">
													<input type="hidden" id="loginId" value="${ loginUser.userId }">
												</div>
											</div>
										</li>
									</ul>
								</div>
								
								<!-- 사진 나오는 곳 -->
								<div class="card-body profile-userpic" style="text-align: center;">
									<img src="resources/images/certify/${ c.cePicture }" class="img-responsive" alt=""> 
								</div>

								<!-- 본문 나오는 곳 -->
								<div class="card-body">
									<span>
										${ c.ceContent }
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
												
													<div class="form-group" style="text-align: right;">														
														<textarea class="form-control" id="addReflyText" style="height:100px; resize:none;" placeholder="친구의 피드에 댓글을 남겨보세요!"></textarea>
														<button id="submitR" class="site-btn sb-dark" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															댓글 등록
														</button>
														<button id="listBack" class="site-btn sb-dark" type="button" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															목록가기
														</button>
													</div>
											</div>
										</div>

										<!-- 댓글 읽기 -->
										<div class="card" style="margin-bottom: 20px;">
											<div class="card-body">
											
												<div class="row">		
													<div class="be-comment-block">
														<h1 class="comments-title"></h1>
														
													</div>	
													
																					
													<div id="commentbody" class="media g-mb-30 media-comment" style="display: inline-block;">
														<c:if test="${loginUser.userId eq c.userId }">×</c:if>
													</div>
													
													<input type="hidden" value="${ c.ceId }" id="ceid">
													<input type="hidden" value="${ loginUser.userId }" id="loginId">
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
	

	var ceId = ${c.ceId};
	
	$(function(){
		
		replyList();
		
		setInterval(function(){
			replyList();
		},3000);
		
				
		$('#listBack').click(function(){
			location.href="ch_certifyList.do?chId="+chId;
		});
		
		/* 등록버튼 */
		$('#submitR').click(function(){
			var ccContent = $('#addReflyText').val();
			var userId = $('#loginId').val();
			console.log(ccContent);
			console.log(ceId);
			console.log(userId);
			
			$.ajax({
				url:"addReply.do",
				data : {ccContent:ccContent,ceId:ceId,userId:userId},
				type : "post",
				success : function(data){
					//console.log(data);
					
					if(data == "success"){
						replyList();
						$('#addReflyText').val("");
						
					}
				},error:function(){
					console.log("전송 실패");
				}
			});
		});
		/* 등록 끝 */

		function replyList(){
			

		
			
		var userId = $('#loginId').val();
			
		/* ajax */
		$.ajax({
			url : "replyList.do",
			data : {ceId:ceId},
			//  	속성명 : 위에 선언된 변수명
			dataType: "json",
			success : function(data){
				$divBody = $("#commentbody");
				$divBody.html("");
				
				var $img;
				var $mediaBody;
				var $gmb;
				var $h5;
				var $span;
				var $p;
				var $rdiv;
				
				$(".comments-title").text("댓글("+ data.length +")");
				console.log(data);
				if(data.length > 0){
					for(var i in data){
						console.log(data[i]);
  						$img = $("<img class='d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15' alt='Image Description'>");
 						$img.attr('src','resources/images/user/'+ data[i].picture);
 						$mediaBody = $("<div class='media-body u-shadow-v18 g-bg-secondary g-pa-30'>");
						$gmb = $("<div class='g-mb-15'>");
						$h5 = $("<h5 class='h5 g-color-gray-dark-v1 mb-0'>").text(data[i].nickName);
						$span = $("<span class='g-color-gray-dark-v4 g-font-size-12'>").text(data[i].ccDate);
						$p = $("<p>").text(data[i].ccContent);
						$crId = $("<p class='crId'>").text(data[i].crId);
						$rdiv = $("<div class='rdiv' style='width: 100%; display: inline-flex;margin-bottom: 10px;'>");
						$delBtn = $("<input class='delBtn' type='button' value='×'>");
						
						$gmb.append($h5);
						$gmb.append($span);
						$mediaBody.append($gmb);
						$mediaBody.append($p);
						$rdiv.append($crId);
						
						if(data[i].userId == userId){
							$rdiv.append($delBtn);
						}
						$rdiv.append($img);
						$rdiv.append($mediaBody);	
						$divBody.append($rdiv);
					}
				}else{
					$div = $("<div>");
					$content = $("<p>").text("등록된 댓글이 없습니다.");
					$div.append($content);
					$divBody.append($div);
				}
				
				
				$(".delBtn").click(function(){
					
					alert("댓글을 삭제하시겠습니까?");				
					var userId = $('#loginId').val();
					var crId = $(this).prev('.crId').text();
					console.log(ceId);
					console.log(crId);
					console.log(userId);
					
					$.ajax({
						url:"delReply.do",
						data : {ceId:ceId,userId:userId,crId:crId},
						type : "post",
						success : function(data){
							//console.log(data);
							
							if(data == "success"){
								replyList();
							}
						},error:function(){
							console.log("전송 실패");
						}
					});
					
					
				});
			},error:function(){
				console.log("전송실패");
			}
		});
		}
	});
	

	
	</script>
	</body>
</html>
