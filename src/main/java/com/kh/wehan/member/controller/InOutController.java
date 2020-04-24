package com.kh.wehan.member.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.BlackList;
import com.kh.wehan.member.model.vo.Member;

@SessionAttributes("loginUser")

@Controller
public class InOutController {
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public void login(String userId,String password,Model model,HttpSession 
			session,SessionStatus status,HttpServletResponse response) throws JsonIOException, IOException, ParseException {
		
		BlackList b = null;
		String result = null;
		
		if(userId.equals("admin")){
			Admin adminUser = mService.adminlogin(userId);
			if(adminUser != null && password.equals(adminUser.getPassword())) {
				session.setAttribute("adminUser",adminUser);
				result = "ok1";
			}else {
				result = "fail";
			}
		}else {
			 Member loginUser = mService.login(userId);
			 
			 if(loginUser != null && password.equals(loginUser.getPassword())) {
				 
				 b = mService.BlackListInfo(userId);
				 
				 if(b != null) {
					 Date date = new Date();
					 int result2 = b.getBanTerm().compareTo(date);
					 if(result2 < 0){
						 int delete = mService.blackCancle(b.getbId());
						  
						 if(delete > 0) {
							 loginUser.setBlacklistYN("N");
							 model.addAttribute("loginUser",loginUser); 
							 result = "ok2";
						 }else{
							 result = "fail2";
						 }
					 }
				 }else {
					 loginUser.setBlacklistYN("N");
					 model.addAttribute("loginUser",loginUser);
					 result = "ok2";
				 }
			  }else{
				  result = "fail";
			  }
		}
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		response.setContentType("application/json; charset=utf-8");
		
		if(result !=null) {
			gson.toJson(result,response.getWriter());
		}else {
			gson.toJson(b,response.getWriter());
		}
		
	}
	
	@RequestMapping("logout.do")
	public String logout(SessionStatus status,HttpSession session) {
		status.setComplete();
		session.invalidate();
		return "redirect:index.jsp";
	}
}