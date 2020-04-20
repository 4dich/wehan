<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQuery -->
	<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
</head>
<body>
	<div class="site-menu-warp">
		 <!-- 임시 index 버튼 -->
         <!-- <button onclick="location.href='index.jsp'">index</button> -->
           
         <c:if test="${empty sessionScope.loginUser && empty sessionScope.adminUser}">
         <div class="close-menu">x</div>
         <!-- Main menu -->
         
         <ul class="site-menu">
            <li><a href="chalList.do">Challenge</a></li>
            <li><a href="fid_ch_recommendView.do">Fid</a></li>
            <li><a onclick="needLogin()" style="color:white; cursor:pointer">My Page</a></li>
            <li><a href="noticeView.do">고객센터</a></li>
            <li><a href="">상태:로그아웃</a></li>
          </ul>
          
          <script>
          function needLogin(){
              var msg1 = "<%= request.getAttribute("msg1")%>";
              if(msg1 != "null"){
                 alert(msg1);
                 location.href="loginView.do";
              }
           }          	
          </script>
          
          <div class="menu-social">
   
            <a href="indexView.do" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            <a href="loginView.do" class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
          </div>
          </c:if>
          
         <c:if test="${!empty sessionScope.loginUser}">
         <div class="close-menu">x</div>
         <ul class="site-menu">
            <li><a href="chalList.do">Challenge</a></li>
            <li><a href="fid_ch_recommendView.do">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="noticeView.do">고객센터</a></li>
            <li><a href="">상태:로그인</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="indexView.do" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            
            <!-- 안읽은 메시지 카운트 -->
            <a href="getMsgList.do" class="menuIcon msgCount">
               <img src="resources/images/main/message.png" alt="">
            </a>
            <a onclick='location.href="logout.do"' class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
            
          </div>
          </c:if>
         
          
         <c:if test="${!empty sessionScope.adminUser}">
         <div class="close-menu">x</div>
         <ul class="site-menu">
            <li><a href="chalList.do">Challenge</a></li>
            <li><a href="fid_ch_recommendView.do">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="noticeView.do">고객센터</a></li>
            <li><a href="">상태:관리자 로그인</a></li>
            <li><a href="ad_noticeListView.do">상태:관리자 페이지 가기(임시)</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="indexView.do" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>            
            <a onclick='location.href="logout.do"' class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
            
          </div>
          </c:if>
      </div>

</body>

<script>
	// 메시지 알림 갯수 가져오기 
	$(function(){
		var userId = '${loginUser.userId}';
		$.ajax({
			url:'getMsgCount.do',
			dataType:'json',
			data:{'userId' : userId},
			success:function(date){
				
				if(date != 0) {
				
					$div = $('<div>').css('color','white').text(date);
					
					$('.msgCount').append($div);
					
				}
			}, error:function(){
			}
		});		
	});
</script>



</html>