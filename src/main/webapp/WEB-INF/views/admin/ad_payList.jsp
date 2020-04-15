<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<style>
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
		a{text-decoration: none; color: black;}
	</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->

	<div class="main-site-warp">


		
	<%-- <%@ include file="/WEB-INF/views/common/ad_menuBar.jsp" %> --%>


		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			
				<div class="mb-warp">
					<a href="../homepage/index.html" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>

					<div class="about-info">
						<h2>결제정보</h2>
						<a href="adminProfile.html" id="ad_profile" class="infoMenu">회원정보</a><br><br>
						<a href="ad-chal.html" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad-cert.html" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="admin_notice.html" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="admin_qna.html" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
					
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					
				<div class="blog-post-item">
						<button style="margin-top: 12px;" onclick="refundSelect();">환불하기</button>
					<form action="plistSearch.do" method="post">
						<div id="searchArea">
							<div id="searchSelect"> 
								<select name="selecter" id="selecter">
									<option value="userId">유저ID</option>
									<option value="chName">챌린지명</option>
									<option value="pNo">결제번호</option>
								</select>					
							</div>
							<!-- 검색 -->
							<input class="searchBox" type="search" name="searchValue">
							<button><img src="resources/images/main/search.png" alt=""></button>
						</div>
					</form>

						<!-- 문의사항 테이블 -->
						<table class="qnaTable">
							
							<tr class="thArea">
								<th>Check</th>
								<th>결제 번호</th>
								<th>챌린지명</th>
								<th>유저ID</th>
								<th>마감기한</th>
								<th>결제정보</th>
								<th>환급여부</th>
							</tr>
						
							<c:if test="${!empty psearch}">
							<c:forEach var="l" items="${ psearch }">
							 <c:forEach var="p" items="${ l.chList }">
							<!-- 반복문 예정 -->
							<tr class="noticeList">
								<td><input type="checkbox" name="refund"></td>
								<td>${ l.pId }</td>
								<td>${ p.chName }</td>
								<td>${ l.userId }</td>
								<td>${ l.pDate }</td>
								<td><button onclick="location.href='paydetail.do?pId=${ l.pId }'">정보</button></td>
								<td>${ l.refund_yn }</td>
							</tr>
							</c:forEach>
							</c:forEach>
							</c:if>
							
							<c:if test="${chsearch != null}">
							<c:forEach var="l" items="${ chsearch }">
							 <c:forEach var="p" items="${ l.chList }">
							<!-- 반복문 예정 -->
							<tr class="noticeList">
								<td><input type="checkbox" name="refund"></td>
								<td>${ l.pId }</td>
								<td>${ p.chName }</td>
								<td>${ l.userId }</td>
								<td>${ l.pDate }</td>
								<td><button onclick="location.href='paydetail.do?pId=${ l.pId }'">정보</button></td>
								<td>${ l.refund_yn }</td>
							</tr>
							</c:forEach>
							</c:forEach>
							</c:if>
							
							<c:if test="${psearch == null && chsearch == null}">
							<c:forEach var="l" items="${ list }">
							 <c:forEach var="p" items="${ l.chList }">
							<!-- 반복문 예정 -->
							<tr class="noticeList">
								<td><input type="checkbox" name="refund"></td>
								<td>${ l.pId }</td>
								<td>${ p.chName }</td>
								<td>${ l.userId }</td>
								<td>${ l.pDate }</td>
								<td><button onclick="location.href='paydetail.do?pId=${ l.pId }'">정보</button></td>
								<td>${ l.refund_yn }</td>
							</tr>
							</c:forEach>
							</c:forEach>
							</c:if>
							
							<!-- 삭제 끝 -->

						</table>
		
						<div class="qnaPaging">
						<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="paylist.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="pagination" value="paylist.do">
							<c:param name="currentPage" value="${ p }"/>
						</c:url>
						<a href="${ pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="paylist.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
						</div>
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
	
		
		<div class="copyright"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
  			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
		</div>
	<!-- Main section end -->
	<script>
		$(function(){
			$('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247"); //even 짝수
		});
		
		var checkbox = $("input:checkbox[name=refund]:checked");	
		var nameList = "";
		
		function refundSelect(){
			
			var result = [];
			$('input:checkbox[name=refund]:checked').each(function(i){
				
			 
			var	td = $(this).parents().parents().children().eq(1).text();
			 
				result.push(td);
			 
			 });
			 $.ajax({
				 url:"refund.do",
				 type:"POST",
				 traditional : true,
				 data:{"result" : result },
				 success:function(result){
						alert('환불완료');
						location.reload();
		        	},error : function(request,errorcode,error){
		        		alert('환불실패');
					}
		        	
		        });
			
			 
			 console.log(result);
			 
		
			
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
