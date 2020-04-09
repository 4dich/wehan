package com.kh.wehan.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

@SessionAttributes("loginUser")

@Controller
public class InOutController {
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public String login(String userId,String password,Model model,HttpSession session) {
		System.out.println(userId);
		System.out.println(password);
		
		if(userId.equals("admin")){
			Admin adminUser = mService.adminlogin(userId);
			if(adminUser != null && password.equals(adminUser.getPassword())) {
				session.setAttribute("adminUser",adminUser);
				return "admin/ad_noticeList";
			}else {
				return "common/errorPage";
			}
		}else {
			Member loginUser = mService.login(userId);
			  if(loginUser != null && password.equals(loginUser.getPassword())) {
				  int blackYN = mService.blackCheck(userId); 
				  model.addAttribute("loginUser",loginUser); 
				  return "redirect:index.jsp";
			  }else{
				  return "common/errorPage"; 
			  }
		}
	}
	
	
	
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:index.jsp";
	}
}
