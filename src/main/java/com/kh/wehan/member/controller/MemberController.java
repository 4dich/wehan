package com.kh.wehan.member.controller;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.BlackList;
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
		
		
		int result = mService.insertMember(m);
		
		String userId = m.getUserId();
		int result2 = mService.insertMypage(userId);
		
		if(result>0 && result2>0) {
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
	
	/**
	 * 회원정보 수정
	 * @param m
	 * @param mv
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("updateMember.do")
	public ModelAndView updateMember(Member m, ModelAndView mv, HttpServletRequest request,
			@RequestParam(name="uploadFile",required=false)MultipartFile file) {
			
			HttpSession session = request.getSession();
			
			/* 회원정보수정시 입력받지 않아 값이 없어서 넣어줌*/
			Member before = (Member)session.getAttribute("loginUser");
			m.setJoinDate(before.getJoinDate());
			m.setOutYN(before.getOutYN());
			
			if(!file.getOriginalFilename().equals("")) {
				String picture = saveFile(file,request);
				
				if(picture != null) {
					m.setPicture(picture);
				}
			}
			
			int result = mService.updateMember(m);
			
			session.setAttribute("loginUser", m);
			
			if(result>0) {
				mv.setViewName("redirect:my_profileView.do");
			}else {
				mv.addObject("msg","XXX")
				  .addObject("msg2","회원정보 수정 실패")
				  .setViewName("common/errorPage");
			}
			
			return mv;
	}
	
	@RequestMapping("blackInsert.do")
	@ResponseBody
	public String blackInsert(BlackList b) {
		
		Calendar cal = new GregorianCalendar();
		cal.add(Calendar.DATE, b.getBanDay());
		
		Date banTerm = new Date(cal.getTimeInMillis());
		
		b.setBanTerm(banTerm);
		int result = mService.blackInsert(b);
		
		if(result > 0) {
			return "ok";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping("blackCancle.do")
	@ResponseBody
	public String blackCancle(String bId) {
		int result = mService.blackCancle(bId);
		if(result > 0) {
			return "ok";
		}else {
			return "fail";
		}
			
	}
}
