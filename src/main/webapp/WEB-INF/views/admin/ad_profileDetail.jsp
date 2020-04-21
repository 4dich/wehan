<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/img/favicon.ico" rel="shortcut icon"/>

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
		.black{
			display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}
		.blackinsert{
			margin-left:25%;
			margin-top:15%;
			width:50%;
			height:40%;
			background: white;
			vertical-align: middle;
		}
		.blackcancle{
			margin-left:25%;
			margin-top:15%;
			width:50%;
			height:40%;
			background: white;
			vertical-align: middle;
		}
		
		input{background:white;}
		
		.infoMenu{font-size: 16px;}
		tbody  td {padding:20px; padding-bottom: 0;}
		tbody  th {padding:10px;}
		#prof{margin-left: 105px; text-align: center; margin-top: 20px; font-size: 18px;}
		p{margin :0}
		
		
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
			<div class="black">
			<div class="blackinsert">
			<br><br><br>
				<table align="center">
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" value="${m.userId}" style="border-top: none; border-left: none; border-right: none;" disabled>
							<input id="bUserId" type="hidden" value="${m.userId}" style="border-top: none; border-left: none; border-right: none;">
						</td>
					</tr>
					<tr>
						<th>차단 사유</th>
						<td><input id="BanReason" type="text" placeholder="차단 이유" style="border-top: none; border-left: none; border-right: none;"></td>
					</tr>
					<tr>
						<th>차단 기간</th>
						<td><input id="BanDay" type="text" placeholder="차단 기간" style="border-top: none; border-left: none; border-right: none;"></td>
					</tr>
					<tr>
						<td></td>
						<td><button id="blackInsert">등록</button><button onclick="cancle();">취소</button></td>
					</tr>
				</table>
			</div>
			<div class="blackcancle">
				<c:if test="${!empty b}">
					<input id="bId" type="hidden" value="${b.bId}">
					<br><br><br>
				<table align="center">
					<tr>
						<th>아이디</th>
						<td>${b.userId}</td>
					</tr>
					<tr>
						<th>차단 사유</th>
						<td>${b.banReason}</td>
					</tr>
					<tr>
						<th>차단 날짜</th>
						<td>${b.banDate}</td>
					</tr>
					<tr>
						<th>차단 기간</th>
						<td>${b.banTerm}</td>
					</tr>
					<tr>
						<td><button onclick="cancleCheck();">차단해제</button></td>
						<td><button onclick="cancle();">취소</button></td>
					</tr>
				</table>
				</c:if>
			</div>
		</div>

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
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

					<div class="about-info">
						<h2>회원정보</h2>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<!-- <a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br> -->
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="ad_questionsList.do" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- Page start -->
			
			
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
				
					<h3>회원정보 상세보기</h3>
					<div class="row" style="margin-left: 30px;">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<div style="margin-top: 50px; margin-right: 20px;">
                            <div class="ch-register-pic"></div>
                            <div  style="margin-top: 30px; margin-left: 100px; height: 300px; width: 280px; font-size: 15px;">
                           		 <img src='resources/images/user/${m.picture }' style="height: 300px; width: 280px;">
                            </div>				
							<div id="prof">
							<p>회원 마이페이지</p>
							<!-- <p style="font-size: 20px; margin-top: 20px;"><b>챌린지명</b></p>
							<p>결제금액</p> -->
							</div>
						</div>
                        <div class="col-xl-6" style="margin-left: 20px;">
							<div class="contact-text-warp">
								<form class="contact-form" style="margin-top: 60px;">
									<div class="row">	
                                        <div class="col-lg-12">
                                            <input id="userId" value="${m.userId}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
										<div class="col-lg-12">
                                            <input id="nickName" value="${m.nickName}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
                                        <div class="col-lg-12">
                                            <input id="userName" value="${m.userName}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
                                        <div class="col-lg-12">
                                            <input id="birthDay" value="${m.birthDay}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
                                        <div class="col-lg-12">
                                            <input id="address" value="${m.address}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
                                        <div class="col-lg-12">
                                            <input id="email" value="${m.email}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
										<div class="col-lg-12">
                                            <input id="phone" value="${m.phone}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
										<div class="col-lg-12">
                                            <input id="account" value="${m.account}" type="text" style="border-top: none; border-left: none; border-right: none;" disabled>
                                        </div>
										<div class="col-lg-12" id="blackdiv">
                                            <input id="blackList" value="${m.blacklistYN}" type="text" style="border-top: none; border-left: none; border-right: none;">
                                        </div>
									</div>
								</form>
							</div>
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
			
			
			$("#blackList").on({
				"mouseenter":function(){
					$(this).css("background","lightgray");
					if($(this).val()=="N"){
					$(this).val($(this).val()+ "       차단하기");
					}else{
					$(this).val($(this).val()+ "       해제하기");
					}
				},
				"mouseout":function(){
					$(this).css("background","white");
					$(this).val($(this).val().substring(0,1));
				},
				"click":function(){
					var blackList = $('#blackList').val();
					console.log(blackList);
					if(blackList == "N       블럭하기"){
						$('.black').show();
						$('.blackinsert').show();
						$('.blackcancle').hide();
						
					}else{
						$('.black').show();
						$('.blackinsert').hide();
						$('.blackcancle').show();
					}
				}
			})
		});
		
		/* $('#blackList').click(function(){
			var blackList = $('#blackList').val();
			console.log(blackList);
			if(blackList == "N"){
				$('.black').show();
				$('.blackinsert').show();
				$('.blackcancle').hide();
				
			}else{
				$('.black').show();
				$('.blackinsert').hide();
				$('.blackcancle').show();
			}
		}); */
		
		$('#blackInsert').click(function(){
			var BanDay = $('#BanDay').val();
			var BanReason = $('#BanReason').val();
			if(!check(/^[0-9]*$/,BanDay)){
				alert("차단 기간은 숫자만 입력해주세요");
			}else if(BanReason == null || BanReason == ""){
				alert("차단 이유를 입력해 주세요.");
			}else{
				insertCheck();
			}
		});
		
		function check(p,e){
			if(!p.test(e)){
				return false;
			}
			return true;
		}
		
		function insertCheck() {
			 if (confirm("블랙리스트 등록 하시겠습니까?")){    //확인
				var bUserId = $('#bUserId').val();
				var BanReason = $('#BanReason').val();
				var BanDay = $('#BanDay').val();
				
				console.log("bUserId : "+ bUserId + " BanReason : " +BanReason + " BanTerm : " + BanDay );
				$.ajax({
					url:"blackInsert.do",
					type:"post",
					data:{"userId":bUserId,"banReason":BanReason,"banDay":BanDay},
					success:function(data){
						if(data=="ok"){
							alert("블랙리스트 등록 됬습니다.");
							location.reload();
							$('.black').hide();
						}
					},error:function(){
						console.log("에러");		
					}
				});
			 }
		}
		
		function cancleCheck(){
			 if (confirm("블랙리스트 차단 해제 하시겠습니까?")){    //확인
				var bId = $('#bId').val();
				$.ajax({
					url:"blackCancle.do",
					type:"post",
					data:{"bId":bId},
					success:function(data){
						if(data=="ok"){
							alert("블랙리스트 취소 됐습니다.");
							location.reload();
							$('.black').hide();
						}
					},error:function(){
						console.log("에러");
					}
				});
			}
		}
		
		function cancle(){
			$('.black').hide();
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