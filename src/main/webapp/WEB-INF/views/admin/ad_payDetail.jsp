<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<link rel="stylesheet" href="resources/css/adminmargin.css"/>
	<link rel="stylesheet" href="resources/css/padding.css"/>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
		<style>
			tbody  td {padding:20px; padding-bottom: 0;}
			tbody  th {padding:10px;}
			#prof{margin-left: 105px; text-align: center; margin-top: 20px; font-size: 18px;}
			p{margin :0}
            .infoMenu{font-size: 16px;}
            input:disabled{
            background-color:white;
            }
            .about-info{margin:0;}
		</style>


</head>
<body>
			<!-- Page Preloder -->
			<div id="preloder">
				<div class="loader"></div>
			</div>
			<!-- Main section start -->
			<div class="main-site-warp">

				<%@ include file="/WEB-INF/views/common/ad_menuBar.jsp" %>
			
				
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
						<h2>결제정보</h2>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="qnaListView.do" id="qnaList" class="infoMenu">문의사항</a><br><br>
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
					<h3>관리자 - 결제정보상세</h3>
					<div class="row" style="margin-left: 30px; height: 400px;">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<div style="margin-top: 50px; margin-right: 20px;">
                            <div class="ch-register-pic"></div>
                            <button class="site-btn" style="margin-top: 30px; margin-left: 100px; height: 300px; width: 280px; font-size: 15px;"> 프로필 사진 (300x280)</button>				
							<div id="prof">
							<p>카테고리 > 세부카테고리</p>
							<p style="font-size: 14px; margin-top: 10px;"><b>${ch.chName}</b></p>
							
							</div>
						</div>
						
                        <div class="col-xl-6" style="margin-left: 20px;">
							<div class="contact-text-warp">
								<div class="contact-form" style="margin-top: 60px;">
									
									<div class="row">	
                                        <div class="col-lg-12">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.userId}" disabled>
                                            <input type="hidden" name="userId" value="${p.userId}">
                                            <input type="hidden" id="pId" name="pId" value="${p.pId}">
                                        </div>
										<div class="col-lg-12">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.mList[0].userName}" disabled>
                                             <input type="hidden" name="userName"  value="${p.mList[0].userName}" >
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="select" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.pmethod}" disabled>
                                             <input type="hidden" name="pmethod"  value="${p.pmethod}" >
                                        </div>  
                                        <div class="col-lg-6">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${p.price} (원 )" disabled>
                                             <input type="hidden" name="price"  value="${p.price}" >
                                        </div>                                
										<div class="col-lg-6">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${bank}" disabled>
                                             <input type="hidden" name="bank"  value="${bank}" >
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="${number}" disabled>
                                             <input type="hidden" name="number"  value="${number}" >
                                        </div>
                                        <div class="col-lg-12">
                                        	<c:if test="${p.refund_yn eq 'N'}">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="결제완료" disabled>
                                             <input type="hidden" name="refund_yn"  value="${p.refund_yn}" >
                                            </c:if>
                                            <c:if test="${p.refund_yn eq 'Y'}">
                                            <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="환불완료" disabled>
                                             <input type="hidden" name="refund_yn"  value="${p.refund_yn}" >
                                            </c:if>
                                        </div>
                                     
                                      
                                        </div>
									</div>
								</div>
							</div>
						</div>
						<div>
						<br><br><br><br><br><br>
							<button type="button" id="refund" class="site-btn sb-solid mr-3 mb-3" style="width:20%; height: 80px; margin: 20px; margin-left: 300px;">
								환불하기
							</button>
							<button class="site-btn sb-solid mr-3 mb-3" style="width:20%; height: 80px;" onclick="location.href='paylist.do'">
								취소하기
							</button>
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
		var pId = $('#pId').val();
		
	
		 $('#refund').click(function(){
			$.ajax({
				url:"refundOne.do",
				type:"post",
				data:{
					pId:pId
				},success:function(result){
					if(result == "success"){
					alert('환불성공');
					location.reload();
	        		}
				},error:function(request,errorcode,error){
					alert('환불실패');
				}
			});
			
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
