<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
   <title>CH_REGISTER</title>
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
   <link rel="stylesheet" href="resources/css/jh-css.css"/>
   <!-- <link rel="stylesheet" href="resources/css/left_section.css"/> -->
   <!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
   <link rel="stylesheet" href="resources/css/style.css"/>

	<!-- 달력 라이브러리 수정  -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
	<!-- <script src="resources/js/jquery-3.2.1.min.js"></script> -->
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
   </div>

   <!-- Main section start -->
   <div class="main-site-warp">

      <include file="/WEB-INF/views/common/menuBar.jsp">

      <header class="header-section">
         <div class="nav-switch">
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
            <!-- 서브메뉴 -->
                <div class="about-info" style="margin-left: 50px;">
               <p style="font-size: 15px;">
			                  나를 위한 새로운 도전을 만들 수 있어요.<br>
			                  나와 같은 생각을 가진 사람들과<br>
			                  또 내 의지를 붙잡아 줄 수 있는 사람들과<br> 
                  <b>함께하는 도전</b>, 여기서 가능합니다.  
               </p>
            </div>

            <button class="site-btn sb-dark" style="margin-left: 35px; width: 280px; font-size: 15px;" type="button" onclick="location.href='ch-list.html'">
             	 리스트 페이지로 가기
               <img src="img/arrow-righ-3.png" alt="">
            </button>
            <br><br>
            <!-- <ul class="contact-info">
               <li>서울특별시 강남구 테해란로14길 6</li>
               <li>남도빌딩 3F H반 T:1544-9970</li><br>
               <li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
            </ul> -->
            
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
                  <div class="sampleArea" style="display: inline-flex;">
                     <div class="col-xl-6">
                        <div class="contact-text-warp">
                           <form class="contact-form" style="margin-top: 90px;">
                              <div class="row">
                                 <div class="col-lg-12">
                                    <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="챌린지명">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" id="testDatepicker" style="border-top: none; border-left: none; border-right: none;" placeholder="기간 설정(시작)">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" id="toDate" style="border-top: none; border-left: none; border-right: none;" placeholder="기간 설정(종료)">
                                 </div>
                                 <div class="col-lg-12">
                                    <input type="select" style="border-top: none; border-left: none; border-right: none;" placeholder="카테고리">
                                 </div>
                                 <div class="col-lg-12">
                                    <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="인증 방법">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="참여 인원">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" style="border-top: none; border-left: none; border-right: none;" placeholder="배팅 금액">
                                 </div>
                                 <br><br><br><br>
                                 <div class="col-lg-12">
                                    <textarea placeholder="상세 정보"></textarea>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="col-xl-6">
                        <form class="contact-form" style="margin-top: 90px;">
                           <div style="margin-top: 50px; margin-right: 20px;">
                              <div class="ch-register-pic"></div>
                              <button class="site-btn" style="margin-top: 30px; margin-left: 100px; width: 280px; font-size: 15px;"> 이미지 등록하기 (280x300)</button>            
                              <br><br><br><br><br><br><br><br>
      
                              <button class="site-btn sb-solid mr-3 mb-3" style="color: white; margin-top: 30px; margin-left: 100px; width: 280px; font-size: 16px;">챌린지 등록하기<img src="resources/images/arrow-righ-2.png" alt=""></button>
                           </div>
                        </form>
                     </div>
                  </div>   
                    </div>
            </div>
         </div>
         <!-- Page end -->
      </div>
      <div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
      All rights reserved </p></div>
      </div>
   <!-- Main section end -->
   
   <script>
	   $(function() {
	      //input을 datepicker로 선언
		      $("#testDatepicker").datepicker(
		         {
		            dateFormat : 'yyyy-mm-dd' //Input Display Format 변경
		            ,showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		            ,showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
		            ,changeYear : true //콤보박스에서 년 선택 가능
		            ,changeMonth : true //콤보박스에서 월 선택 가능
		            ,numberOfMonths : [1,1]
		            /* ,showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시 */  
		            /* ,buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		            ,buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		            ,buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                 */
		            ,yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
		            ,monthNamesShort : [ '1', '2', '3', '4', '5', '6',
		                           '7', '8', '9', '10', '11', '12' ] //달력의 월 부분 텍스트
		            ,monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
		                       '7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
		            ,dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
		            ,dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일','금요일', '토요일' ] //달력의 요일 부분 Tooltip 텍스트
		            ,minDate : "0" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
		            ,maxDate : "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
		      });
		       //초기값을 오늘 날짜로 설정
		      $('#testDatepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)         */
	   });
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