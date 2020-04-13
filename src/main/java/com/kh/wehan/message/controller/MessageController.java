package com.kh.wehan.message.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.message.model.service.MessageService;
import com.kh.wehan.message.model.vo.FriendInfo;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MessageList;
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
	 * 메시지 상세보기
	 * @param mv
	 * @param request
	 * @return
	 */
	
	@RequestMapping("msgDetail.do") 
	public ModelAndView msgDetail(ModelAndView mv, String fId, HttpServletRequest request) {
	
		// userId 가져오기 
		HttpSession session = request.getSession(); 
		Member mem =(Member)session.getAttribute("loginUser"); 
		String userId = mem.getUserId();
	
		// 친구 정보 가져오기 
		FriendInfo fi = msgService.getFriendInfo(fId);
		
		Map m = new HashMap();
		
		m.put("userId", userId);
		m.put("fId", fId);
		
		// 메시지 내용 가져오기
		ArrayList<Message> list = msgService.getMsgContent(m);
			
		
		if(fi != null) {
			mv.addObject("fi", fi).addObject("list", list).setViewName("user/message/msg_msgDetail");
		} else {
			mv.addObject("msg", "Error").addObject("msg2", "메시지를 가져올 수 없습니다").setViewName("common/errorPage");
		}
	
	
	return mv; 
	
	}
	
	
	/**
	 * 메시지 저장
	 * @param mv
	 * @return
	 */
	@RequestMapping("saveMsgContent.do")
	@ResponseBody
	public String saveMsgContent(String fId, String content, HttpServletRequest request) {
		
		
		
		// userId 가져오기 
		HttpSession session = request.getSession(); 
		Member mem =(Member)session.getAttribute("loginUser"); 
		String userId = mem.getUserId();
		
		
		// Map에 저장하기
		Map msg = new HashMap();
		msg.put("userId", userId);
		msg.put("fId", fId);
		msg.put("mContent", content);
		
		// DB에 저장하기
		int result = msgService.saveMsgContent(msg);

		if(result > 0) {
			return "success";
		} else {
			return "fail";
		}
		
	}
	
	/**
	 * 메시지 실시간 리스트 가져오기 
	 * @param response
	 * @param request
	 * @param fId
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("getMsgRealtime.do")
	public void getMsgRealtime(HttpServletResponse response, HttpServletRequest request, String fId) throws JsonIOException, IOException {
		
		// userId 가져오기 
		HttpSession session = request.getSession(); 
		Member mem =(Member)session.getAttribute("loginUser"); 
		String userId = mem.getUserId();
	
				
		Map m = new HashMap();
		
		m.put("userId", userId);
		m.put("fId", fId);
		
		// 메시지 내용 가져오기
		ArrayList<Message> list = msgService.getMsgContent(m);
			
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new Gson();
		
		gson.toJson(list, response.getWriter());
		
		
	}
	
	
	/**
	 * 메시지 삭제하기
	 * @param fId
	 * @param request
	 * @return
	 */
	@RequestMapping("msgDelete.do")
	public int msgDelete(String fId, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		Map m = new HashMap();
		
		m.put("userId", userId);
		m.put("fId", fId);
		
		
		int result = msgService.msgDelete(m);
		
		if(result > 0) {
			
		} else {
			
		}
		
		return result;
	}
	

	/**
	 * 메시지 목록 가져오기
	 * @param mv
	 * @param request
	 * @return
	 */
	@RequestMapping("getMsgList.do")
	public ModelAndView getMsgList(ModelAndView mv, HttpServletRequest request) {
		
		// 내 id 가져오기
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		
		ArrayList<MessageList> msgList = msgService.getMsgList(userId);
		
		if(msgList != null) {
			mv.addObject("msgList", msgList).setViewName("user/message/msg_msgList");
		} else {
			mv.addObject("msg", "Error").addObject("msg2","메시지 목록을 불러 올 수 없습니다.").setViewName("common/errorPage");
		}
		
		
		return mv;
	}

	
	/**
	 * 메시지 친구 서치
	 * @param mv
	 * @return
	 */
	@RequestMapping("searchFriendMsg.do")
	public ModelAndView searchFriendMsg(ModelAndView mv, String searchFriend, HttpServletRequest request) {
		
		// userId 가져오기
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		// userId, 검색어 객체에 집어넣기
		MsgSearchCondition sc = new MsgSearchCondition(userId, searchFriend);
		
		// 리스트 불러오기
		ArrayList<MessageList> msgList = msgService.msgSearchFriendMsg(sc);
		
		System.out.println(msgList.toString());
				
		
		if(msgList != null) {
			mv.addObject("msgList", msgList).setViewName("user/message/msg_msgList");
		} else {
			mv.addObject("msg", "Error").addObject("msg2", "친구 메시지 에러").setViewName("common/errorPage");
		}
		
		return mv;
	}

}
