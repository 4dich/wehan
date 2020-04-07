<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="site-menu-warp">
         <c:if test="${empty sessionScope.loginUser && empty sessionScope.adminUser}">
         <div class="close-menu">x</div>
         <!-- Main menu -->
         
         <ul class="site-menu">
            <li><a href="ch_listView.do">Challenge</a></li>
            <li><a href="fid_ch_recommendView.do">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="noticeView.do">고객센터</a></li>
            <li><a href="">상태:로그아웃</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="indexView.do" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            <a href="msg_msgListView.do" class="menuIcon">
               <img src="resources/images/main/message.png" alt=""><div>1</div></a>
            <a href="loginView.do" class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
          </div>
          </c:if>
          
         <c:if test="${!empty sessionScope.loginUser}">
         <div class="close-menu">x</div>
         <ul class="site-menu">
            <li><a href="ch_listView.do">Challenge</a></li>
            <li><a href="fid_ch_recommendView.do">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="noticeView.do">고객센터</a></li>
            <li><a href="">상태:로그인</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="indexView.do" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            <a href="msg_msgListView.do" class="menuIcon">
               <img src="resources/images/main/message.png" alt=""><div>1</div></a>
            <a onclick='location.href="logout.do"' class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
            
          </div>
          </c:if>
          
         <c:if test="${!empty sessionScope.adminUser}">
         <div class="close-menu">x</div>
         <ul class="site-menu">
            <li><a href="ch_listView.do">Challenge</a></li>
            <li><a href="fid_ch_recommendView.do">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="noticeView.do">고객센터</a></li>
            <li><a href="">상태:관리자 로그인</a></li>
            <li><a href="">상태:관리자 페이지 가기(임시)</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="indexView.do" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            <a href="msg_msgListView.do" class="menuIcon">
               <img src="resources/images/main/message.png" alt=""><div>1</div></a>
            <a onclick='location.href="logout.do"' class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
            
          </div>
          </c:if>
      </div>
	
</body>
</html>