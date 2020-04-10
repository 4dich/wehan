package com.kh.wehan.member.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.Member;

@Controller	
public class MemberController {
	@Autowired
	MemberService mService;
	
	@RequestMapping(value="idCheck")
	@ResponseBody
	public String idCheck(String idCheck) {
		
		Pattern p = Pattern.compile("^[a-zA-Z0-9].{3,11}$");
		Matcher m = p.matcher(idCheck);
		boolean b = m.find();
		
		if(b == true) {
			int Mresult = mService.idCheck(idCheck);
			int Aresult = mService.AidCheck(idCheck);
			System.out.println(Mresult);
			if(Mresult > 0 || Aresult > 0) {
				return "2";
			}else {
				return "1";
			}
		}else {
			return "3";
		}
	}
	
	@RequestMapping(value="nickCheck.do")
	@ResponseBody
	public String nickCheck(String nickName) {
		System.out.println(nickName);
		
		Pattern p = Pattern.compile("^[a-zA-Z가-힣0-9].{2,7}$");
		Matcher m = p.matcher(nickName);
		boolean b = m.find();
		
		if(b == true) {
			int result = mService.nickCheck(nickName);
			if(result > 0) {
				return "2";
			}else {
				return "1";
			}
		}else {
			return "3";
		}
	}
	
	@RequestMapping(value="insertMember.do",method=RequestMethod.POST)
	public String insertMember(Member m, HttpServletRequest request,
			  @RequestParam(name="uploadFile",required=false)MultipartFile file,
			  String bankName , String accountHolder , String accountNumber) {
				
		if(!file.getOriginalFilename().equals("")) {
			String picture = saveFile(file,request);
			
			if(picture != null) {
				m.setPicture(picture);
			}
		}
		
		m.setAccount(bankName + "," + accountHolder + "," + accountNumber);
		
		System.out.println(m);
		
		int result = mService.insertMember(m);
		
		if(result>0) {
			return "user/login";
		}else {
			return "common/errorPage";
		}
			
	}
	
	public String saveFile(MultipartFile file,HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\user";
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String originFileName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String picture = sdf.format(new java.sql.Date(System.currentTimeMillis()))+ "."
				+ originFileName.substring(originFileName.lastIndexOf(".")+1);
		String picturePath = folder + "\\" + picture;
		
		try {
			file.transferTo(new File(picturePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
		return picture;
	}
	
}