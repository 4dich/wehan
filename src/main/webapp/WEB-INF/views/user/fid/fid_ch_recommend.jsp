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
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/category.css"/>
	<link rel="stylesheet" href="resources/css/fidRecommend.css"/>
	
	<style>
	#fidListArea {
    width: 100%;
    height: 100%;
    margin-left: 15px;
    margin-top: 15px;
	}
	.qnaPaging{
	height: 200px;
    bottom: 0;
    text-align: center;
    width: 100%;
    color: black;
	}
	
	#photoList{
	width: 100%;
    height: 900px;
	margin-left: 2%;
	}
	a{
	color : #717171;
	}
	.pagiDiv{
	display: inline-block;
    width: 30px;
    height: 30px;
    text-align: center;
	}
	.pagiArrow1{
	display: inline-block;
    width: 30px;
    height: 30px;
    text-align: center;
    border-radius: 50%;
    color: #717171;
    font-size: 20px;
    border: 1px solid #e6e6e6;
    line-height: 1.2;
	}
	.pagiArrow2{
	display: inline-block;
    width: 30px;
    height: 30px;
    text-align: center;
    border-radius: 50%;
    color: #717171;
    font-size: 20px;
    line-height: 1.2;
	}
	</style>
	
	

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
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
                <a href="fid_ch_recommendView.do" style="color: red;">추천피드</a>
                <a href="fid_friendListView.do">친구피드</a>
                <a href="fid_followView.do">팔로우</a>
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

                    <div class="challenges-search">
						<input type="textarea" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 검색">
                        <a href="#" class="site-btn2">
						<img src="resources/images/main/search.png" alt=""></a>
                    </div>
                    <!-- <div class="challenges-search">
						<input type="textarea" style="padding-left: 15px; width: 300px; height: 50px; border-radius: 3px; border: 3px solid black;" placeholder="챌린지 검색">
                        <a href=""><img src="img/arrow-righ-3.png" style="padding-left: 10px;" alt=""></a>
                    </div> -->
                    <br><br>
					<!-- 서브메뉴 -->
					<div class="about-info">
						<h2>피드</h2>
						<p>
                            친구들의 피드와 추천피드를 둘러보고
                            나와 비슷한 유저를 찾아보고 팔로우 할 수 있습니다. 
                            다른 유저들은 어떤챌린지를 어떻게 하고 있는지
                            구경하러 갈까요?

						</p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					                    
                    
					<!-- <ul class="contact-info">
						<li>1525  Boring Lane, Los Angeles, CA</li>
						<li>+34 56672 9984 22</li>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					<a href="#" class="site-btn">see my portfolio <img src="img/arrow-right.png" alt=""></a> -->
					
				
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section contact-page">
				<div class="contact-section">
					<div class="row">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
                        </div> -->
                       
						<!-- 인증사진 -->

						<!-- 카테고리 -->
						<div id="category">
							<div class="ca">건강</div>
							<div class="ca">취미</div>
							<div class="ca">자기계발</div>
							<div class="ca">경제</div>
							<div class="ca">생활</div>
							<div class="ca">그외</div>
						</div>

						
						<div id="fidListArea">
							
							<!-- 인증사진리스트영역 -->
							<div id="photoList">
								<!-- 피드 디테일로 연결 -->
								<c:forEach var ="f" items="${ list }">
								
									<div class="photoBox">
										<!-- 인증사진 -->
										<input type="hidden" value="${ f.ceId }">
										<img src="resources/images/certify/${ f.cePicture }" alt="">
										<!-- 인증날짜 -->
										<p class="fidUploadDate">${ f.ceDate }</p>
										<!-- 인증유저 -->
										<p class="nick">${ f.nickName }</p>
										<p class="fidName">${ f.chName }</p>
									</div>
								
								</c:forEach>
								
							</div>
							
							
							<div class="qnaPaging">
								<c:if test="${pi.currentPage eq 1 }">
									<div class="pagiArrow1">◀  </div>
								</c:if>
								
								<c:if test="${ pi.currentPage ne 1 }">
									<div class="pagiArrow1">
									<c:url var="before" value="fid_ch_recommendView.do">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
									</c:url>
									<a class="pagiArrow2" href="${ before }">◀ </a>
									</div>							
								</c:if>
							
								<!-- 페이지 -->
								<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<div class="pagiDiv">
										<font color="#717171" size = "4"><b>[${ p }]</b></font>
										</div>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
										<div class="pagiDiv">
										<c:url var="pagenation" value="fid_ch_recommendView.do">
											<c:param name="currentPage" value="${ p }"/>
										</c:url>
										<a href="${ pagination }">${p}</a>
										</div>
									</c:if>
								</c:forEach>
								
								<!-- 다음 -->
								<c:if test="${pi.currentPage eq pi.maxPage }">
								<div class="pagiArrow1">▶ </div>
								</c:if>
								<c:if test="${pi.currentPage ne pi.maxPage }">
									<div class="pagiArrow1">
									<c:url var="after" value="fid_ch_recommendView.do">
										<c:param name="currentPage" value="${pi.currentPage + 1 }"/>
									</c:url>
									<a class="pagiArrow2" href="${after}">▶ </a>
									</div>
								</c:if>
								
						
							</div>


							<!-- 인증사진 리스트 끝 -->



						</div>

						<!-- 인증사진 끝 -->
						
						
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


	<script>
		$(function(){
			var currentPage = 1;
			list(currentPage);
			
			$('.photoBox').click(function(){
				var ceId = $(this).find("input[type=hidden]").val();
				var currentPage = ${ pi.currentPage };
				console.log(ceId);
				location.href = "fid_detailView.do?ceId="+ceId+"&currentPage=" + currentPage;
			});
			
		});	
		
		function list(currentPage){
			
			$('.ca').click(function(){
				var index = $('.ca').index(this);
				var category = $('#category').children().eq(index);
				console.log(index);
				console.log(category.text());
				
				$('.ca').css({'background':'white','color':'black'});
				category.css({'background':'black','color':'white'});
				
				$.ajax({
					url:"fid_Category.do",
					type:"post",
					data:{'category':category.text(),'currentPage':currentPage},
					success:function(data){
						console.log(data);
						$('#photoList').remove();
						$('.qnaPaging').remove();
						var listText = "";
						listText +="<div id='photoList'>";
						for(var i=0; i<data.list.length; i++){
							listText += "<div class='photoBox'>";
							listText += "<input type='hidden' value='"+data.list[i].ceId+"'>";
							console.log(data.list[i].ceId);
							listText += "<img src='resources/images/certify/"+data.list[i].cePicture+"' alt=''>";
							listText += "<p class='fidUploadDate'>" + data.list[i].ceDate +"</p>";
							listText += "<p class='nick'>" + data.list[i].nickName + "</p>";
							listText += "<p class='fidName'>"+ data.list[i].chName+ "</p>";
							listText += "</div>"
						}						
						listText += "</div>";
						listText += "<div class='qnaPaging'>";
						if(data.pi.currentPage == 1){
							listText += "<";
						}else if (data.pi.currentPage != 1){
							listText += "<a href='javascript:void(0);' onclick='list("+ (currentPage - 1) +")'>" + "<" + "</a>";
						}
						
						for(var p = data.pi.startPage; p<=data.pi.endPage; p++){
							if(p == data.pi.currentPage){
								listText += "<font color='red' size='4'><b>"+[p]+"</b></font>"
							}else{
								listText += "<<a href='javascript:void(0);' onclick='list("+ p +")'" + p + "</a>";
							}
							
						}
						if(data.pi.currentPage == data.pi.maxPage){
							listText += ">";
						}else{
							listText += "<a href='javascript:void(0);' onclick='getList("+ (currentPage+1) +")'>></a>";
						}
						
						listText += "</div>"
						$('#fidListArea').html(listText);
					},error:function(){
						console.log("에러");
					}
					
					
				});
			
			});
		}
		/* var health = document.getElementsByClassName('health');
		var hobby = document.getElementsByClassName('hobby');
		var selfImprovement = document.getElementsByClassName('selfImprovement');
		var economy = document.getElementsByClassName('economy');
		var life = document.getElementsByClassName('life');
		var except = document.getElementsByClassName('except');

		
		$(document).ready(function(){
			$('.health').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.hobby').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.selfImprovement').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.economy').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.life').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
				$(except).css("background","white");
				$(except).css("color","black");
			});

			$('.except').click(function(){
				$(this).css("background","black");
				$(this).css("color","white");
				$(this).css("border","1px solid black");
				$(hobby).css("background","white");
				$(hobby).css("color","black");
				$(selfImprovement).css("background","white");
				$(selfImprovement).css("color","black");
				$(economy).css("background","white");
				$(economy).css("color","black");
				$(life).css("background","white");
				$(life).css("color","black");
				$(health).css("background","white");
				$(health).css("color","black");
			});

		}); */
		
	</script>
	</body>
</html>
