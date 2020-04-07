<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="site-menu-warp">
         <div class="close-menu">x</div>
         <!-- Main menu -->
         <!-- 검은사이드바 구역-->
         <c:choose>
	         <c:when test=${ !empty sessionScope.adminUser}>
	         <ul class="site-menu" style="padding-top:300px">
	             <li><a onclick="location.href='logout.do'">홈페이지 이동</a></li><br><br>
	             <li><a href="pay.html">관리자페이지 이동</a></li>
	             <li><a href="pay.html">상태:로그인</a></li>
	         </ul>
	         </c:when>
         
	         <c:otherwise>
	         <ul class="site-menu" style="padding-top:300px">
	             <li><a href="index.jsp">홈페이지 이동</a></li><br><br>
	             <li><a href="pay.html">관리자페이지 이동</a></li>
	             <li><a href="pay.html">상태:로그아웃</a></li>
	         </ul>
	         </c:otherwise>
         </c:choose>
    </div>
</body>
</html>