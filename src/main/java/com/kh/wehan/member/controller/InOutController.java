package com.kh.wehan.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class InOutController {
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public String login(@ModelAttribute Member m,Model model ) {
		System.out.println(m.getUserId());
		System.out.println(m.getPassword());
		
		Member loginUser = mService.login(m);
		
		if(loginUser != null && m.getPassword() == loginUser.getPassword()) {
			model.addAttribute("loginUser",loginUser);
			return "user/main";
		}else{
			return "common/error";
		}
	}
}
