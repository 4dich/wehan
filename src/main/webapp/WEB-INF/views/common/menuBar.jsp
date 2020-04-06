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
         <c:if test="${empty sessionScope.loginUser}">
         <div class="close-menu">x</div>
         <!-- Main menu -->
         
         <ul class="site-menu">
            <li><a href="ch-list.html">Challenge</a></li>
            <li><a href="fidRecommend.html">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="qna.html">고객센터</a></li>
            <li><a href="">상태:로그아웃</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="index.html" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            <a href="message_followerlist.html" class="menuIcon">
               <img src="resources/images/main/message.png" alt=""><div>1</div></a>
            <a href="login.html" class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
          </div>
          </c:if>
          
         <c:if test="${!empty sessionScope.loginUser}">
         <div class="close-menu">x</div>
         <ul class="site-menu">
            <li><a href="ch-list.html">Challenge</a></li>
            <li><a href="fidRecommend.html">Fid</a></li>
            <li><a href="my_profileView.do">My Page</a></li>
            <li><a href="qna.html">고객센터</a></li>
            <li><a href="">상태:로그인</a></li>
          </ul>
          <div class="menu-social">
   
            <a href="index.html" class="menuIcon">
               <img src="resources/images/main/home.png" alt=""></a>
            <a href="message_followerlist.html" class="menuIcon">
               <img src="resources/images/main/message.png" alt=""><div>1</div></a>
            <a onclick='location.href="logout.do"' class="menuIcon">
               <img src="resources/images/main/login.png" alt=""></a>
            
          </div>
          </c:if>
      </div>
	
</body>
</html>