package com.kh.wehan.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

public class Interceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
			
		/*
		 * HttpSession session = null; String userId = request.getParameter("userId");
		 * String password = request.getParameter("password");
		 * 
		 * System.out.println(userId); System.out.println(password);
		 * 
		 * if(userId.equals("admin")) { Admin adminUser = mService.adminlogin(userId);
		 * session.setAttribute("adminUser", adminUser);
		 * 
		 * response.sendRedirect("ad_ad_noticeListView.do"); }
		 */
		HttpSession session = null;
		session = request.getSession();
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		Admin adminUser = (Admin)session.getAttribute("adminUser");
		
		
		if(loginUser == null) { request.setAttribute("msg1", "로그인이 필요합니다");
		request.setAttribute("msg1", "로그인 필요합니다");
		request.getRequestDispatcher("/WEB-INF/views/*.jsp"); }
		 
		if(adminUser == null) {
			request.setAttribute("msg2", "관리자 권한이 필요합니다");
			request.getRequestDispatcher("/WEB-INF/views/*.jsp");
		}
		
		return super.preHandle(request, response, handler);
	}

	
}