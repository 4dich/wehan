package com.kh.wehan.member.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.Member;

@Controller	
public class MemberController {
	@Autowired
	MemberService mService;
	
	@RequestMapping(value="idCheck")
	@ResponseBody
	public String idCheck(String idCheck) {
		System.out.println(idCheck);
		
		Pattern p = Pattern.compile("^[a-zA-Z0-9].{3,11}$");
		Matcher m = p.matcher(idCheck);
		System.out.println(m.find());
		
		int result = mService.idCheck(idCheck);
		System.out.println(result);
		if(m.find()) {
			if(result > 0) {
				return "2";
			}else {
				return "1";
			}
		}else {
			return "3";
		}
		
	}
	
	@RequestMapping(value="insertMember",method=RequestMethod.POST)
	public String insertMember(Member m) {
		
		return "";
	}
	
	
}
