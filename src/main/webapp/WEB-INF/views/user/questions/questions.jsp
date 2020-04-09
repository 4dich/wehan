<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
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
	<link rel="stylesheet" href="resources/css/qna.css"/>
	<!-- <link rel="stylesheet" href="resources/css/left_section.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
                <a href="notice.html">공지사항</a>
                <a href="qnaList.do" style="color: red;">문의사항</a>
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
				<h2>문의사항</h2>
				<!-- 감성글 작성 -->
				<p>위대한 한걸음에 궁금증이 생기신다면 <br>
				언제든지 문의해주세요! </p>
			</div>
			<button class="site-btn sb-dark" style="width: 280px; font-size: 15px; margin-bottom: 40px;" type="button" onclick="location.href='ch-register.html'">
				문의사항 등록하기
				<images src="resources/images/arrow-righ-3.png" alt="">
			</button>

			<ul class="contact-info">
				<li>서울특별시 강남구 테해란로14길 6</li>
				<li>남도빌딩 3F H반 T:1544-9970</li><br>
				<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
			</ul>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					<h3 class="qnaText">문의사항</h3>
					
					<div class="blog-post-item">

						<div id="searchArea">
							<div id="searchSelect"> 
								<select name="" id="">
									<option>작성자</option>
									<option>제목</option>
								</select>					
							</div>
							<!-- 검색 -->
							<input class="searchBox" type="search">
							<button><images src="resources/images/main/search.png" alt=""></button>
						</div>


						<!-- 문의사항 테이블 -->
						<table class="qnaTable">
							
							<tr class="thArea">
								<th>NO</th>
								<th>제목</th>
								<th>유저명</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							<!-- 반복문 예정 -->
							
                      <c:forEach var="q" items="${list}">
                        <tr class="questionsList">
								<td>
								    <input type="hidden" value="${q.qId }"/>							    
																
								</td>								
								<td>${q.qTitle }</td>
								<td>${q.qUserid }</td>
								
								<td>${q.qDate }</td>
															
								<td>${q.qCount }</td>
								<td>${q.qContent }</td>
							</tr>
                      
                      </c:forEach> 			
							
						</table>
						
						
		<!-- 페이징 처리 -->
						<!-- 이전 -->
						<div class="qnaPaging">
							<c:if test="${pi.currentPage eq 1 }">
								<
							</c:if>
							<c:if test ="${pi.currentPage ne 1 }">
								<c:url var="before" value="qnaList.do">
									<c:param name="currentPage" value="${pi.currentjPage - 1}"/>
								</c:url>
								<a href="${ before }"></a>
							</c:if>
							
							<!-- 페이지 -->
							<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<font color="red" size = "4"><b>[${ p }]</b></font>
								</c:if>
								
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="pagenation" value="qnaList.do">
										<c:param name="currentPage" value="${ p }"/>
									</c:url>
									<a href="${ pagination }">${p}</a>
								</c:if>
							</c:forEach>
							
							<!-- 다음 -->
							<c:if test="${pi.currentPage eq pi.maxPage }">
								>
							</c:if>
							<c:if test="${pi.currentPage ne pi.maxPage }">
								<c:url var="after" value="qnaList.do">
									<c:param name="currentPage" value="${pi.currentPage + 1 }"/>
								</c:url>
								<a href="${after}">></a>
							</c:if>
							
						
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