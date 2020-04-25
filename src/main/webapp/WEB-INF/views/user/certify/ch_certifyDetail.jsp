<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

   <!-- 인증사진 등록 CSS -->
   <link rel="stylesheet" href="resources/css/challengeRegister_sr.css"/>
   
   <!-- 회원전용 사이드바 CSS -->
   <!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
   
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
	<style>
	.about-info{width:348px;}
	.about-info p{font-size:12px;}
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
               <a href="index.html" class="site-logo">
                  <h2 style="margin-left: 6px;">위대한 한걸음</h2>
                  <p style="padding-top: 15px;">THE GREAT ONE STEP</p>
               </a>
                 <br><br>
               <!-- 서브메뉴 -->
               	<div class="about-info" style="margin-top:100px;">
                  <h2>인증사진 등록</h2>
                 <p style="font-size: 12px; margin-top:20px;">챌린지 인증기준을 확인하고 
                     챌린지 인증 사진을 등록해보세요. 
                     오늘의 인증 사진 한 장이 
                     당신의 미래를 바꾸는 습관이 될 거에요.               
                  </p>
               </div>
               
            </div>
         </div>
         <!-- Left Side section end -->
         <!-- Page start -->
         <div class="page-section elements-page">
            <div class="elements-section">
               <div class="col-md-12"> 
                  <div class="col-md-10"> 
                     <div class="portlet light bordered">
                        <div>
                           <div class="caption caption-md">                              
                              <h3>
                                 주3회 팩하기
                                 <span class="unread">
                                    자기개발
                                 </span>
                              </h3>
                              <p style="color:gray">2020-03-23 ~ 2020-03-30</p>
                              <sapn>
                                 <h6>인증 기준</h6>
                                 <p>팩을 하고 있는 사진을 올려주세요</p>
                              </sapn>
                           </div>
                        </div>
                     </div>
                  </div> 
                  <div class="col-md-10">      
                     <div class="portlet light profile-sidebar-portlet bordered">
                        <div class="profile-userpic" style="text-align: center;">
                           <img src="resources/images/image.png" class="img-responsive" alt=""> 
                        </div>
                        <div class="profile-userbuttons"><br>
                           <span>
                              <button class="site-btn sb-dark" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; ">
                                 이미지 올리기
                              </button>
                              <button class="site-btn sb-solid mr-3 mb-3" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; ">
                                 이미지 삭제하기
                              </button>
                           </span>
                           <br><br>
                        </div>   
                     </div>
                  </div>
                  <div class="col-md-10"> 
                     <div class="portlet light bordered">
                        <div class="portlet-title tabbable-line">
                           <div class="caption caption-md">
                              <i class="icon-globe theme-font hide"></i>
                              <span class="caption-subject font-blue-madison bold uppercase">2020년 03월 23일</span>
                           </div>
                        </div>
                        <div class="portlet-body">
                           <div>
                           
                              <!-- Tab panes -->
                              <div class="tab-content">
                                 <div role="tabpanel" class="tab-pane active" id="home" align="center">
                                    <form>
                                      <div class="form-group">
                                       <textarea class="form-control" id="inputChallenge" style="height:200px; resize:none;" placeholder="챌린지 내용을 기록해보세요!"></textarea>
                                      </div>                                       
                                      <button class="site-btn sb-dark">등록하기</button>
                                      <button class="site-btn sb-solid mr-3 mb-3">취소하기</button>
                                    </form>
                                 </div>
                              </div>
                           
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               
            </div>
         </div>
         <!-- Page end -->
      </div>
      <!-- <div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
      All rights reserved </p></div>
      </div> -->
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