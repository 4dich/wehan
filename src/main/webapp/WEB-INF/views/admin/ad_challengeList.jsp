<%@page import="com.kh.wehan.challenge.model.vo.Challenge"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>AD_CHALLENEGELIST</title>
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
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<link rel="stylesheet" href="resources/css/adminmargin.css"/>
	<style>
		.about-info{margin:0;}
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
	</style>
	<!--</head>-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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
						<a href="ad_questionsList.do" id="ad_questions" class="infoMenu">문의사항</a><br><br>
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
			<div class="sampleArea">
				<div class="page-section blog-page">
					<div class="blog-posts">
						<div class="blog-post-item">
								<div id="searchArea">
									<div id="searchSelect"> 
										<select name="searchChallengeAdmin" id="searchChallengeAdmin">
											<option value="chName">챌린지명</option>
											<option value="userId">ID</option>
											<option value="startDate">시작 날짜</option>
											<option value="endDate">종료 날짜</option>
										</select>
										<c:if test="${!empty search and search ne null }">
										<script>
										 $("#searchChallengeAdmin").val("${search}");
										 </script>
										</c:if>				
									</div>
								
									<!-- 검색 -->
									<c:if test="${!empty sh and sh ne null }">
									<input class="searchBox" name="search" type="search" value="${sh}">
									</c:if>
									<c:if test="${empty sh or sh eq null }">
									<input class="searchBox" name="search" type="search" >
									</c:if>
									<button onclick="pagination(1);"><img src="resources/images/main/search.png" alt=""></button>
								</div>
							
							<div class="listCount" style="display: none;">${ listCount }</div>

							<table class="qnaTable">
								<tr class="thArea">
									<th>챌린지 번호</th>
									<th>챌린지명</th>
									<th>개설 유저ID</th>
									<th>시작 날짜</th>
									<th>종료 날짜</th>
									<th>참가 인원</th>
									<th>참가비</th>
									<th>총 모집 금액</th>
									<th>상세 정보</th>
								</tr>
								<c:forEach var="ch" items="${ list }">
									<tr class="noticeList">
										<td>${ ch.chId }</td>
										<td>${ ch.chName }</td>
										<td>${ ch.userId }</td>
										<td>${ ch.startDate }</td>
										<td>${ ch.endDate }</td>
										<td>${ ch.chPeople }</td>
										<td class="price">${ ch.price }</td>
										<td class="totalPrice">${ ch.totalPrice }</td>
										<td><button class="showDetailBtn">정보</button></td>
									</tr>
								</c:forEach>
							</table>
							
							<%-- <div class="qnaPaging">
								<!-- [이전] -->
								<c:if test="${ pi.currentPage eq 1 }">
									[이전]&nbsp; 
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
									<c:url var="before" value="clist.do">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
									</c:url>
									<a href="${before}" value="${currentPage-1}">[이전]</a>&nbsp; 
								</c:if>
								
								<!-- 페이지 -->
								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<font color="red" size="4"><b>[${ p }]</b></font>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="pagination" value="clist.do">
											<c:param name="currentPage" value="${ p }"/>
										</c:url>
										<a href="${ pagination }" value="${p}">${ p }</a> 
									</c:if>
								</c:forEach>
								
								<!-- [다음] -->
								<c:if test="${ pi.currentPage eq pi.maxPage }">
									&nbsp;[다음]
								</c:if>
								<c:if test="${ pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="clist.do">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
									</c:url>
									&nbsp;<a href="${ after }" value="${currentPage+1}">[다음]</a> 
								</c:if>
												
							</div> --%>
							
								<div class="qnaPaging">
								<!-- [이전] -->
								<c:if test="${ pi.currentPage eq 1 }">
									[이전]&nbsp; 
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
						
									<a onclick="pagination(${ pi.currentPage -1})">[이전]</a>&nbsp; 
								</c:if>
								
								<!-- 페이지 -->
								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<font color="red" size="4"><b>[${ p }]</b></font>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
								
										<a onclick="pagination(${p})">${ p }</a> 
									</c:if>
								</c:forEach>
								
								<!-- [다음] -->
								<c:if test="${ pi.currentPage eq pi.maxPage }">
									&nbsp;[다음]
								</c:if>
								<c:if test="${ pi.currentPage ne pi.maxPage }">
								
									&nbsp;<a onclick="pagination(${pi.currentPage+1})">[다음]</a> 
								</c:if>
												
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
			All rights reserved </p>
		</div>
	</div>
	<!-- Main section end -->

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
	
	
		function pagination(currentPage){
			var searchChallengeAdmin = $('#searchChallengeAdmin').val();
			var searchBox = $('.searchBox').val();
			var chalValue = $('#chalValue').val();
			location.href="searchChallengeAdmin.do?searchChallengeAdmin="+searchChallengeAdmin+"&search="+searchBox+"&currentPage="+currentPage;
			
		}
	
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
		});

			
		$('.showDetailBtn').click(function(){
			var chId = $(this).parent().parent().children().eq(0).text();
			location.href='selectOneDetail.do?chId='+chId;
			});
			
			
		
		$(document).on('click','.search',function(e){
			e.preventDefault();
			var url = "ad_challengeListView.do";
			url = url + "?searchChallenge=" + $('#searchChallenge').val();
			url = url + "&keyword=" + $('.searchBox').val();
			location.href = url;
			console.log(url);
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
