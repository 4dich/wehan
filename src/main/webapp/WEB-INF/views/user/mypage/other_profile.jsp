<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>위대한 한걸음</title>
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
	<link rel="stylesheet" href="resources/css/font.css"/>
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
    <style>
/*     .profile-images {
        width: 150px;
        height: 150px; 
        border-radius: 70%;
        overflow: hidden;

        background: #BDBDBD; 
        margin-left: 30%;
        margin-bottom: 20px;
    }

    .profile-text{
        margin-bottom: 20px;
    }

    .profile-aboutme{
        border: 2px solid #efefef;
        margin-bottom: 20px;
        padding: 0.5%;
    } */

    .site-logo {
        display: block;
        margin-bottom: 40px;
    }

    .main-sidebar .mb-warp {
        padding: 90px 95px 100px 145px;
    }
    
    .grade{
        float:left;
        margin-right: 70px;
    }
    
    .menuIcon{
    background: white;
    border-radius: 20%;
    position: relative;
    }
    .menuIcon:hover{
        box-shadow: 0px 0px 0px 2px #b5b5b5;
    }
    .menuIcon images{
        width: 30px;
        height: 30px;
    }

    .menuIcon div{
        position: absolute;
        background: red;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        text-align: center;
        line-height: 1.3;
        font-size: 15px;
        font-weight: bold;
        top: -10px;
        right: -10px;
	}
	
	/*스크롤바*/
	#goal::-webkit-scrollbar, #intro::-webkit-scrollbar{
		width: 5px;
	}
	
	#goal::-webkit-scrollbar-thumb, #intro::-webkit-scrollbar-thumb{
		background-color: #242424;
	}
	#goal::-webkit-scrollbar-track, #intro::-webkit-scrollbar-track{
		background-color: grey;
	}
	
    </style>
