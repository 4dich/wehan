package com.kh.wehan.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.wehan.member.model.vo.Member;

@Controller	
public class MemberController {
	
	
	@RequestMapping(value="insertMember",method=RequestMethod.POST)
	public String insertMember(Member m) {
		
		return "";
	}
}
