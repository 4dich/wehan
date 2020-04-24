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
	
	<style>
		.userdiv{
			margin-bottom: 60px;
		}
		.user{
			display:inline-block;
		}
		.profile{
			
			width:50px; 
			heigth:50px;
		}
		
		#p1{
			font-size:15px;
			color:white;
		}
		
	</style>
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
		        <div class="userdiv">
					<div class="profile user">
						<img alt="" src="resources/images/user/${loginUser.picture}"  style=" width:40px; heigth:40px; border-radius:50px;">
					</div>
					<div class ="userInfo user">
						<p id="p1">
							<b>${loginUser.nickName}</b>님 환영합니다
						</p>
					</div>		         
		        </div>
		        
	            <li><a href="chalList.do">Challenge</a></li>
	            <li><a href="fid_ch_recommendView.do">Fid</a></li>
	            <li><a href="my_profileView.do">My Page</a></li>
	            <li><a href="noticeView.do">고객센터</a></li>
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
	       		
	        <ul class="site-menu" style="padding-top:300px">
	         	<!-- 유저 메인 이동 -->
	            <li><a href="index.jsp">홈페이지 이동</a></li><br><br>
	            <li><a href="qnaListView.do">문의사항</a></li><br><br>
	            <!-- 관리자 공지사항 이동 -->
	            <li><a href="ad_noticeList.do">관리자페이지 이동</a></li>
	            <li><a href="logout.do">로그아웃</a></li>
         	</ul>
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