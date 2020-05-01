<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	#followingMembers::-webkit-scrollbar{
		width: 5px;
	}
	
	#followingMembers::-webkit-scrollbar-thumbb{
		background-color: #242424;
	}
	#followingMembers::-webkit-scrollbar-track{
		background-color: gray;
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
				            	<div id="cntFollowing" style="font-weight:bold;font-size:30px;cursor:pointer">${ following }</div>
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
		    <div id="followerPopup" style="width:405px; height:800px; background:#c9e3ff; position:absolute; left:1000px; top:100px; z-index: 1000; -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); display:none">
		    	<div style="display:inline-block; width:342px; height:60px; font-size:24px; padding:10px; text-align:left; font-weight:bold; margin-left:10px">follower</div>
		    	<div id="xBtn2" style="display:inline-block; width:37px; height:60px; font-size:24px; padding:10px; text-align:right; font-weight:bold; cursor:pointer; margin-right:10px">X</div>
		    	<div style="width:405px; height:60px; font-size:24px; padding:10px; text-align:center;">
		    		<input type="search" id="followerSearch" class="form-control" placeholder="search"/>
		    	</div>
		    	<!--  -->
		    	<div id="followerMembers2" style="overflow:auto; width:405px; height:680px;">
		    		<div id="con">
		    		<c:set var="fList2" value="${ followerList }"/>
		    		<c:if test="${ not empty fList2 }">
				    	<c:forEach var="fl2" items="${ followerList }">
					    	<div style="display:flex; width:400px; height:70px; font-size:24px; padding:10px;">
					    		<div style="display:inline-flex; width: 50px; height:50px; border-radius: 70%; overflow: hidden;">
					    			<img src="resources/images/user/${ fl2.picture }" style="width: 100%; height:100%; object-fit: cover;">
					    		</div>
					    		<div style="display:inline-flex; flex-direction:column; width: 230px; height:50px; margin-left:10px; margin-right:10px">
					    			<div class="otherNickName" style="font-size:13px; width: 230px; height:20px; font-weight:bold; cursor:pointer">${ fl2.nickName }#${ fl2.userId }</div>
					    			<div class="afterIntro" style="font-size:13px; width: 230px; height:20px; color:gray"></div>
					    			<input type="hidden" class="rawIntro" value="${ fl2.intro }"> 
					    		</div>
					    		<span class="otherId" style="display:none">${ fl2.userId }</span>
					    	</div>
				    	</c:forEach>
			    	</c:if>
			    	<c:if test="${ empty fList2 }">
			    		<div id="searchFriend2" style="cursor:pointer; margin:auto; width:200px">
				    		<div style="display:flex; padding:10px; margin-top:150px;">
				    			<img src="resources/images/mypage/compass.png" style="opacity:0.5">
				    		</div>
			    			<div style="text-align:center; margin-top:20px; color:gray">
			    				친구가 없네요<br>나를 알려보죠
			    			</div>
		    			</div>
			    	</c:if>
		    	</div>
		    	</div>
		    	<!--  -->
		    </div>
		    <!-- follower 팝업 끝 -->
			
			
			<!-- following 팝업 시작-->
		    <div id="followingPopup" style="width:405px; height:800px; background:rgb(255, 210, 210); position:absolute; left:1000px; top:100px; z-index: 1000; -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); display:none">
		    	<div style="display:inline-block; width:342px; height:60px; font-size:24px; padding:10px; text-align:left; font-weight:bold; margin-left:10px">following</div>
		    	<div id="xBtn" style="display:inline-block; width:37px; height:60px; font-size:24px; padding:10px; text-align:right; font-weight:bold; cursor:pointer; margin-right:10px">X</div>
		    	<div style="width:405px; height:60px; font-size:24px; padding:10px; text-align:center;">
		    		<input type="search" id="followingSearch" class="form-control" placeholder="search"/>
		    	</div>
		    	<!--  -->
		    	<div id="followingMembers" style="overflow:auto; width:405px; height:680px;">
		    		<div id='ing'>
		    		<c:set var="fList" value="${ followingList }"/>
		    		<c:if test="${ not empty fList }">
				    	<c:forEach var="fl" items="${ followingList }">
					    	<div class='friend' style="display:flex; width:400px; height:70px; font-size:24px; padding:10px;">
					    		<div style="display:inline-flex; width: 50px; height:50px; border-radius: 70%; overflow: hidden;">
					    			<img src="resources/images/user/${ fl.picture }" style="width: 100%; height:100%; object-fit: cover;">
					    		</div>
					    		<div style="display:inline-flex; flex-direction:column; width: 230px; height:50px; margin-left:10px; margin-right:10px">
					    			<div class="otherNickName" style="font-size:13px; width: 230px; height:20px; font-weight:bold; cursor:pointer">${ fl.nickName }#${ fl.userId }</div>
					    			<div class="afterIntro" style="font-size:13px; width: 230px; height:20px; color:gray"></div>
					    			<input type="hidden" class="rawIntro" value="${ fl.intro }"> 
					    		</div>
					    		<div style="width: 80px; height:50px;">
					    			<button class="unfoBtn" style="font-size:14px; margin-top:12px; width:100%; padding: 2px 10px 2px 10px">unfollow</button>
					    		</div>
					    		<span class="otherId" style="display:none">${ fl.userId }</span>
					    	</div>
				    	</c:forEach>
			    		</c:if>
				    	<c:if test="${ empty fList }">
				    		<div id="searchFriend" style="cursor:pointer; margin:auto; width:200px">
					    		<div style="display:flex; padding:10px; margin-top:150px;">
					    			<img src="resources/images/mypage/compass.png" style="opacity:0.5">
					    		</div>
				    			<div style="text-align:center; margin-top:20px; color:gray">
				    				친구가 없네요<br>새 친구를 찾아보죠
				    			</div>
			    			</div>
				    	</c:if>
				    	</div>
		    	</div>
		    	<!--  -->
		    </div>
		    <!-- following 팝업 끝 -->
		    
		    <script>
		    	/* following에서 intro 36자이상이면 뒤에 ...으로 표기 */
		    	$(function(){
		    		var $rawIntro = $('.rawIntro');
		    		var $afterIntro = $('.afterIntro');
		    		var followingLen = $rawIntro.length;
		    		for(var i=0; i<followingLen; i++){
		    			if($rawIntro[i].value.length>36){
		    				$afterIntro[i].innerText = ($rawIntro[i].value).substr(0,36) + "...";
		    			}else{
			    			$afterIntro[i].innerText = ($rawIntro[i].value).substr(0,36);
		    			}
		    			
		    		}
		    	});
		    	
		    	/* following에서 unfollow */
    			$('.unfoBtn').click(function(){
		    		var host = $(this).parent().parent().find('span').text();
		    		var follower = $('#userId').text();
		    		$(this).parent().parent().remove();
		    		
		    		$.ajax({
		    			url:'my_unfollow.do',
		    			type:'post',
		    			data:{host:host,follower:follower},
		    			success:function(data){
				    		console.log(data);
				    		$('#cntFollowing').text(data);
				    		if(data==0){
				    			$('#followingMembers')
				    			.append('<div id="searchFriend" style="cursor:pointer;">')
				    			.append('<img src="resources/images/mypage/compass.png" style="opacity:0.5; width:200px; margin-left:100px; margin-top:150px">')
				    			.append('<div style="text-align:center; margin-top:20px; color:gray">친구가 없네요<br>새 친구를 찾아보죠');
				    		}
		    			},error:function(){
		    				console.log('fail: unfollow');
		    			}
		    		});
		    	});
		    	
		    	
		    	/* --- following --- */
		    	/* following 팝업 on */
		    	$('#fo3').click(function(){
		    		$('#followingPopup').css('display','');
		    		console.log('following');
		    	});
		    	/* following 팝업 off */
		    	$('#xBtn').click(function(){
		    		$('#followingPopup').css('display','none');
		    		console.log('x');
		    	});
    			/* following하는 사람이 없을 때, 클릭 시 fid로 연결*/
		    	$('#searchFriend').click(function(){
		    		location.href="fid_ch_recommendView.do";
		    	});
		    	
		    	/* ---- follower ---- */
		    	/* follower 팝업 on */
		    	$('#fo2').click(function(){
		    		$('#followerPopup').css('display','');
		    		console.log('follower');
		    	});
		    	/* follower 팝업 off */
		    	$('#xBtn2').click(function(){
		    		$('#followerPopup').css('display','none');
		    		console.log('x');
		    	});
		    	/* follow하는 사람이 없을 때, 클릭 시 challenge로 연결*/
		    	$('#searchFriend2').click(function(){
		    		location.href="chalList.do";
		    	});
		    
		    	$('.otherNickName').click(function(){
		    		var otherId = $(this).parent().parent().find('span').text();
		    		location.href="other_profileView.do?otherId="+otherId;
		    	});
		    	
		    	/* follower에서 검색으로 filter된 리스트 */
		    	$('#followerSearch').on("keyup",function(){
		    		var search = $('#followerSearch').val();
		    		var userId = $('#userId').text();
		    		
		    		$.ajax({
						url:'followerSearch.do',
						type:'post',
						data:{search:search,userId:userId},
						success:function(data){
							
							$('#con').remove();
							
						    var fm = "";
				    		fm += '<div id="con">';
				    		fm += '<div id="followerMembers2" style="overflow:auto; width:405px; height:680px;">';
				    		
				    		for(var i in data){
					    		fm += '<div style="display:flex; width:400px; height:70px; font-size:24px; padding:10px;">';
					    		fm += '<div style="display:inline-flex; width: 50px; height:50px; border-radius: 70%; overflow: hidden;">';
					    		fm += '<img src="resources/images/user/'+data[i].picture+'" style="width: 100%; height:100%; object-fit: cover;">';
					    		fm += '</div>';
					    		fm += '<div style="display:inline-flex; flex-direction:column; width: 230px; height:50px; margin-left:10px; margin-right:10px">';
					    		fm += '<div class="otherNickName" style="font-size:13px; width: 230px; height:20px; font-weight:bold; cursor:pointer">'+data[i].nickName+'#'+data[i].userId+'</div>';
					    		fm += '<div class="afterIntro" style="font-size:13px; width: 230px; height:20px; color:gray">'+data[i].intro+'</div>';
					    		fm += '</div>';
					    		
					    		fm += '<span class="otherId" style="display:none">'+data[i].userId+'</span>';
					    		fm += '</div>';
				    		}
				    		
				    		fm += '</div></div>';
				    		
				    		$('#followerMembers2').html(fm);
				    		
				    		$('.otherNickName').click(function(){
					    		var otherId = $(this).parent().parent().find('span').text();
					    		location.href="other_profileView.do?otherId="+otherId;
					    	});
				    		
						},error:function(){
							console.log('error: follower search');
						}
					});
				});
		    	
		    	/* following에서 검색으로 filter된 리스트 */
		    	$('#followingSearch').on("keyup",function(){
		    		var search = $('#followingSearch').val();
		    		var userId = $('#userId').text();
		    		
		    		$.ajax({
						url:'followingSearch.do',
						type:'post',
						data:{search:search,userId:userId},
						success:function(data){
							
							console.log(data);
							
							$('#ing').remove();
							
						    var ing = "";
						    ing += '<div id="ing">';
						    ing += '<div id="followingMember" style="overflow:auto; width:405px; height:680px;">';
				    		
				    		for(var i in data){
				    			ing += '<div style="display:flex; width:400px; height:70px; font-size:24px; padding:10px;">';
				    			ing += '<div style="display:inline-flex; width: 50px; height:50px; border-radius: 70%; overflow: hidden;">';
				    			ing += '<img src="resources/images/user/'+data[i].picture+'" style="width: 100%; height:100%; object-fit: cover;">';
					    		ing += '</div>';
					    		ing += '<div style="display:inline-flex; flex-direction:column; width: 230px; height:50px; margin-left:10px; margin-right:10px">';
					    		ing += '<div class="otherNickName" style="font-size:13px; width: 230px; height:20px; font-weight:bold; cursor:pointer">'+data[i].nickName+'#'+data[i].userId+'</div>';
					    		ing += '<div class="afterIntro" style="font-size:13px; width: 230px; height:20px; color:gray">'+data[i].intro+'</div>';
					    		ing += '</div>';
					    		ing += '<div style="width: 80px; height:50px;">';
					    		ing += '<button class="unfoBtn" style="font-size:14px; margin-top:12px; width:100%; padding: 2px 10px 2px 10px">unfollow</button>';
					    		ing += '</div>';
					    		ing += '<span class="otherId" style="display:none">'+data[i].userId+'</span>';
					    		ing += '</div>';
				    		}
				    		
				    		ing += '</div></div>';
				    		
				    		$('#followingMembers').html(ing);
				    		
				    		$('.otherNickName').click(function(){
					    		var otherId = $(this).parent().parent().find('span').text();
					    		location.href="other_profileView.do?otherId="+otherId;
					    	});
				    		
				    		$('.unfoBtn').click(function(){
					    		var host = $(this).parent().parent().find('span').text();
					    		var follower = $('#userId').text();
					    		$(this).parent().parent().remove();
					    		
					    		$.ajax({
					    			url:'my_unfollow.do',
					    			type:'post',
					    			data:{host:host,follower:follower},
					    			success:function(data){
							    		console.log(data);
							    		$('#cntFollowing').text(data);
							    		if(data==0){
							    			$('#followingMembers')
							    			.append('<div id="searchFriend" style="cursor:pointer;">')
							    			.append('<img src="resources/images/mypage/compass.png" style="opacity:0.5; width:200px; margin-left:100px; margin-top:150px">')
							    			.append('<div style="text-align:center; margin-top:20px; color:gray">친구가 없네요<br>새 친구를 찾아보죠');
							    		}
					    			},error:function(){
					    				console.log('fail: unfollow');
					    			}
					    		});
					    	});
				    		
						},error:function(){
							console.log('error: follower search');
						}
					});
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
