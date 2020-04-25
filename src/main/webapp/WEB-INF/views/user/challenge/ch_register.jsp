<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>  
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
   <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
   <style>
   		.about-info{width:348px;}
		.about-info p{font-size:12px;}
		input{border:1px solid #bbbbbb; color:#696969;}
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
						<p style="font-size: 12px; margin-top:80px;">
			                            나의 도전에 관한 <b>상세 내용</b>입니다.
			                            이 도전을 위해 얼마를 투자했는지,
			                            이 도전을 언제부터 시작했는지 등의
			                            모든 정보는 이 곳에서 확인가능합니다.
                      </p>
			</div>

            <button class="site-btn sb-dark" style="font-size: 16px;  border-radius: 3px; width: 347px;" type="button" onclick="location.href='chalList.do'">
                 리스트 페이지로 가기
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
                           <form class="contact-form" action="registerChallenge.do" method="post" enctype="multipart/form-data" style="margin-top: 90px;"> 
                              <div class="row">
                                 <div class="col-lg-12">
                                 	<input type='hidden' name="viewPage" value="1">
                                    <input type="text" id="chName" name="chName" maxlength="12" style="border:1px solid #bbbbbb; border-top: none; border-left: none; border-right: none; " placeholder="챌린지명">
                                 </div>
                             
                                 <script> 
                                 	$(document).ready(function(){ 
                                 		$('#chName').keyup(function() { 
                                 			if($(this).val().length > $(this).attr('maxlength')) { 
                                 				alert('도전명은 최대 12글자까지만 만들 수 있습니다.'); 
                                 				$(this).val($(this).val().substr(0, $(this).attr('maxlength'))); 
                                 			} 
                                 		}); 
                                 	}); 
                                 </script> 
                                 
                                 <div class="col-lg-6">
                                    <input type="text" id="startDatepicker" name="startDate" class="datepicker" onChange="inputDateComparison(this);" style="border:1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="기간 설정(시작)">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" id="endDatepicker" name="endDate" class="datepicker" onChange="inputDateComparison(this);" style="border:1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="기간 설정(종료)">
                                 </div>
                                 <div class="col-lg-12">
                                    <select class="col-lg-12" name="category" style="color:#696969; border: 1px solid #bbbbbb; border-top: none; border-left: none; border-right: none; padding-bottom: 15px; margin-top: 22px; margin-bottom: 30px; font-size: 14px; font-style: italic; font-color: #e1e1e1;">
                                    	<option value="category" hidden>카테고리</option>
										<option value="health">건강</option>
										<option value="hobby">취미</option>
										<option value="motivated">자기개발</option>
										<option value="economy">경제</option>
										<option value="life">생활</option>
										<option value="etc">기타</option>
									</select>
                                 </div>
                                 <div class="col-lg-12">
                                    <input type="text" name="ceMethod" style="border:1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="인증 방법">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" name="maxPerson" style="border:1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="최대 참여 인원 (숫자만 적어주세요)">
                                 </div>
                                 <div class="col-lg-6">
                                    <input type="text" name="price" style="border:1px solid #bbbbbb; border-top: none; border-left: none; border-right: none;" placeholder="배팅 금액 (숫자만 적어주세요)">
                                 </div>
                                 <br><br><br><br>
                                 <div class="col-lg-12">
                                    <textarea style="border:1px solid #bbbbbb;" name="chContent" placeholder="챌린지 상세 정보"></textarea>
                                 </div>
                              </div>
                        </div>
                     </div>
                     <div class="col-xl-6">
                           <div style="margin-top: 50px; margin-right: 20px;">
                              <div class="ch-register-pic" id="registerPic">
                              	<img id="registerPicShow" name="chPicture" src="#" style="height: 296px;"/>
                              </div>
                              <input type="button" class="site-btn" id="btnPic" onclick="registerPic();" style="margin-top: 30px; margin-left: 100px; width: 280px; font-size: 15px;" value="이미지 등록하기 (280X300)">        
                              <input type="file" id="registerPicFile" name="registerPic" hidden/>
                              <br><br><br><br><br><br><br><br>
      							
      							<script>
      								$('#btnPic').click(function(){
	      								$('#registerPicFile').click();
      								});	
      							  // ====== 첨부 이미지 스크립트  =============================================	
      								function readURL(input) {
      										if(input.files && input.files[0]) {
      											var reader = new FileReader();
      											reader.onload = function(e) {
      												$('#registerPicShow').attr('src',e.target.result);
      											}
      											reader.readAsDataURL(input.files[0]);
      										}   
      								   }
      								   
      								   $("#registerPicFile").change(function(){
      									   readURL(this);
      								   });
      							  // ====== 첨부 이미지 스크립트 끝 ============================================	
      							</script>
                              <button class="site-btn sb-solid mr-3 mb-3" style="color: white; margin-top: 23px; margin-left: 100px; width: 280px; font-size: 16px;">챌린지 등록하기<img src="resources/images/arrow-righ-2.png" alt=""></button>
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
   
   <script type="text/javascript">
    // ====== 달력 스크립트  ===============================================================================    	
    	jQuery(document).ready(function() {

	       jQuery("#startDatepicker, #endDatepicker").datepicker();
	       
	       // jQuery UI Datepicker 한글 변환
	       jQuery.datepicker.regional['ko'] = {
	             closeText : "닫기"
	           , prevText : ""
	           , nextText : ""
	           , currentText : "오늘"
	           , monthNames : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	           , monthNamesShort : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	           , dayNames : ["일", "월", "화", "수", "목", "금", "토"]
	           , dayNamesShort : ["일", "월", "화", "수", "목", "금", "토"]
	           , dayNamesMin : ["일", "월", "화", "수", "목", "금", "토"]
	           , weekHeader : "Wk"
	           , dateFormat : "yy-mm-dd"
	           , firstDay : 0
	           , isRTL : false
	           , yearSuffix : "&nbsp;년"
	           , showMonthAfterYear : true
	           , changeMonth : true
               , minDate : "0" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
               , maxDate : "+3M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
	           // , changeYear : true
	           // , autoSize : true
	
	           , beforeShow:function(input) {
	               var position = jQuery(input).position();
	              /* 달력을 왼쪽으로 치우쳐서 보여주는 코드(현 사이트에서는 불필요)*/ 
	              /*  setTimeout(function() {
	                   jQuery("#ui-datepicker-div").css({"left":position.left});
	              }) */
	           }
	       };
	       jQuery.datepicker.setDefaults(jQuery.datepicker.regional['ko']);
           $('#startDatepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)         */
           $('#endDatepicker').datepicker('setDate', '+7D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)         */
    	});
	
	   function inputDateComparison(obj) {
	       // 날짜 입력 엘리먼트 ID는 startDate(시작일), endDate(종료일)로 동일해야 한다.
	       var startDate = inputDateSplit(document.getElementById("startDatepicker").value);    // 시작일
	       var endDate = inputDateSplit(document.getElementById("endDatepicker").value);        // 종료일
	       
	       var objDate = inputDateSplit(obj.value);    // 입력한 엘리먼트의 일자
	       // 입력일을 확인하는 이유는 현재 작성한 일자가 시작일인지 종료일인지 확인하기 위해서이다.
	      
	       if(startDate == objDate && startDate > endDate) {
	
	           alert("시작일이 종료일보다 이후일 수는 없습니다.\n다시 선택하여 주시기 바랍니다.");
	           obj.value = document.getElementById("endDatepicker").value;
	           obj.focus();
	       } else if(endDate == objDate && endDate < startDate) {
	
	           alert("종료일이 시작일보다 이전일 수는 없습니다.\n다시 선택하여 주시기 바랍니다.");
	           obj.value = document.getElementById("startDatepicker").value;
	           obj.focus();
	       } else {
	           return false;
	       }
	   }
	
	   // 날짜형식에 "-"이 사용된 경우에 한하여 날짜값에서 "-" 기호를 제거한다.
	   function inputDateSplit(obj) {
	       var dateArray = obj.split("-");
	       return dateArray[0] + dateArray[1] + dateArray[2];
	   }
	   
   // ====== 달력 스크립트  끝===============================================================================
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