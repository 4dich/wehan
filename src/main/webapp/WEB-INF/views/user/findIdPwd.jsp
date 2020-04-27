<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	<!-- <link rel="stylesheet" href="../resources/css/main.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<style>
	.Find{
		width: 40%;
		border-left-width:0;
		border-right-width:0;
		border-top-width:0;
		border-bottom-width:0;
		background-color: white;
	}
	
	.Tab{
		width:60%;
		margin-left: 20%;
		margin-top: 8%;
		border: 1px solid #dddddd;
	}

	.btn-danger{
		font-size: larger;
	}

	.input{
		width:70%;
		height:40px;
		border-left-width:0;
		border-right-width:0;
		border-top-width:0;
		border-bottom-width:1;
	}
	
	.key{display:none;}
	.check{display:none; font-size: 14px}
	.c1{color:green;}
	.c2{color:red;}
	.c3{color:red;}
	.about-info{width:348px;}
	.about-info p{font-size:12px;}
	#key{width:63%;}
	#idFind{height: 30%;}
	#pwdFind{display: none; height: 30%;}
</style>
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
					<br><br>
                    <!-- 서브메뉴 -->
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
            

            <!-- page end Main section end 사이에 그대로 붙여넣어-->
            <!-- 카피라이트 -->
            <!-- Page end -->
            
            <!-- Main section end -->
			<div class="page-section">
				<div class="hero-section">
					<div class="hero-track">
						<div class="Tab"  align="center">
							<div class="selectTab">
								<br><br>
								<h3><input type="button" class="Find" value="아이디 찾기" onclick="Find('id');">
								<input type="button" class="Find" value="비밀번호 찾기" onclick="Find('pwd');"></h3>
							</div>

							<div class="selectFind">
								<br><br><br>
								<div id="idFind" >
									<input id="email1" name="email" class="input" type="email" placeholder="이메일 입력">
									<br><br><br><br>
									<input id="sub1" type="button" class="btn btn-danger" value="확인하기">
									<div id="ViewTimer"></div>
									<br><br>
								</div>
								<div id="pwdFind">
									<div id="pwd">
										<input id="userId" name="userId" class="input" type="text" placeholder="아이디 입력">
										<br><br>
										<input id="email2" name="email" class="input" type="email" placeholder="이메일 입력">
										<br><br><br><br>
										<input id="sub2" type="button" class="btn btn-danger" value="확인하기">
										<br><br>
									</div>
									<div id="inputKey" class="key">
										<input id="key" class="input" type="text" placeholder="인증키 입력" >
										&nbsp;&nbsp;<span id="Timer"></span>&nbsp;&nbsp;
										<input id="sub3" type="button" class="btn btn-danger" value="확인">
										<br><br><br><br>
									</div>
									<div id="updatePwd" class="key">
										<input id="pwd1" class="input" type="password" placeholder="비밀번호 입력">
										<br><br>
										<input id="pwd2" class="input" type="password" placeholder="비밀번호 확인">
										<span class="check c1">사용 가능</span><span class="check c2">사용 불가</span><span class="check c3">불일치</span>
										<input id="checkPwd" type="hidden" value="0"> 
										<br><br><br>
										<input id="sub4" type="button" class="btn btn-danger" value="변경">
										<br>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
		All rights reserved </p></div>
		</div>
			<!-- Page end -->
		</div>
	</div>
	<!-- Main section end -->
	<script>
		$(function(){
			$('.Find').eq(0).css({'color':'#bd362f'});
		});
		
		$('#sub1').click(function(){
			var email1 = $('#email1').val();
			
			$.ajax({
				url:"idFind.do",
				type:"post",
				data:{"email":email1},
				success:function(data){
					console.log(data);
					if(data == "ok"){
						alert("메일이 발송 되었습니다");
					}else{
						alert("등록 되지 않은 이메일 입니다");
					}						
				},error:function(){
					console.log("에러");
				}
			});
		});
		
		
		$('#sub2').click(function(){
			var email2 = $('#email2').val();
			var userId = $('#userId').val();
			
			$.ajax({
				url:"pwdFind.do",
				type:"post",
				data:{"email":email2,"userId":userId},
				success:function(data){
					if(data != "fail"){
						alert("인증 번호가 발송 되었습니다.");
						$('#pwd').hide();
						$('#inputKey').show();
						$('#updatePwd').hide();
						$input = $('<input id="userId2" type="hidden" value='+data+'>');
						$('#inputKey').append($input);
					}else{
						alert("아이디와 이메일이 일치 하지 않습니다");
					}
				},error:function(){
					console.log("에러");
				}
			});
			
			TimerStart();
		});
		
		$('#sub3').click(function(){
			var userId2 = $('#userId2').val();
			var key = $('#key').val();
			$.ajax({
				url:"matchKey.do",
				type:"post",
				data:{"userId":userId2,"key":key},
				success:function(data){
					if(data != "fail"){
						$('#pwd').hide();
						$('#inputKey').hide();
						$('#updatePwd').show();
						$input = $('<input id="userId3" type="hidden" value='+data+'>');
						$('#updatePwd').append($input);
					}else{
						alert("인증번호가 다릅니다");
					}
				},error:function(){
					console.log("에러");
				}
			});
		});
		
		$('#pwd1').keyup(function(){
			CheckPwd();
		});
		$('#pwd2').keyup(function(){
			CheckPwd();
		});
		
		$('#sub4').click(function(){
			var checkPwd = $('#checkPwd').val();
			
			
			if(checkPwd == 2){
				alert("사용 불가능한 비밀 번호 입니다.");
			}else if(checkPwd == 3){
				alert("비밀번호가 일치 하지 않습니다.");
			}else{
				var pwd1 = $('#pwd1').val();
				var userId3 = $('#userId3').val();
				$.ajax({
					url:"updatePwd.do",
					type:"post",
					data:{"password":pwd1,"userId":userId3},
					success:function(data){
						if(data == "ok"){
							alert("변경 되었습니다");
							location.href ="loginView.do";
						}else{
							alert("변경 실패");
						}
					},error:function(){
						alert("에러");
					}
				});
			}
		});
		
		function CheckPwd(){
			var pwd1 = $('#pwd1').val();
			var pwd2 = $('#pwd2').val();
			
			if(!check(/^[a-zA-Z0-9]{4,12}$/,pwd1)){
				$('#pwd2').css({'width':'62%'});
				$('.c1').hide();
				$('.c2').show();
				$('.c3').hide();
				$('#checkPwd').val(2);
			}else{
				if(pwd1 != pwd2){
					$('#pwd2').css({'width':'64%'});
					$('.c1').hide();
					$('.c2').hide();
					$('.c3').show();
					$('#checkPwd').val(3);
				}else{
					$('#pwd2').css({'width':'61%'});
					$('.c1').show();
					$('.c2').hide();
					$('.c3').hide();
					$('#checkPwd').val(1);
				}
			}
		}
		
		function check(p,e){
			if(!p.test(e)){
				return false;
			}
			return true;	
		}
		
		function Find(select){
			if(select == 'id'){
				$('.Find').eq(0).css({'color':'#bd362f'});
				$('.Find').eq(1).css({'color':'black'});
				$('#idFind').show();
				$('#pwdFind').hide();
			}else{
				$('.Find').eq(0).css({'color':'black'});
				$('.Find').eq(1).css({'color':'#bd362f'});
				$('#idFind').hide();
				$('#pwdFind').show();
			}			
		}
		
		var SetTime = 300;		// 최초 설정 시간(기본 : 초)

		function msg_time() {	// 1초씩 카운트
			
			m = Math.floor(SetTime / 60) + " : " + (SetTime % 60);	// 남은 시간 계산
			
			var msg = " <font color='red'>" + m + "</font> ";
			
			document.all.Timer.innerHTML = msg;		// div 영역에 보여줌 
					
			SetTime--;					// 1초씩 감소
			
			if (SetTime < 0) {			// 시간이 종료 되었으면..
				
				clearInterval(tid);		// 타이머 해제
				alert("인증시간 초과");
				
				$('#pwd').show();
				$('#inputKey').hide();
				$('#updatePwd').hide();
			}
			
		}

		function TimerStart(){ tid=setInterval('msg_time()',1000) };


	</script>
	<!--====== Javascripts & Jquery ======-->
	
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>
	
	</body>
</html>