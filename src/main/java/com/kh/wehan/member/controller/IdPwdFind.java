package com.kh.wehan.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.wehan.member.model.service.MemberService;

@Controller
public class IdPwdFind {
	@Autowired
	MemberService mService;
	
	@RequestMapping("idFind.do")
	public String idFind(String email,HttpServletRequest request) {
		
		String userId = mService.idFind(email);
		if(userId != null) {
			SendMail(email,userId,request);
		}else {
			
		}
		return "";
	}
	
	private String init() {
		return "";
	}
	
	private String getKey() {
		return "";
	}
	
	private void SendMail(String email, String userId,HttpServletRequest request) {
		
	}
	
}