</head>
<body>
	<!-- Page Preloder -->
	<!-- <div id="preloder">
		<div class="loader"></div>
	</div> -->

	<!-- Main section start -->
	<div class="main-site-warp">
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>
		
        <!-- 메뉴 끝 -->

		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
                <a href="other_profileView.do?otherId=${otherMember.userId}" style="color: blue;">Profile</a>
                <a href="other_challengeView.do?otherId=${otherMember.userId}">Challenge</a>
                <a href="other_diaryView.do">Diary</a>
			</div>
		</header>
		
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp" style="text-align: center;">
                    
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
					
					
					<!-- follow 영역 -->
					<div id="divAll">
				        <div id="pic" style="display:inline-block">
				            <img src="resources/images/user/${ otherMember.picture }" style="width: 100px; height:100px; margin-top: -70px">
				        </div>
				        <div id="foAll" style="display:inline-block; margin-left: 20px">
				            <div id="fo1" style="display:inline-block; text-align:center; width:60px;">
				            	<div style="font-weight:bold;font-size:30px">1</div><div style="font-size:12px; color:gray">grade</div></div>
				            <div id="fo2" style="display:inline-block; text-align:center; width:60px;">
				            	<div style="font-weight:bold;font-size:30px">${ follow }</div><div style="font-size:12px; color:gray">followers</div></div>
				            <div id="fo3" style="display:inline-block; text-align:center; width:60px;">
				            	<div style="font-weight:bold;font-size:30px">${ following }</div><div style="font-size:12px; color:gray">following</div></div>
				            <br>
				            <c:if test="${isFollow eq 1}">
				           		<button id="unfoBtn" style="display: block; width:100%; margin-top: 20px">unfollow</button>
				           		<%-- <button id="unfoBtn" style="display: block; width:100%; margin-top: 20px" onclick="location.href='my_unfollow.do?host=${otherMember.userId}&follower=${loginUser.userId}'">unfollow</button> --%>
				           	</c:if>
				           	<c:if test="${isFollow eq 0}">
				            	<button id="foBtn" style="display: block; width:100%; margin-top: 20px">follow</button>
				            </c:if>
				            
				            <input type="hidden" id="otherId" value="${otherMember.userId}">
				            <input type="hidden" id="myId" value="${loginUser.userId}">
				            
				            <script>
				            	var otherId = $('#otherId').val();
				            	var myId = $('#myId').val();
				            
				            	$('#unfoBtn').click(function(){
				            		$.ajax({
				            			url:'my_unfollow.do',
				            			type:'post',
				            			data:{host:otherId, follower:myId},
				            			success:function(data){
				            				location.href="other_profileView.do?otherId="+otherId;
				            			},error:function(){
				            				console.log('문제발생');
				            			}
				            		});
				            	});
				            	
				            	$('#foBtn').click(function(){
				            		$.ajax({
				            			url:'my_follow.do',
				            			type:'post',
				            			data:{host:otherId, follower:myId},
				            			success:function(data){
				            				location.href="other_profileView.do?otherId="+otherId;
				            			},error:function(){
				            				console.log('문제발생');
				            			}
				            		});
				            	});
				            </script>
				        </div>
				    </div>
				    
				    <!-- nickname 영역 -->
				    <div id="divAll2" style="margin-top:30px; text-align:left">
				        <div style="font-weight:bold;font-size:24px">${ otherMember.nickName }</div>
					
					<!-- intro 영역 -->
				    <div id="divAll3" style="margin-top:30px; text-align:left">    
				       	<div style="margin-bottom:5px; font-weight: 700; display:inline-block"><i>OWNER MESSAGE&nbsp;</i>
				       	<input style="margin-left:60px; display:none"></div>
				       	<div style="border:1px solid gray; height:180px;"><textarea id="intro" cols="45" rows="6" style="resize: none; border:0px; background:white; margin:12px;" disabled>${ otherPage.intro }</textarea></div> 
				    </div>
				        
				    </div>
				</div>
			</div>
			<div class="page-section portfolio-page">
				<div class="portfolio-section">
					<!-- interest 영역 -->				
					<div class="main-down" style="height: 40%; width:90%; margin-left:20px">
						<div class="main-down-title" style="height: 70px; padding: 20px; font-weight:900; font-size: 21px; font-weight: 700;">
							<div style="width:100px; height:100px; margin-left:-39px; display:inline-block; background-image: url('resources/images/icons/bookmark.png'); background-repeat : no-repeat; background-size : cover;"></div>
							<div style="margin:-100px 24px 0 60px;">
								<i>Interests</i>
							</div>
						</div>
						<div class="main-down-content" style="height: 75%; width: 100%; margin-top: 5px; text-align:center; border:1px solid gray;">
							<div style="display: inline-block; width:100%; margin-top:15px;">
								<div style="display: inline;"><img class='category' src="resources/images/mypage/lifestyle.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/poker.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/document.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/money.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/buy.png" style="width:150px; height:150px; margin: 15px;"></div>
								<div style="display: inline;"><img class='category' src="resources/images/mypage/support.png" style="width:150px; height:150px; margin: 15px;"></div>
								
								<div class="myCate" style="display:none">${ otherPage.interest }</div>
								
							</div>
							<div style="display: inline-block; width:100%;">
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">건강</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">취미</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">자기개발</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">경제</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">생활</div>
								<div style="width:150px; margin: 15px; float:left; padding-left:70px;">기타</div>
							</div>                        
						</div>
					</div>
					
					<!-- goal 영역 -->
					<div class="main-up" style="height: 40%; width: 90%; margin-left:20px">
						<div class="main-up-title" style="height: 70px; padding: 20px; font-size: 21px; font-weight: 700;">
							<div style="width:100px; height:100px; margin-left:-39px; display:inline-block; background-image: url('resources/images/icons/bookmark.png'); background-repeat : no-repeat; background-size : cover;"></div>
							<div style="margin:-100px 24px 0 60px;"><i>Goal</i></div>
							
							
							<div id="userId" style="display:none">${ otherMember.userId }</div>
							
						</div>
						<div class="main-up-content" style="font-size:20px; height: 306px; width: 100%; margin-top: 5px; text-align:right; border:1px solid gray;">
							<textarea id="goal" cols="116" rows="9" style="resize: none; border:0px; background:white; margin-top: 12px; margin-right:12px;" disabled>${ otherPage.goal }</textarea>
						</div>

						<script>
							var cate = $('.category');
							for(var i=0; i<6; i++){
								cate[i].textContent=0;
							}
							var myCate = $('.myCate')[0].innerText;
							
							if(myCate.includes('건강')){
								cate[0].textContent = 1;
							}
							if(myCate.includes('취미')){
								cate[1].textContent = 1;
							}
							if(myCate.includes('자기개발')){
								cate[2].textContent = 1;
							}
							if(myCate.includes('경제')){
								cate[3].textContent = 1;
							}
							if(myCate.includes('생활')){
								cate[4].textContent = 1;
							}
							if(myCate.includes('기타')){
								cate[5].textContent = 1;
							}
						
							
							$(function(){
								for(var i=0; i<6; i++){
									if(cate[i].textContent==0){
										$(cate[i]).css('opacity','0.2');
									}else{
										$(cate[i]).css('opacity','1');
									}
								}
							});

						</script>
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
	
	</body>
</html>
