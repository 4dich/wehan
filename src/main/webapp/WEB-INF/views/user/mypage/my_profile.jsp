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
	
	<!-- bootstrap4 toggle -->
	<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
	
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
        padding: 120px 95px 100px 145px;
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
                <a href="my_profileView.do" style="color: red;">Profile</a>
                <a href="my_challengeView.do">Challenge</a>
                <a href="my_diaryView.do">Diary</a>
                <a href="getMsgList.do">Message</a>
			</div>
		</header>
		
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp">
                    
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
					
					<!-- follow 영역 -->
					<div id="divAll" style="margin-left:15px;">
				        <div id="pic" style="display:inline-block">
				            <img src="resources/images/user/${ loginUser.picture }" style="width: 100px; height:100px; margin-top: -70px">
				        </div>
				        <div id="foAll" style="display:inline-block; margin-left: 20px">
				            <div id="fo1" style="display:inline-block; text-align:center; width:60px;">
				            	<div style="font-weight:bold;font-size:30px;cursor:pointer">${ mypage.myLevel }</div>
				            	<div style="font-size:12px; color:gray">level</div></div>
				            <div id="fo2" style="display:inline-block; text-align:center; width:60px;">
				            	<div style="font-weight:bold;font-size:30px;cursor:pointer">${ follow }</div>
				            	<div style="font-size:12px; color:gray">followers</div></div>
				            <div id="fo3" style="display:inline-block; text-align:center; width:60px;">
				            	<div style="font-weight:bold;font-size:30px;cursor:pointer">${ following }</div>
				            	<div style="font-size:12px; color:gray">following</div></div>
				            <br>
				            <button style="display: block; width:100%; margin-top: 20px" onclick="location.href='my_updateInfoView.do'">Settings</button>
				        </div>
				    </div>
				    
				    <!-- nickname 영역 -->
				    <div id="divAll2" style="margin-top:30px; text-align:left">
				        <div style="font-weight:bold;font-size:24px">${ loginUser.nickName }</div>
					
					<!-- intro 영역 -->
				    <div id="divAll3" style="margin-top:30px; text-align:left">    
				       	<div style="margin-bottom:5px; font-weight: 700; display:inline-block"><i>OWNER MESSAGE&nbsp;</i>
				       	<input id="toggle3" style="margin-left:60px;" type="checkbox" checked data-toggle="toggle" data-on="<i class='fa fa-lock' aria-hidden='true'></i> 수정하기" data-off="<i class='fa fa-unlock' aria-hidden='true'></i> 수정중" data-onstyle="dark" data-offstyle="outline-dark" onchange="toggleBtn3();"></div>
				       	<div style="border:1px solid gray; height:180px; width:348px;"><textarea id="intro" cols="39" rows="6" style="resize: none; border:0px; background:white; margin:12px;" disabled>${ mypage.intro }</textarea></div> 
				    </div>
				        
				    </div>
				</div>
			</div>
			<div class="page-section portfolio-page">
			
			
			<!-- follower 팝업 시작-->
		    <div id="followingPopup" style="width:400px; height:800px; background: pink; position:absolute; left:1000px; top:100px; z-index: 1000; -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); overflow:auto; display:none">
		    	<div style="display:inline-block; width:357px; height:60px; background:skyblue; font-size:24px; padding:10px; text-align:left; font-weight:bold">followers</div>
		    	<div id="xBtn" style="display:inline-block; width:37px; height:60px; background:orangered; font-size:24px; padding:10px; text-align:right; font-weight:bold; cursor:pointer">X</div>
		    	<div style="width:400px; height:60px; background:orange; font-size:24px; padding:10px; text-align:center;">
		    		<input type="search" class="form-control" placeholder="search"/>
		    	</div>
		    	<!--  -->
		    	<c:forEach var="fl" items="${ followingList }">
			    	<div style="display:flex; width:400px; height:70px; background:skyblue; font-size:24px; padding:10px;">
			    		<div style="display:inline-flex; width: 50px; height:50px; border-radius: 70%; overflow: hidden;">
			    			<img src="resources/images/user/${ fl.picture }" style="width: 100%; height:100%; object-fit: cover;">
			    		</div>
			    		<div style="display:inline-flex; flex-direction:column; width: 240px; height:50px; background:yellowgreen;">
			    			<div style="font-size:13px; width: 230px; height:30px; font-weight:bold">${ fl.nickName }#${ fl.userId }</div>
			    			<div style="font-size:13px; width: 230px; height:20px; color:gray">${ fl.intro }</div>
			    		</div>
			    		<div style="width: 80px; height:50px;">
			    			<button style="font-size:14px; margin-top:12px; width:100%; padding: 2px 10px 2px 10px">follow</button>
			    		</div>
			    	</div>
		    	</c:forEach>
		    	<!--  -->
		    </div>
		    <!-- 팝업 끝 -->
		    <script>
		    	$('#xBtn').click(function(){
		    		$('#followingPopup').css('display','none');
		    		console.log('x');
		    	});
		    	
		    	$('#fo2').click(function(){
		    		alert('hoho');
		    	});
		    	
		    	$('#fo3').click(function(){
		    		$('#followingPopup').css('display','');
		    	});
		    </script>
		    
		    
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
								
								<div class="myCate" style="display:none">${ mypage.interest }</div>
								
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
							
							
							<div id="userId" style="display:none">${loginUser.userId}</div>
							
						</div>
						<div class="main-up-content" style="font-size:20px; height: 350px; width: 100%; margin-top: 5px; text-align:right; border:1px solid gray;">
							<textarea id="goal" cols="116" rows="10" style="resize: none; border:0px; background:white; margin-top: 12px; margin-right:12px;" disabled>${ mypage.goal }</textarea>
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
						
							function toggleBtn3(){
						    	if(document.getElementById('toggle3').checked==false){
						    		$('#intro').attr('disabled',false);
						    		$('#goal').attr('disabled',false);
						    		
						    		cate.on("click",function(){
						    			$(this)[0].textContent = 1 - $(this)[0].textContent;
						            });
						    		/* 색반전 */
									/* $('body').css({'background-color':'black',
												   '-webkit-filter':'invert(100%)',
												   'filter':'invert(100%)'}); */

								}else{
									/* $('body').css({'background-color':'white',
												   '-webkit-filter':'invert(0%)',
												   'filter':'invert(0%)'}); */
									
									$('#intro').attr('disabled',true);
									$('#goal').attr('disabled',true);
									var userId = $('#userId')[0].innerText;
						   			var intro = $('#intro')[0].value;
						   			var goal = $('#goal')[0].value;
									
						   			myCate=""
						   			if(cate[0].textContent==1){
						   				myCate+="건강,"
						   			}
						   			if(cate[1].textContent==1){
						   				myCate+="취미,"
						   			}
						   			if(cate[2].textContent==1){
						   				myCate+="자기개발,"
						   			}
						   			if(cate[3].textContent==1){
						   				myCate+="경제,"
						   			}
						   			if(cate[4].textContent==1){
						   				myCate+="생활,"
						   			}
						   			if(cate[5].textContent==1){
						   				myCate+="기타,"
						   			}
						   			
						   			var interest = myCate;
						   			
						   			cate.off("click");
						    		
						    		$.ajax({
										url:"updateProfile.do",
										data:{userId:userId,goal:goal,intro:intro,interest:interest},
										type:"post",
										success:function(data){
											$('#intro').val(data.intro);
											$('#goal').val(data.goal);
											$('.myCate').val(data.interest);
										},error:function(){
											console.log("error");
										}
									});
								}
						    }
							
							$(function(){
								setInterval(function(){
									for(var i=0; i<6; i++){
										if(cate[i].textContent==0){
											$(cate[i]).css('opacity','0.2');
										}else{
											$(cate[i]).css('opacity','1');
										}
									}
								},100);
							});

						</script>
					</div>
				</div>
			</div>
			<!-- Page end -->
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
