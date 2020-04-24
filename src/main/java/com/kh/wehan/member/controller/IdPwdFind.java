package com.kh.wehan.member.controller;

import java.sql.SQLException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.FindKey;
import com.kh.wehan.member.model.vo.Member;

@Controller
public class IdPwdFind {
	@Autowired
	private MemberService mService;
	@Autowired
	private JavaMailSender MailSender;
	
	
	
	@RequestMapping("idFind.do")
	@ResponseBody
	public String idFind(String email) {
		String userId = mService.idFind(email);
		if(userId != null) {
			MailSender(email,userId);
			return "ok";
		}else {
			return "fail";
		}
	}
	
	

	public void MailSender(String email, String userId) {
		MimeMessage mail = MailSender.createMimeMessage();
		
		String mStr = "아이디 : " + userId;
		
		try {
			mail.setSubject("아이디 찾기");
			mail.setText(mStr);
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			MailSender.send(mail);
		}catch(MessagingException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("pwdFind.do")
	@ResponseBody
	public String pwdFind(Member m) {
		int delete = mService.DeleteFindKey(m.getUserId());
		System.out.println(delete);
		int count = mService.pwdFind(m);
		
		if(count > 0) {
			try {
				MailSender2(m);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return m.getUserId();
		}else {
			return "fail";
		}
	}
	
	private void MailSender2(Member m) throws SQLException {
		String key = getKey(false,6);
		MimeMessage mail = MailSender.createMimeMessage();
		String mStr = "인증 번호 : " + key;
		FindKey c = new FindKey(m.getUserId(),key);
		
		try {
			mail.setSubject("인증번호 발송");
			mail.setText(mStr);
			mail.addRecipient(RecipientType.TO, new InternetAddress(m.getEmail()));
			MailSender.send(mail);
			
			int result = mService.insertFindKey(c);
			
			if(result < 0) {
				throw new SQLException();
			}
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
	
	private boolean lowerCheck;
	private int size;
	
	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}


	@RequestMapping("matchKey.do")
	@ResponseBody
	public String matchKey(FindKey c) {
		int result = mService.matchKey(c);
		
		if(result > 0) {
			int delete = mService.DeleteFindKey(c.getUserId());
			return c.getUserId();
		}else {
			return "fail";
		}
	}
	
	@RequestMapping("updatePwd.do")
	@ResponseBody
	public String updatePwd(Member m) {
		int result = mService.updatePwd(m);
		
		if(result > 0) {
			return "ok";
		}else {
			return "fail";
		}
	}
}