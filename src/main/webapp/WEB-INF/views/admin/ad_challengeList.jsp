<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
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

	<style>
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
	
		<include file="/WEB-INF/views/common/ad_menuBar"/>
		
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
					<a href="homepage/index.html" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
			
					<!-- 관리자 사이드 메뉴 -->
					<div class="about-info">
						<h2>챌린지 정보</h2>
						<a href="pay.html" id="ad_profile" class="infoMenu">결제정보</a><br><br>
						<a href="adminProfile.html" id="ad_profile" class="infoMenu">회원정보</a><br><br> <!-- 사이드 메뉴들 -->
						<a href="ad-cert.html" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="admin_notice.html" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="admin_qna.html" id="ad_questions" class="infoMenu">문의사항</a><br><br>
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
									<select name="" id="">
										<option>챌린지명</option>
										<option>ID</option>
										<option>시작 날짜</option>
										<option>종료 날짜</option>
									</select>					
								</div>
								<!-- 검색 -->
								<input class="searchBox" type="search">
								<button><img src="resources/images/main/search.png" alt=""></button>
							</div>

							<table class="qnaTable">
								<tr class="thArea">
									<th>No.</th>
									<th>챌린지 번호</th>
									<th>챌린지명</th>
									<th>개설 유저ID</th>
									<th>시작 날짜</th>
									<th>종료 날짜</th>
									<th>참여 인원</th>
									<th>배팅 금액</th>
									<th>총 모집 금액</th>
									<th>상세 정보</th>
									<th>조회 수</th>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>

								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>
								<tr class="noticeList">
									<td>1</td>
									<td>ch00001</td>
									<td>하루에 3번 팩하기</td>
									<td>knine22</td>
									<td>2020-03-20</td>
									<td>2020-03-25</td>
									<td>10명</td>
									<td>1000원</td>
									<td>10000원</td>
									<td><button>정보</button></td>
									<td>3</td>
								</tr>

							</table>
							
							<div class="qnaPaging">
							<!-- 선생님께 물어보자
							왜 번호가 0부터 시작되는지 -->
								<!-- [이전] -->
								<c:if test="${ pi.currentPage eq 1 }">
									&lt; &nbsp;
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
									<c:url var="before" value="clist.bo">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
									</c:url>
									<a href="${ before }">&lt;</a> &nbsp;
								</c:if>
								
								<!-- 페이지 -->
								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<b>${ p }</b>
									</c:if>
									
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="pagination" value="clist.bo">
											<c:param name="currentPage" value="${ p }"/>
										</c:url>
										<a href="${ pagination }">${ p }</a> &nbsp;
									</c:if>
								</c:forEach>
								
								<!-- [다음] -->
								<c:if test="${ pi.currentPage eq pi.maxPage }">
									>
								</c:if>
								<c:if test="${ pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="clist.bo">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
									</c:url> 
									<a href="${ after }">></a>
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
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
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
