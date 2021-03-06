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
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

		<style>
			tbody  td {padding:20px; padding-bottom: 0;}
			tbody  th {padding:10px;}
			#prof{margin-left: 105px; text-align: center; margin-top: 20px; font-size: 18px;}
			p{margin :0}
			
			#file{
				display: none;
			}
			
			.check{display: none; font-size: 14px;}
			.c1{color:green;}
			.c2{color:red;}
			.c3{color:red;}
			.c4{color:green;}
			.c5{color:red;}
			.c6{color:red;}
			.c7{color:green;}
			.c8{color:red;}
			.c9{color:red;}
			.about-info{width:348px;}
			.about-info p{font-size:12px;}
			input{color:#696969;
				font-size:16px;
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

		
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
                    <!-- 로고 구역 -->
					<div class="mb-warp">
						<a href="indexView.do" class="site-logo">
							<h2 style="margin-left: 6px;">위대한 한걸음</h2>
							<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
						</a>
                    <!-- 서브메뉴 --><br><br>
					<div class="about-info">
						<h2>회사소개</h2>
						<p style="font-size: 12px;">한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약<br>(One small step for a man, one giant leap for mankind.)<br>
							이 명언은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.
							혼자선 힘들었던 계획들, 같은 목표의 사람들과 함께 해보세요.<br>
						   	당신의 미래를 시작하기 위한 첫 걸음을 도와드릴게요.
						</p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
					</ul>		
					<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
						All rights reserved </p>
					</div>
				</div>
			</div>
            <!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
					<form action="updateMember.do" method="post" onsubmit="return pattern();" enctype="multipart/form-data">
					<h3>회원정보수정</h3>
					<div class="row" style="margin-left: 30px; height: 400px;">
						<div style="margin-top: 100px; margin-right: 20px;">
							<input type="text" id="picture" name="picture" style="display:none" value="${ loginUser.picture }">
							<input id="file" name="uploadFile" type="file" onchange="previewImage(this,'View_area')" style="margin-left: 50%;">
							<div id="View_area" style="height: 350px; width: 350px; dispaly: inline; border:1px solid black; text-align:center; padding-top:24px;">
								<div id="View_area_in" style="height: 300px; width: 300px; margin-left:24px; text-align:center; background-repeat:no-repeat; background-size:contain;"></div>
							</div>
						<script>
							$(function(){
								$("#View_area_in").css('background-image','url(resources/images/user/'+$('#picture')[0].value+')');
							});
						</script>
							<label for="file" style="margin-left: 35%; width:100px; border:1px solid black; margin-top: 20px; padding: 8px; text-align:center; cursor:pointer">Image</label><input id="file" name="uploadFile" type="file" onchange="previewImage(this,'View_area')" style="margin-left: 50%;">

						</div>
                        <div class="col-xl-6" style="margin-left: 20px;">
							<div class="contact-text-warp">
								<div class="contact-form" style="margin-top: 60px;">
									<div class="row">	
                                        <div class="col-lg-12">
                                            <input type="text" id="userId" name="userId" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="아이디" value="${ loginUser.userId }" readonly>
                                        </div>
										<div class="col-lg-6">
                                            <input type="password" id="password" name="password" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="비밀번호" value="${ loginUser.password }">
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="password" id="password2" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="비밀번호확인" value="${ loginUser.password }">
                                            <span class="check c7">사용가능</span><span class="check c8">비밀번호 불일치</span><span class="check c9">사용불가능한 비밀번호</span>
                                            <input id="chkPass" type="hidden" value="0">
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" id="userName" name="userName" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="이름" value="${ loginUser.userName }" readonly>
                                        </div>
										<div class="col-lg-6">
                                            <input type="text" id="nickName" name="nickName" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="닉네임" value="${ loginUser.nickName }">
                                            <span class="check c4">사용가능</span><span class="check c5">중복된 닉네임</span><span class="check c6">사용불가능한 닉네임</span>
                                            <input id="checkNick" type="hidden" value="0">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" id="birthDay" name="birthDay" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="생년월일" value="${ loginUser.birthDay }">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" id="email" name="email" style="border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="이메일" value="${ loginUser.email }">
                                        </div>
									</div>
								</div>
							</div>
						</div>
						
						
							<div id="account" style="display:none">${ loginUser.account }</div>
						
							<div class="col-lg-4" style="margin-top:20px;">
								<input type="text" id="bankName" class="account" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #bbbbbb; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="은행명">
							</div>
							<div class="col-lg-4" style="margin-top:20px;">
								<input type="text" id="accountHolder" class="account" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #bbbbbb; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="예금주">
							</div>
							<div class="col-lg-4" style="margin-top:20px;">
								<input type="text" id="accountNumber" class="account" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #bbbbbb; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="계좌번호">
							</div>
							
							<input type="text" class="account" name="account" style="display:none">
							
							<script>
								var account = $("#account")[0].innerHTML;
								var acSplit = account.split(',');
								
								$('.account')[0].value = acSplit[0];
								$('.account')[1].value = acSplit[1];
								$('.account')[2].value = acSplit[2];
							</script>
							
							<script>
								var accountMod = $('.account')[0].value + "," + $('.account')[1].value + "," + $('.account')[2].value;
								
								$(".account")[3].value = accountMod;
							</script>
							
							
						 
							<div class="col-lg-8" style="margin-top: 50px;">
								<input type="text" id="address" name="address" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #bbbbbb; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 83%;" placeholder="주소" value="${ loginUser.address }"><button style="margin-left: 10px;">주소검색</button>
							</div>
							<div class="col-lg-4" style="margin-top: 50px;">
								<input type="text" id="phone" name="phone" style="height: 46px; font-size:14px; font-style:italic; border: 1px solid #bbbbbb; padding: 0 18px; border-top: none; border-left: none; border-right: none; width: 90%;" placeholder="전화번호" value="${ loginUser.phone }">
							</div>
						<div style="margin-top: 50px;">
							<button type="submit" class="site-btn sb-solid mr-3 mb-3" style="width:20%; height: 80px; margin: 20px; margin-left: 300px;">
								정보수정
							<button class="site-btn sb-solid mr-3 mb-3" style="width:20%; height: 80px;" onclick="location.href='my_profileView.do'">
								취소하기
							</button>
						</div>
					</div>
				</form>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
		</div>
	</div>
	<!-- Main section end -->
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	function previewImage(targetObj, View_area) {
		
		$("#View_area_in").css('display','none');
		
		var preview = document.getElementById(View_area); //div id
		var ua = window.navigator.userAgent;

	  //ie일때(IE8 이하에서만 작동)
		if (ua.indexOf("MSIE") > -1) {
			targetObj.select();
			try {
				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
				var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(View_area); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
			} catch (e) {
				if (!document.getElementById("ie_preview_error_" + View_area)) {
					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + View_area;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
	  //ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for ( var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
				if (prevImg) {
					preview.removeChild(prevImg);
				}
				var img = document.createElement("img"); 
				img.id = "prev_" + View_area;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '300px'; 
				img.style.height = '300px';
				preview.appendChild(img);
				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				} else { // safari is not supported FileReader
					//alert('not supported FileReader');
					if (!document.getElementById("sfr_preview_error_"
							+ View_area)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + View_area;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}    
	
		function addrSearch() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = data.address; // 최종 주소 변수
	 
	                // 주소 정보를 해당 필드에 넣는다.
	                $('#address').val(addr);
	                // 주소로 상세 정보를 검색
	            }
	        }).open();
	    }
	
		function pattern(){
			var userId = $('#userId').val();
			var password = $('#password').val();
			var password2 = $('#password2').val();
			var userName = $('#userName').val();
			var nickName = $('#nickName').val();
			var email = $('#email').val();
			var birthDay = $('#birthDay').val();
			var bankName = $('#bankName').val();
			var accountHolder = $('#accountHolder').val();
			var accountNumber = $('#accountNumber').val();
			var address = $('#address').val();
			var phone = $('#phone').val();
			var file = $('#file').val();
			console.log(file);
			if(userId == ""){
				console.log(userId);
				alert("아이디를 입력해 주세요");
				return false;
			}else{
				if($('#checkID').val() == 2){
					alert("아이디 중복입니다")
					return false;
				}else if($('#checkID').val() == 3){
					console.log($('#checkID').val());
					alert("사용 불가능한 아이디 입니다")
					return false;
				}
			}
			
			if(password == "" || password2 == ""){
				alert("패스워드를 입력해 주세요");
				return false;
			}else{
				if($('#chkPass').val() == 2){
					alert("비밀번호가 일치 하지 않습니다");
					return false;
				}else if($('#chkPass').val() == 3){
					alert("사용 불가능한 비밀번호 입니다");
					return false;
				}
			}
			
			if(userName == ""){
				alert("이름을 입력해 주세요");
				return false;
			}else{
				if(!check(/^[가-힣]{2,}$/,userName)){
					alert("한글로 2자 이상 써주세요");
					return false;
				}
			}
			
			if(nickName == ""){
				alert("닉네임을 입력해 주세요");
				return false;
			}else{
				if($('#checkNick').val() == 2){
					alert("닉네임 중복입니다.");
					return false;
				}else if($('#checkNick').val() == 3){
					alert("사용 불가능한 닉네임 입니다");
					return false;
				}
			}
			
			if(birthDay == ""){
				alert("생년월일을 입력해주세요");
				return false;
			}else{
				if(!check(/^[0-9]{8}$/,birthDay)){
					alert("생년월일을 년도 까지 입력해 주세요  예시:19990101");
					return false;
				}
			}
			
			if(email == ""){
				alert("이메일을 입력해 주세요");
				return false;
			}
			
			if(bankName == ""){
				alert("은행 이름을 입력해 주세요");
				return false;
			}
			
			if(accountHolder == ""){
				alert("예금주 입력해주세요");
				return false;
			}
			
			if(accountNumber == ""){
				alert("계좌번호를 입력해주세요");
				return false;
			}
			
			if(address == null){
				alert("주소를 입력해 주세요");
				return false;
			}
			
			if(phone == ""){
				alert("연락처를 입력해주세요");
				return false;
			}else{
				if(!check(/^[0-9]{9,12}$/,phone)){
					alert("-빼고 연락처를 입력해주세요");
					return false;
				}
			}
			
			/* if(file == ""){
				alert("프로필 사진을 넣어 주세요");
				return false;
			} */
			
		}
		
		function check(p,e){
			if(!p.test(e)){
				return false;
			}
			return true;
		}
		
		$(function(){
			$('#userId').on("keyup",function(){
				var idCheck = $('#userId').val();
				var file = $('#file').val();
				console.log(file);
				$.ajax({
					url:"idCheck.do",
					data:{idCheck:idCheck},
					type:"post",
					success:function(data){
						if(data=="1"){
							$('.c1').show();
							$('.c2').hide();
							$('.c3').hide();
							$('#checkID').val(1);
						}else if(data == "2"){
							$('.c1').hide();
							$('.c2').show();
							$('.c3').hide();
							$('#checkID').val(2);
						}else{
							$('.c1').hide();
							$('.c2').hide();
							$('.c3').show();
							$('#checkID').val(3);
						}
					},error:function(){
						console.log("에러");
					}
				});
			});
			
			$('#password').on("keyup",function(){
				var password = $('#password').val();
				var password2 = $('#password2').val();
				if(!check(/^[a-zA-Z0-9]{4,12}$/,password)){
					$('.c7').hide();
					$('.c8').hide();
					$('.c9').show();
					$('#chkPass').val(3);
				}else{
					if(password != password2){
						$('.c7').hide();
						$('.c8').show();
						$('.c9').hide();
						$('#chkPass').val(2);
						console.log($('#chkPass').val());
					}else{
						$('.c7').show();
						$('.c8').hide();
						$('.c9').hide();
						$('#chkPass').val(1);
						console.log($('#chkPass').val());
					}
				}	
			});
			$('#password2').on("keyup",function(){
				var password = $('#password').val();
				var password2 = $('#password2').val();
				if(!check(/^[a-zA-Z0-9]{4,12}$/,password)){
					$('.c7').hide();
					$('.c8').hide();
					$('.c9').show();
					$('#chkPass').val(3);
				}else{
					if(password != password2){
						$('.c7').hide();
						$('.c8').show();
						$('.c9').hide();
						$('#chkPass').val(2);
						console.log($('#chkPass').val());
					}else{
						$('.c7').show();
						$('.c8').hide();
						$('.c9').hide();
						$('#chkPass').val(1);
						console.log($('#chkPass').val());
					}
				}	
				
			});
			
			$('#nickName').on("keyup",function(){
				var nickName = $('#nickName').val();
				console.log(nickName);
				$.ajax({
					url:"nickCheck.do",
					data:{nickName:nickName},
					type:"post",
					success:function(data){
						if(data=="1"){
							$('.c4').show();
							$('.c5').hide();
							$('.c6').hide();
							$('#checkNick').val(1);
						}else if(data == "2"){
							$('.c4').hide();
							$('.c5').show();
							$('.c6').hide();
							$('#checkNick').val(2);
						}else{
							$('.c4').hide();
							$('.c5').hide();
							$('.c6').show();
							$('#checkNick').val(3);
						}
					},error:function(){
						console.log("에러");
					}
				});
			});
			
			$('#address').click(function(){
				addrSearch();
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
