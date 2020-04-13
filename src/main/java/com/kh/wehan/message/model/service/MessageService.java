package com.kh.wehan.message.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.wehan.message.model.vo.FriendInfo;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MessageList;
import com.kh.wehan.message.model.vo.MsgSearchCondition;

public interface MessageService {

	
	/**
	 * 메시지 친구 목록 가져오기
	 * @param userId
	 * @return
	 */
	ArrayList<FriendList> msgFriendList(String userId);

	/**
	 * 메시지 친구 검색
	 * @param msgSearchFriend
	 * @return
	 */
	ArrayList<FriendList> msgSearchFriend(MsgSearchCondition sc);

	/**
	 * 메시지 상세보기 친구 정보
	 * @param fId
	 * @return
	 */
	FriendInfo getFriendInfo(String fId);
	
	/**
	 * 메시지 리스트 가져오기
	 * @param m 
	 * @return
	 */
	ArrayList<Message> getMsgContent(Map m);

	/**
	 * 메시지 저장하기
	 * @param msg
	 * @return
	 */
	int saveMsgContent(Map msg);

	/**
	 * 메시지 삭제하기
	 * @param m
	 * @return
	 */
	int msgDelete(Map m);

	/**
	 * 메시지 리스트 가져오기
	 * @param userId
	 * @return
	 */
	ArrayList<MessageList> getMsgList(String userId);

	/**
	 * 메시지 리스트 친구 검색
	 * @param sc
	 * @return
	 */
	ArrayList<MessageList> msgSearchFriendMsg(MsgSearchCondition sc);

}
