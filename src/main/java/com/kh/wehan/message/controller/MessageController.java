package com.kh.wehan.message.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.message.model.service.MessageService;
import com.kh.wehan.message.model.vo.Message;

@Controller
public class MessageController {
	@Autowired
	private MessageService msgService;
	
	
	/**
	 * 메시지 친구목록 가져오기
	 * @param mv
	 * @return
	 */
	@RequestMapping("msgFriendList.do")
	public ModelAndView msgFriendList(ModelAndView mv, String userId) {
		
		userId = "user01";
		
		ArrayList<Member> friendList = msgService.msgFriendList(userId);
		
		return mv;
	}
	
	/**
	 * 메시지 리스트 가져오기
	 * @param mv
	 * @return
	 */
	@RequestMapping("msgList.do")
	public ModelAndView msgList(ModelAndView mv) {
		
		ArrayList<Message> list = msgService.msgList();
		
		return mv;
	}
	
	@RequestMapping("msgSend.do")
	public ModelAndView msgSend(ModelAndView mv) {
		
		return mv;
	}
	
	
	
}
