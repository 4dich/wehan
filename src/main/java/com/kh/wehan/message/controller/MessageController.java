package com.kh.wehan.message.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.message.model.service.MessageService;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MsgSearchCondition;

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
	public ModelAndView msgFriendList(ModelAndView mv, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		// 친구 데이터
		ArrayList<FriendList> friendList = msgService.msgFriendList(userId);
		
		
		if(friendList != null) {
			mv.addObject("friendList", friendList).setViewName("user/message/msg_friendList");
		} else {
			mv.addObject("msg", "Error").addObject("msg2", "친구목록 에러").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	/**
	 * 메시지 친구 서치
	 * @param mv
	 * @return
	 */
	@RequestMapping("searchFriend.do")
	public ModelAndView searchFriend(ModelAndView mv, String searchFriend, HttpServletRequest request) {
		
		// userId 가져오기
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		// userId, 검색어 객체에 집어넣거
		MsgSearchCondition sc = new MsgSearchCondition(userId, searchFriend);
		
		// 리스트 불러오기
		ArrayList<FriendList> friendList = msgService.msgSearchFriend(sc);
				
		
		if(friendList != null) {
			mv.addObject("friendList", friendList).setViewName("user/message/msg_friendList");
		} else {
			mv.addObject("msg", "Error").addObject("msg2", "친구목록 에러").setViewName("common/errorPage");
		}
		
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
